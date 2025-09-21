# nginx-minimal-lab
Minimal NGINX lab project for learning and testing  
Includes a static page and a simple health check endpoint

## Build and Run with Docker
```bash
docker build -t nginx-minimal-lab:latest .
docker run --rm -p 85:80 nginx-minimal-lab:latest
App: http://localhost:85/

Health: http://localhost:85/health

Run with Docker Compose:
docker-compose up --build
Endpoints available:

http://localhost:85/

http://localhost:85/health

To stop:
docker-compose down

Expected Output:
Output files are included in the repository for reference:

output_index.txt – result of curl -i http://localhost:85/

output_health.txt – result of curl -i http://localhost:85/health

Sample:
$ curl -i http://localhost:85/
HTTP/1.1 200 OK
Server: nginx/1.29.1
...
$ curl -i http://localhost:85/health
HTTP/1.1 200 OK
...

Project Structure:
.
├── Dockerfile          # Minimal NGINX image definition
├── default.conf        # NGINX server configuration
├── index.html          # Static hello page
├── docker-compose.yml  # Compose file (port 85:80)
├── output_index.txt    # Sample curl output for /
├── output_health.txt   # Sample curl output for /health
└── README.md           # Project documentation
