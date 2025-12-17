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


Run
# Start Selenium Grid + Tests
docker-compose up --build

# View reports
open target/cucumber-reports.html  # if you added reporting plugin
