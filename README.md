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

All routing is handled through the `ocelot.json` file located in the root directory.
