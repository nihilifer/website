from fabric.api import (
    cd,
    run
)


SHMIR_WEBSITE_DIR = '/home/nihilifer/shmir-website-docker'


def deploy():
    with cd(SHMIR_WEBSITE_DIR):
        run('git pull --rebase')
