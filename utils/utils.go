package utils

import (
	"encoding/json"
	"log"
	"net/http"
	
	
)

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
