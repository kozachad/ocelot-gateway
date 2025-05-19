# 🌐 Ocelot API Gateway — SE4458 Course Project

This repository contains the **API Gateway** for the SE4458 Flight Reservation AI Agent project. It is built using **.NET 8** and **Ocelot**, and acts as a centralized gateway that routes requests between the AI Agent and backend flight services (such as querying flights, booking tickets, and checking in).

All requests from the AI Agent are forwarded through this gateway to ensure modularity, security, and centralized management.

---

## 🧭 Purpose

- Route requests from the AI Agent to the appropriate backend API
- Handle authentication using JWT tokens
- Centralize all API calls for modular architecture
- Enable version control and endpoint abstraction

---

## 🛠️ Technologies Used

- .NET 8
- Ocelot API Gateway
- ASP.NET Core Web API
- JWT Authentication

---

## ⚙️ Configuration Overview

All routing is handled through the `ocelot.json` file located in the root directory. Example route configuration:

```json
{
  "Routes": [
    {
      "DownstreamPathTemplate": "/api/flight/query",
      "DownstreamScheme": "https",
      "DownstreamHostAndPorts": [
        {
          "Host": "your-api-host",
          "Port": 443
        }
      ],
      "UpstreamPathTemplate": "/api/v1/flights/query",
      "UpstreamHttpMethod": [ "POST" ],
      "AuthenticationOptions": {
        "AuthenticationProviderKey": "Bearer",
        "AllowedScopes": []
      }
    }
  ],
  "GlobalConfiguration": {
    "BaseUrl": "https://your-gateway-url.com"
  }
}
```

> Replace `"your-api-host"` and `"your-gateway-url.com"` with your actual API and deployment addresses.

---

## 🚀 Running the Project

### Prerequisites

- [.NET 8 SDK](https://dotnet.microsoft.com/download)
- Visual Studio or terminal

### Steps to Run

```bash
# Restore dependencies
dotnet restore

# Build the project
dotnet build

# Run the gateway
dotnet run
```

By default, the gateway runs at:

```
https://localhost:5111
```

---

## 📌 Notes

- This gateway works in conjunction with the following services:
  - **AI Agent:** [https://github.com/kozachad/airline-ai_agent](https://github.com/kozachad/airline-ai_agent)
  - **React UI:** [https://github.com/kozachad/airline-react-ui](https://github.com/kozachad/airline-ui)

- Ensure that your downstream APIs (query, book, check-in) are running and accessible.
- JWT tokens must be included in client requests to access protected endpoints.

---

## 👨‍💻 Developer Info

**Name:** Kaan Mert Kozalı  
**Course:** SE4458 Midterm Project (Spring 2025)  
**Project Theme:** Flight Reservation System – API Gateway
