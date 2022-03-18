#!/bin/bash

# Copy Config files
# TODO: isolate in folder to enable iterative approach
cp .bashrc ~
cp .gitconfig ~
cp .profile ~
cp .tmux.conf ~

ls -al ~

# TODO: Windows specific setup 