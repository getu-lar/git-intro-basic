#!/bin/bash

SCRIPTPATH=$(dirname $(readlink -f $0))

tmux new -d -s git-intro -n home
tmux send-keys -t git-intro:home "xhost +local:adam" Enter
tmux send-keys -t git-intro:home "xhost +local:bob" Enter
tmux send-keys -t git-intro:home "xdg-open $SCRIPTPATH/../presentation.html" Enter
tmux send-keys -t git-intro:home "clear" Enter
tmux new-window -t git-intro -n adam
tmux send-keys -t git-intro:adam "sudo su adam" Enter
tmux new-window -t git-intro -n bob
tmux send-keys -t git-intro:bob "sudo su bob" Enter
sleep 2s
tmux send-keys -t git-intro:adam "reverse" Enter
tmux send-keys -t git-intro:adam "eclipse &" Enter
tmux send-keys -t git-intro:adam "cd" Enter
tmux send-keys -t git-intro:adam "clear" Enter
tmux send-keys -t git-intro:bob "reverse" Enter
tmux send-keys -t git-intro:bob "eclipse &" Enter
tmux send-keys -t git-intro:bob "cd" Enter
tmux send-keys -t git-intro:bob "clear" Enter
tmux attach -t git-intro
