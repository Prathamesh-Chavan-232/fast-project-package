#!/bin/bash

fastproject() {
    local project_name=$1
    sed "s/project_client/${project_name}_client/" $PWD/docker-compose.yml  | sed "s/project_server/${project_name}_server/"
}

