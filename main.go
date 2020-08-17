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
	"github.com/premsynfosys/AMS_API/models/cmnmdl"
	"github.com/premsynfosys/AMS_API/handler/cmnhndlr"
	"github.com/premsynfosys/AMS_API/handler/cnsmblhndlr"
	"github.com/premsynfosys/AMS_API/handler/itassetshndlr"
	"github.com/premsynfosys/AMS_API/handler/nonitassetshndlr"
	"github.com/premsynfosys/AMS_API/routes"
)


var connection *DBdriver.DB
var err error

func init() {
	connection, err = DBdriver.ConnectSQL("mysql", "3306", "AMS", "Admin&123", "ams") //aws pwd //AMS is usrname

}

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
		fmt.Println("error:", err)
	}
	log.Println("WebAPI started on: " + configuration.APIHost + ":" + configuration.APIPORT + "")

	if err != nil {
		fmt.Println(err)
		os.Exit(-1)
	}

	r := mux.NewRouter()
	cnsmblhndlr := cnsmblhndlr.NewConsumablHandler(connection)
	pHandler := itassetshndlr.NewITAssetHandler(connection)
	cmnhndlr := cmnhndlr.NewCommonHandler(connection,&configuration)
	nonitassetshndlr := nonitassetshndlr.NewNonITAssetHandler(connection)

	routes.ITAssetRouting(r, pHandler)
	routes.CmnRoutings(r, cmnhndlr)
	routes.ConsumableRoutings(r, cnsmblhndlr)
	routes.NonITAssetRouting(r, nonitassetshndlr)

	go pHandler.RetryFailedmails()

	http.ListenAndServe(":"+configuration.APIPORT+"", r)
}
