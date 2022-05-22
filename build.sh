  
#!/bin/bash

docker run --rm -i \
    -v /usr/local/cargo/registry:/usr/local/cargo/registry \
    -v ${PWD}:/workspace \
    rust:1.60 \
    sh -c 'cd /workspace && sh publish.sh'
