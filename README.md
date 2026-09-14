# docker-multi-stage-build

This project demonstrates how to use Docker multi-stage builds to produce small, efficient runtime images.

## How to Run

docker build -t multi-stage-demo .
docker run -p 5000:5000 multi-stage-demo

Open:
http://localhost:5000

## Why Multi-Stage Builds?

- Smaller final image  
- No build tools in runtime  
- Faster deployments  
- Better security  
- Cleaner layers  

## Build Stage

- Installs dependencies  
- Copies source code  
- Prepares runtime files  

## Runtime Stage

- Uses minimal Python image  
- Copies only what is needed  
- Runs the application  
