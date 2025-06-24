# DevOps Assignment - Nginx Reverse Proxy with Docker

Containerized microservices with Nginx reverse proxy routing.

## Setup Instructions

1. Clone the repository
2. Run the system:
   ```bash
   docker-compose up --build
   ```
3. Test endpoints:
   ```bash
   ./test.sh
   ```

## How Routing Works

Nginx reverse proxy routes based on URL paths:
- `/service1/*` → Go API (service_1:8001)
- `/service2/*` → Python Flask API (service_2:8002)

**Test URLs:**
- `http://localhost:8080/service1/ping`
- `http://localhost:8080/service1/hello`
- `http://localhost:8080/service2/ping`
- `http://localhost:8080/service2/hello`

## Bonus Features Implemented

### ✅ Logging Clarity
- Custom Nginx log format with timestamps, status codes, and response times
- Logs show: `timestamp [status] method path -> upstream (response_time)`

### ✅ Clean & Modular Docker Setup
- Minimal Dockerfiles with single responsibility
- Proper service separation and networking
- Health check dependencies

### ✅ Health Checks & Automated Testing
- Docker health checks for both services
- Nginx waits for healthy services before starting
- Automated test script (`test.sh`) validates all endpoints