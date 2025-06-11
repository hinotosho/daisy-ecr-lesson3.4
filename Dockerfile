# Using latest base image from DockerHub
FROM python:latest

# Add build-time argument and label for Git commit SHA (used for traceability)
ARG GIT_SHA
LABEL git_sha=$GIT_SHA

# Create working directory inside container
WORKDIR /app

# Copy source code into the container
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose port 8080 for Flask
EXPOSE 8080

# Start the Flask app
ENTRYPOINT ["python"]
CMD ["app.py"]