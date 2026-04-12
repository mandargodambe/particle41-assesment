FROM python:3.12-slim

#Update and install build dependencies and clean up apt cache in the same layer to reduce image size
#updating the package to fetch latest version to avoid vulnerabilities
# RUN apt-get update && \
#     apt-get install -y --no-install-recommends \
#         build-essential \
#     && rm -rf /var/lib/apt/lists/*

#Changing working directory to /app
WORKDIR /app

# Copy requirements first (better caching)
COPY requirements.txt app.py /app/

# Install deps + create user + fix permissions in one layer
RUN pip install --no-cache-dir -r requirements.txt 
    
# Fix non-root ownership only for new files
RUN useradd -m appuser \
    && chown -R appuser:appuser /app

# Switch to non root user
USER appuser

#Expose port 8080 for the application
EXPOSE 8080 

CMD ["gunicorn", "-w", "2", "-b", "0.0.0.0:8080", "app:app"]