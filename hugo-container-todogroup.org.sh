#!/bin/bash

TODO_DIR=${TODO_DIR:-"{$PWD}/todogroup.org/"}
TODO_HUGO=${TODO_HUGO:-"${PWD}/run-hugo.sh"}

docker run -it --rm --name hugo-todo \
  -v ${TODO_DIR}:/src/ \
  -v ${TODO_HUGO}:/run-hugo.sh \
  -w /src/ \
  -p 1313:1313 \
  eclipsefdn/hugo-node:h0.120.4-n18.19.1 \
  /run-hugo.sh
