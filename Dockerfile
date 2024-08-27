# Use the official Jekyll image from Docker Hub
FROM jekyll/jekyll:latest

# Set the working directory
WORKDIR /srv/jekyll

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile ./

# Install dependencies
RUN bundle install

# Copy the rest of the project files
COPY . .

# Expose port 4000
EXPOSE 4000

# Default command to serve the Jekyll site
CMD ["jekyll", "serve", "-l", "-H", "0.0.0.0"]