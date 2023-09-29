# Sinatra GitHub Repo Search

A simple Sinatra web application that allows users to search for public GitHub repositories based on keywords and view paginated results.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Acknowledgements](#acknowledgements)

## Prerequisites

Before you begin, ensure you have met the following requirements:
- You have installed the latest version of Ruby and Bundler.
- You have a Windows/Linux/Mac machine running.
- Optionally, you have Docker & Docker-Compose installed if you prefer to run the application in a container.

## Installation

Clone the Repository, Install Dependencies, Run the Application Locally, and Using Docker (Optional) with the following commands:

```sh
git clone https://github.com/your_username/sinatra-github-repo-search.git
cd sinatra-github-repo-search
bundle install
ruby app.rb
```

### Using Docker
If you opt to run the app in a container:

With docker-compose installed:

```sh
docker-compose up
```

Directly with docker commands:

```sh
docker build -t repo_search .
docker run -p 4567:4567 repo_search
```

## Usage

1. Open your web browser and navigate to `http://localhost:4567`.
2. Enter a keyword to search for GitHub repositories.
3. View the paginated results and navigate through different pages.

## Contributing

Fork the Project, Create your Feature Branch, Commit your Changes, Push to the Branch, and Open a Pull Request with the following commands:

```sh
git checkout -b feature/NewFeature
git commit -m 'Add some NewFeature'
git push origin feature/NewFeature
```

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Acknowledgements

- [Sinatra](http://sinatrarb.com/)
- [Octokit](https://github.com/octokit/octokit.rb)

## Possible Enhancements

- [ ] Allow user to chose custom sorting/filtering
- [ ] Allow skipping to specific pages
- [ ] Allow user to specify what details of repo they would like displayed
