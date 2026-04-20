#!/bin/bash

echo "Starting app..."
python app.py &

APP_PID=$!
sleep 3

echo "Running health check..."
STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:5000/health)

if [ "$STATUS" -eq 200 ]; then
  echo "✅ Test Passed"
  kill $APP_PID
  exit 0
else
  echo "❌ Test Failed"
  kill $APP_PID
  exit 1
fi