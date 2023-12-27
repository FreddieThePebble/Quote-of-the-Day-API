# Use an official lightweight web server image
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the quotes file to the working directory
COPY quotes.txt .

# Copy a custom index.html that displays a random quote
COPY index.html .

# Expose port 80 to the outside world
EXPOSE 80

# Command to run the web server
CMD ["nginx", "-g", "daemon off;"]
