# Use a Ruby base image
FROM ruby:2.7

# Set the working directory to /app
WORKDIR /app

# Copy the Gemfile and Gemfile.lock files
COPY Gemfile /app/Gemfile

# Install the dependencies specified in the Gemfile
RUN bundle install

# Copy the application file into the container
COPY app.rb /app

# Expose port 4567, the default port for Sinatra
EXPOSE 4567

# Run the application
CMD ["ruby", "app.rb"]
