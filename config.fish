set PATH ~/.node/bin $PATH
set PATH /usr/local/sbin $PATH

function cdgit
    cd (git rev-parse --show-toplevel)
end

function mkcd
    mkdir $argv; cd $argv
end

function l
    ls -al
end

eval (docker-machine env default)

function shell
    docker-compose run web bash
end
