#!/bin/bash

tmux new -d -s git-intro -n home
tmux new-window -t git-intro -n adam
tmux send-keys -t git-intro:adam "sudo su adam" Enter
tmux new-window -t git-intro -n bob
tmux send-keys -t git-intro:bob "sudo su bob" Enter
sleep 2s
tmux send-keys -t git-intro:adam "reverse" Enter
tmux send-keys -t git-intro:adam "eclipse &" Enter
tmux send-keys -t git-intro:adam "clear" Enter
tmux send-keys -t git-intro:bob "reverse" Enter
tmux send-keys -t git-intro:bob "eclipse &" Enter
tmux send-keys -t git-intro:bob "clear" Enter
tmux attach -t git-intro
