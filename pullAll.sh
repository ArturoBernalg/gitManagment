#!/bin/bash
git config --global credential.helper store
                repos=(
                  "C:\Users\bernart\IdeaProjects\XXXXX"
                )
                echo "Checking" ${#repos[@]} "repositories for updates"

                for repo in "${repos[@]}"
                do

                  cd "${repo}"

                  echo "fetchig" ${repo}"......"
                  git fetch --all
                   echo "updating" ${repo}"....."
                  git pull --all
                done