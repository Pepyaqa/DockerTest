# Dockerfile

FROM mcr.microsoft.com/dotnet/core/runtime:3.1 AS base
WORKDIR /app

FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /src
COPY ["LilMicroDocjer/LilMicroDocjer.csproj", "LilMicroDocjer/"]
RUN dotnet restore "LilMicroDocjer/LilMicroDocjer.csproj"
COPY . .
WORKDIR "/src/LilMicroDocjer"
RUN dotnet build "LilMicroDocjer.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "LilMicroDocjer.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "LilMicroDocjer.dll"]