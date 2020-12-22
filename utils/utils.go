package utils

import (
	"encoding/json"
	"fmt"

	"log" 
	"net/http"

	jwt "github.com/dgrijalva/jwt-go"
)

var mySigningKey = []byte("captainjacksparrowsayshi")

// RespondwithJSON write json response format
func RespondwithJSON(w http.ResponseWriter, code int, payload interface{}) {
	response, _ := json.Marshal(payload)

	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(code)
	w.Write(response)
}

// RespondWithError return error message
func RespondWithError(w http.ResponseWriter, code int, msg string) {
	log.Printf(msg)
	RespondwithJSON(w, code, map[string]string{"message": msg})
}

func IsAuthorized(endpoint func(http.ResponseWriter, *http.Request)) http.HandlerFunc {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {

		if r.Header["Token"] != nil {

			token, err := jwt.Parse(r.Header["Token"][0], func(token *jwt.Token) (interface{}, error) {
				if _, ok := token.Method.(*jwt.SigningMethodHMAC); !ok {
					return nil, fmt.Errorf("There was an error")
				}
				return mySigningKey, nil
			})

			if err != nil {
				log.Println(w, err.Error())
			}

			if token.Valid {
				endpoint(w, r)
			}
		} else {
			RespondWithError(w, http.StatusUnauthorized, "Unauthorized")
			// fmt.Fprintf(w, "Not Authorized")
		}
	})
}

// func CustomDateFormate(date string) time.Time {
// 	const shortForm = "02-01-2006"
// 	//const shortForm = "2006-01-02"
// 	DOB, _ := time.Parse(shortForm, date)
// 	return DOB
// }
// func CustomDateFormate(input string) (time.Time, string) {
// 	var date time.Time
// 	var datetext string
// 	if input == "" || input == "0000-00-00" {
// 		datetext = ""
// 		//	date = nil

// 	} else {
// 		list := strings.Split(input, "-")
// 		if len(list[0]) == 4 {
// 			shortForm := "2006-01-02"
// 			res, err := time.Parse(shortForm, input)
// 			if err != nil {
// 				log.Println(err.Error())
// 			}
// 			datetext = res.Format("02-01-2006")
// 		} else {
// 			shortForm := "02-01-2006"
// 			res, err := time.Parse(shortForm, input)
// 			if err != nil {
// 				log.Println(err.Error())
// 			}
// 			date = res
// 		}
// 	}
// 	return date, datetext
// }

// func CustomDateTimeFormate(input string) (time.Time, string) {
// 	var date time.Time
// 	var datetext string
// 	if input == "" || input == "0000-00-00" {
// 		datetext = ""
// 		//	date = nil

// 	} else {
// 		list := strings.Split(input, "-")
// 		if len(list[0]) == 4 {
// 			shortForm := "2006-01-02 15:04"
// 			DOB, err := time.Parse(shortForm, input)
// 			if err != nil {
// 				log.Println(err.Error())
// 			}
// 			datetext = DOB.Format("02-01-2006 15:04")
// 		} else {
// 			shortForm := "02-01-2006 15:04"
// 			DOB, err := time.Parse(shortForm, input)
// 			if err != nil {
// 				log.Println(err.Error())
// 			}
// 			date = DOB
// 		}
// 	}
// 	return date, datetext
// }
