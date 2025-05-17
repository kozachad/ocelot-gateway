# Base image
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app
EXPOSE 8080

FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src

# Projeyi kopyala ve build et
COPY ["ApiGatewayOcelot.csproj", "./"]
RUN dotnet restore "./ApiGatewayOcelot.csproj"
COPY . .
RUN dotnet publish "ApiGatewayOcelot.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "ApiGatewayOcelot.dll"]
