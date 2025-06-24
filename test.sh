#!/bin/bash
echo "Testing DevOps Assignment..."

# Wait for services to be ready
sleep 5

# Test Service 1
echo "Testing Service 1:"
curl -s http://localhost:8080/service1/ping | jq .
curl -s http://localhost:8080/service1/hello | jq .

# Test Service 2  
echo "Testing Service 2:"
curl -s http://localhost:8080/service2/ping | jq .
curl -s http://localhost:8080/service2/hello | jq .

echo "All tests completed!"