# Exercism Prolog Test Runner

The Docker image to automatically run tests on Prolog solutions submitted to [Exercism].

## Running the Tests

To run all of the tests, do the following:

1. Open a terminal in the project's root
2. Run `bin/run-tests.sh`

These are [golden tests][golden] that compare the `results.json` generated by running the current state of the code against the "known good" `test/<test-name>/results.json`. All files created during the test run itself are discarded.

When you've made modifications to the code that will result in a new "golden" state, you'll need to generate and commit a new `test/<test-name>/results.json` file.

To run the tests of an arbitrary exercise, do the following:

1. Open a terminal in the project's root
2. Run `./bin/run.sh <exercise-slug> <path/to/solution/dir/> </path/to/output/dir/>`

Once the test runner has finished, its results will be written to `/path/to/output/dir/results.json`.

## Run the test runner on an exercise with Docker

_This script is provided for testing purposes, as it mimics how test runners run in Exercism's production environment._

To run the tests of an arbitrary exercise using the Docker container, do the following:

1. Open a terminal in the project's root
2. Run `./bin/run-in-docker.sh <exercise-slug> <./relative/path/to/solution/dir/> <./relative/path/to/output/dir/>`

Once the test runner has finished, its results will be written to `./relative/path/to/output/dir/results.json`.

**Note**: the solution and output directory's **MUST** be relative paths!

## Run the tests

To run the tests to verify the behavior of the test runner, do the following:

1. Open a terminal in the project's root
2. Run `./bin/run-tests.sh`

These are [golden tests][golden] that compare the `results.json` generated by running the current state of the code against the "known good" `test/<test-name>/results.json`. All files created during the test run itself are discarded.

When you've made modifications to the code that will result in a new "golden" state, you'll need to generate and commit a new `test/<test-name>/results.json` file.

[test-runners]: https://github.com/exercism/automated-tests/blob/master/docs/introduction.md
[golden]: https://ro-che.info/articles/2017-12-04-golden-tests
[exercism]: https://exercism.io
