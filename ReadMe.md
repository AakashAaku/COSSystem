# University Course Scheduling and Section Optimization System

## Overview
This project is a .NET Core MVC web application that provides an optimized scheduling system for university courses, including lectures and labs, respecting operational constraints.

## Features
- Role-based access (optional extension)
- Scheduling logic for lectures and lab sessions with constraints
- Export schedule data to Excel format
- Visualization dashboard with heatmaps and bar charts
- Uses Bootstrap and TailwindCSS for elegant, minimalistic UI
- Backend uses Dapper ORM with stored procedures for data access
- CI/CD with GitHub Actions (sample pipeline included)
- Unit tests confirming scheduling functionality

## Technologies
- .NET Core 6 MVC
- MS SQL Server
- Dapper
- Bootstrap 5, TailwindCSS
- Chart.js
- EPPlus for Excel export
- GitHub Actions for CI

## Setup Instructions
1. Clone the repository.
2. Update connection string in `appsettings.json`.
3. Run database scripts in `Database/Scripts` folder.
4. Build and run project in Visual Studio 2022 or later.
5. Browse to `/Schedule` to view scheduling interface.

## Database
Schema and stored procedures are located in `Database/Scripts`.

## CI/CD
Sample GitHub Actions workflow available in `.github/workflows/ci.yml`.

## Testing
Unit tests are located in `Tests/UniversityCourseScheduling.Tests`.

## Licensing
MIT License.
