# AutomationCode

selenium-cucumber-docker-framework/
├── src/
│   ├── main/
│   │   └── java/
│   │       └── pages/               # Page Objects
│   │           └── GoogleHomePage.java
│   └── test/
│       ├── java/
│       │   ├── runners/
│       │   │   └── TestRunner.java
│       │   ├── stepdefinitions/
│       │   │   └── GoogleSearchSteps.java
│       │   └── hooks/
│       │       └── Hooks.java
│       └── resources/
│           ├── features/
│           │   └── google_search.feature
│           └── config/
│               └── config.properties
├── pom.xml
├── Dockerfile
├── docker-compose.yml
└── README.md
