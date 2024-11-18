# GenoScreen

GenoScreen is a Ruby on Rails web application designed to help you manage your genetic data analysis efficiently.

## Features

- User authentication and authorization
- Create, read, update, and delete (CRUD) operations for genetic analyses
- User-friendly interface with Bootstrap integration
- Parallel test execution with fixtures setup
- Comprehensive test coverage using Rails' built-in testing framework

## Getting Started

### Prerequisites

- Ruby
- Rails
- Bundler

### Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/genoscreen.git
    cd genoscreen
    ```

2. Install dependencies:
    ```sh
    bin/setup
    ```

3. Prepare the database:
    ```sh
    bin/rails db:prepare
    ```

### Running the Application

Start the Rails server:
```sh
bin/rails server