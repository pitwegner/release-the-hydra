# release-the-hydra

## Tests

### Prerequisites

If you want to run the tests locally without docker, you have to install [bats](https://github.com/bats-core/bats-core#installation)

### Running Tests

In order to run tests, run either

`docker run -it -v "$(pwd):/code" bats/bats:latest /code/tests`

or

`bats -r tests/`
