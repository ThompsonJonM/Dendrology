#!/usr/bin/env bash

function run_tests() {

    # remove the results of the previous tests
    rm -rf ./output/ || true

    # build a new docker image
    docker build -t dendrology .

    docker stop dendrology-tester || true && docker rm dendrology-tester || true

    # run the docker image
    docker run --name dendrology-tester dendrology

    # once results have been created and the runs are finished, copy the results
    docker cp dendrology-tester:/usr/src/app/cypress/output .

    docker rm dendrology-tester
}

run_tests