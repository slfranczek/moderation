@echo off

:: Restore NuGet packages
dotnet restore

:: Apply any pending migrations and create the database
dotnet ef database update
