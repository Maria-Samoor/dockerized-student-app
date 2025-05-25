# Student Average Calculator App

## Project Description

This project is a simple Flask web application that calculates student averages from a CSV file, displays them on a webpage, and provides individual student details. The application uses cron jobs to periodically run a script that calculates and updates the averages, and it is containerized using Docker for easy deployment.

## Features

- Calculate student averages from CSV data
- Display averages on a web interface
- Show individual student details
- Automatic periodic updates via cron jobs
- Docker containerization for easy deployment

## Tools Used

- **Flask**: Python web framework
- **Cron**: Job scheduler for periodic updates
- **Bash**: Shell scripting for automation
- **CSV**: Student data storage format
- **Docker**: Containerization

## Prerequisites

- Docker installed on your system
- Basic understanding of command line

## Installation and Usage

### Option 1: Pull Pre-built Docker Image

1. Pull the image from Docker Hub:
   ```bash
   docker pull mariaahs/student-app:latest
2. Run the container:
   ```bash
   docker run -d -p 5000:5000 mariaahs/student-app
3. Access the application:
   ```bash
   http://localhost:5000

### Option 2: Build and Run Locally

1. Clone the repository:
   ```bash
   git clone https://github.com/Maria-Samoor/dockerized-student-app.git
   cd dockerized-student-app
2. Build the Docker image:
   ```bash
   docker build -t student-app .
3. Run the container:
   ```bash
   docker run -d -p 5000:5000 student-app
4. Access the application:
   ```bash
   http://localhost:5000
