package DBdriver

import (
	"database/sql"

	_ "github.com/go-sql-driver/mysql"
)

// DB  ...
type DB struct {
	SQLDB *sql.DB
}

// DBConn with Database ...
var dbConn = &DB{}

// ConnectSQL  ...
func ConnectSQL(host, port, uname, pass, dbname string) (*DB, error) {

	db, err := sql.Open(host, uname+":"+pass+"@/"+dbname)
	if err != nil {
		panic(err)
	}
	dbConn.SQLDB = db
	return dbConn, err
}
