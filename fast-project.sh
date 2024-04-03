#!/bin/bash

fastproject() {
    local project_template=$1
    local project_name=$2
    local template_compose_file=$HOME/keep-coding/fast-project-package/expressjs-client-server-template/docker-compose.yml

    # for d in */ ; do
    #     echo "$d"
    #     if [ project_name = "$d" ]; then
    #         echo "matched"
    #     fi
    # done

    # sed "s/project_client/${project_name}_client/" $template_compose_file | sed "s/project_server/${project_name}_server/" | sed "s/project_db_volume/${project_name}_db_volume/" > $PWD/docker-compose.yml | bat $PWD/docker-compose.yml

    sed "s/project_/${project_name}_/" $template_compose_file > $PWD/docker-compose.yml | bat $PWD/docker-compose.yml

}

# Scaffolding project

