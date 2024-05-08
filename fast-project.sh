#!/bin/bash

# On demand docker containers using compose templates
function foo() {
   local container=$1
   local volume=$2

   cat <<EOF > ~/keep-coding/work/new-compose-file.yaml
   version: "3"
     services:
       ${container}:
     image: nodered/node-red
     ports:
       - "3000:1880"
     volumes:
       - ./${volume}/:/data
EOF
# sed 's/node_red_container/new_docker_container/' template.yml | sed 's/node-red-data/new-volume/';
}

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

