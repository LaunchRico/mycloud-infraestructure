# 1. PostgreSQL image from Docker Hub
FROM postgres:latest

# 2. Environment variables
ENV POSTGRES_DB=my_cloud
ENV POSTGRES_USER=my_cloud_user
ENV POSTGRES_PASSWORD=my_cloud_password

# 3. Create database structure
COPY ../mycloud-data/Database.sql /docker-entrypoint-initdb.d/

# 6. Expose the PostgreSQL default port
EXPOSE 5432

# 7. Start posgreSQL service
CMD ["postgres"]
