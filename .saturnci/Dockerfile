# Use the Ruby 3.2.1 image from Docker Hub as the base image
FROM ruby:3.3.5

# Use a directory called /code in which to store this application's files.
WORKDIR /code

# Accept GitHub token as build arg for private repos
ARG GITHUB_TOKEN

# Configure git to use HTTPS with token for SSH URLs if token is provided
RUN if [ -n "$GITHUB_TOKEN" ]; then \
      git config --global url."https://${GITHUB_TOKEN}@github.com/".insteadOf "git@github.com:"; \
    fi

# Install Ruby dependencies
COPY Gemfile Gemfile.lock /code/
RUN bundle install

# Copy the rest of the application
COPY . /code

# Set "rails server -b 0.0.0.0" as the command to run when this container starts.
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
