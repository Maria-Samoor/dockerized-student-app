# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install necessary packages (cron, bc, procps)
RUN apt-get update && apt-get install -y cron && apt-get install -y bc procps vim

# Copy all files
COPY requirements.txt .
COPY students.csv .
COPY averages.txt .
COPY calculate_averages.sh .
COPY start.sh .
COPY cronjob .
COPY app/ app/

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make shell scripts executable
RUN chmod +x calculate_averages.sh start.sh

# Set environment variables for Flask
ENV FLASK_APP=app/app.py
ENV TEMPLATES_AUTO_RELOAD=TRUE
ENV FLASK_DEBUG=1

# Expose port 5000
EXPOSE 5000

# Start the start.sh script
CMD ["./start.sh"]
