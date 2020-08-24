package utils

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"time"

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

func CustomDateFormate(date string) time.Time {
	const shortForm = "02-01-2006"
	DOB, _ := time.Parse(shortForm, date)
	return DOB
}

// func CustomDateTimeFormate(datetime string) string{
// 	const shortForm = "2006-01-02 10:00"
// 	ss := emp.DOB
// 	_DOJ := emp.DOJ
// 	DOB, _ := time.Parse(shortForm, *ss)
// 	DOJ, _ := time.Parse(shortForm, *_DOJ)

// 	return r.width * r.height
// }
