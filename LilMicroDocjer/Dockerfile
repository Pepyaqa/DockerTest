# Use the official .NET SDK image
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

WORKDIR /app

# Copy the project files into the container
COPY . .

# Build the application
RUN dotnet publish -c Release -o out

# Create a runtime image
FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS runtime

WORKDIR /app

# Copy the published output from the build image
COPY --from=build /app/out .

# Run the application
ENTRYPOINT ["dotnet", "LilMicroDocjer.dll"]