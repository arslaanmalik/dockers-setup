
FROM mcr.microsoft.com/dotnet/aspnet:3.1 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:3.1 AS build
WORKDIR /src
COPY ["test2.csproj", "."]
RUN dotnet restore "./test2.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "test2.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "test2.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "test2.dll"]

