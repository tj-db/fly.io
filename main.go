package main

import (
    "fmt"
    "log"
    "net/http"
    "time"
)

func handler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hello, Fly.io! The time is: %s", time.Now().Format(time.RFC1123))
}

func main() {
    http.HandleFunc("/", handler)

    fmt.Println("Starting server on port 8080...")
    log.Fatal(http.ListenAndServe(":8080", nil))
}
