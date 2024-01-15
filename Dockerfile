# Use the official Nginx base image
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove existing contents in the working directory
RUN rm -rf /usr/share/nginx/html/*

# Install Git (if not already included in the base image)
RUN apt update && apt install -y git

RUN git clone https://AlexAnderson220994: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@github.com/AlexAnderson220994/aegon_data.git .

# COPY --from=nginxinc/nginx-unprivileged:1.21.4-alpine /usr/share/nginx/html .

# COPY index.html .
# COPY jpynb_report_final.html .
# COPY jpynb_report.html .
# COPY LICENSE .
# COPY ML_jpynb.html .
# COPY package-lock.json .
# COPY package.json .
# COPY peterpfp.jpg .
# COPY scripts.js .
# COPY styles.css .
# COPY ERD_insurance_claims.png .

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container is run
CMD ["nginx", "-g", "daemon off;"]
