# DevOps Assignment - Nginx Reverse Proxy with Docker

This project demonstrates a containerized microservices architecture with Nginx reverse proxy routing traffic to two backend services.

## Architecture

- **Service 1**: Go API (port 8001)
- **Service 2**: Python Flask API (port 8002)  
- **Nginx**: Reverse proxy routing requests based on URL paths

## Setup Instructions

1. Clone the repository
2. Run the entire system:
   ```bash
   docker-compose up --build
   ```

## Routing

The Nginx reverse proxy routes requests as follows:

- `http://localhost:8080/service1/*` → Service 1 (Go API)
- `http://localhost:8080/service2/*` → Service 2 (Python Flask API)

## Test Endpoints

- `http://localhost:8080/service1/ping` - Health check for Service 1
- `http://localhost:8080/service1/hello` - Greeting from Service 1
- `http://localhost:8080/service2/ping` - Health check for Service 2
- `http://localhost:8080/service2/hello` - Greeting from Service 2

## Features Implemented

- ✅ Docker containerization for all services
- ✅ Nginx reverse proxy with path-based routing
- ✅ Health checks for both backend services
- ✅ Request logging with timestamps
- ✅ Bridge networking between containers
- ✅ Single port exposure (8080) to host