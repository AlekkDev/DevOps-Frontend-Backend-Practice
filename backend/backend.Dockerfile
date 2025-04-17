FROM bitnami/golang:1.23.6
# official bitnami golang image
# set workdir
WORKDIR /backend
# Copy all application files
COPY . .

EXPOSE 8000 #  Expose port 8000 for Go server
CMD ["go", "run", "main.go"]