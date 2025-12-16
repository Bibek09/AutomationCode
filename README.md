# AutomationCode

Smoke Test Script:
```go
func main() {
    resp, err := http.Get("your-cloud-app.com")
    if err != nil || resp.StatusCode != 200 {
        log.Fatalf("Deployment health check failed!")
    }
    fmt.Println("Deployment is healthy!")
}
