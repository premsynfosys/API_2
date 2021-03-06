package main

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"os"

	_ "github.com/go-sql-driver/mysql"
	"github.com/gorilla/mux"
	"github.com/premsynfosys/AMS_API/DBdriver"
	"github.com/premsynfosys/AMS_API/handler/cmnhndlr"
	"github.com/premsynfosys/AMS_API/handler/cnsmblhndlr"
	"github.com/premsynfosys/AMS_API/handler/itassetshndlr"
	"github.com/premsynfosys/AMS_API/handler/nonitassetshndlr"
	"github.com/premsynfosys/AMS_API/models/cmnmdl"
	"github.com/premsynfosys/AMS_API/routes"
)

var connection *DBdriver.DB
var err error

// changed db config name and pwd
func init() {
	logfile, e := os.OpenFile("AMSLog.txt", os.O_CREATE|os.O_WRONLY|os.O_APPEND, 0666)
	if e != nil {
		log.Fatalln("failed to log")
	}
	log.SetOutput(logfile)
	log.Println("Welcome to AMS")
	//parseTime=True&loc=Asia%2FJakarta
	//&charset=utf8
	//host, uname+":"+pass+"@/"+dbname
	file, _ := os.Open("conf.json")
	configuration := cmnmdl.Configuration{}
	err := json.NewDecoder(file).Decode(&configuration)
	log.Println(configuration)
	defer file.Close()
	if err != nil {
		log.Println("error:", err)
	}
	//connection, err = DBdriver.ConnectSQL("mysql", "localhost:3306", "root", "Admin&123", "ams?parseTime=True&loc=Asia%2FKolkata")
	connection, err = DBdriver.ConnectSQL("mysql", "localhost:3306", configuration.DBUserName, configuration.DBPwd, configuration.DB)
	if err != nil {
		log.Println("error:", err)
	}
	log.Println(connection)
}

//commit test
func main() {

	file, _ := os.Open("conf.json")
	configuration := cmnmdl.Configuration{}
	err := json.NewDecoder(file).Decode(&configuration)
	if configuration.IsTesting {
		configuration.APIHost = configuration.Test["APIHost"]
		configuration.APIPORT = configuration.Test["APIPORT"]
	} else {
		configuration.APIHost = configuration.Production["APIHost"]
		configuration.APIPORT = configuration.Production["APIPORT"]
	}
	defer file.Close()
	if err != nil {
		log.Println("error:", err)
	}
	log.Println("WebAPI started on: " + configuration.APIHost + ":" + configuration.APIPORT + "")
	fmt.Println("WebAPI started on: " + configuration.APIHost + ":" + configuration.APIPORT + "")

	if err != nil {
		log.Println(err)
		os.Exit(-1)
	}

	r := mux.NewRouter()
	cnsmblhndlr := cnsmblhndlr.NewConsumablHandler(connection)
	pHandler := itassetshndlr.NewITAssetHandler(connection)
	cmnhndlr := cmnhndlr.NewCommonHandler(connection)
	nonitassetshndlr := nonitassetshndlr.NewNonITAssetHandler(connection)

	routes.ITAssetRouting(r, pHandler)
	routes.CmnRoutings(r, cmnhndlr)
	routes.ConsumableRoutings(r, cnsmblhndlr)
	routes.NonITAssetRouting(r, nonitassetshndlr)

	go pHandler.RetryFailedmails()

	errServe := http.ListenAndServe(":"+configuration.APIPORT+"", r)
	if errServe != nil {
		log.Println(errServe)
		os.Exit(-1)
	}
}
