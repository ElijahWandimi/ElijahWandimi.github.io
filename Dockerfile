FROM ruby:3.1

# Install essential Linux packages
RUN apt-get update && apt-get install -y \
    build-essential \
    node.js \
    npm

# Set work directory
WORKDIR /site

# Install Jekyll and Bundler
RUN gem install bundler

# Copy the Gemfile and Gemfile.lock
COPY Gemfile ./

# Install dependencies
RUN bundle install

# Expose port 4000
EXPOSE 4000

# Set the default command
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload"]