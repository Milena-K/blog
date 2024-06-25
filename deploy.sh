USER=milena
HOST=debian
DIR=/home/milena/services/milena_blog/blog # the directory where your web site files should go

hugo --minify --gc && rsync -avz --delete public/ ${USER}@${HOST}:${DIR} # this will delete everything on the server that's not in the local public folder

exit 0
