services:
  frontend:
    image: nginx:latest
    container_name: frontend-cont
    ports:
      - "1111:80"

  backend:
    image: traefik/whoami:latest
    container_name: backend-cont
    ports:
      - "1112:80"

  db:
    image: mysql:8.0
    container_name: db-cont
    environment:
      MYSQL_ROOT_PASSWORD: devopspassword
      MYSQL_DATABASE: movieapp
    ports:
      - "1113:3306"
    volumes:
      - dbdata:/var/lib/mysql

volumes:
  dbdata:
