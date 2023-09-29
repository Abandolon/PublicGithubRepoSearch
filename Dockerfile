# Use the official Ruby image as a parent image
FROM ruby:2.7

# Set the working directory in the Docker image
WORKDIR /usr/src/app

# Copy the Gemfile and Gemfile.lock into the image
COPY Gemfile Gemfile.lock ./

# Install any needed packages specified in Gemfile
RUN bundle install

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . .

# Expose port 4567 to the outside world
EXPOSE 4567

# The command to run your application using the puma web server
CMD ["bundle", "exec", "puma", "-p", "4567", "config.ru"]
