#!/bin/bash

scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

otherDest="${scriptDir}/../other"
otherRepos=()
otherRepos+=("git@github.com:diasurgical/devilution.git")
otherRepos+=("git@github.com:diasurgical/devilutionX.git")
otherRepos+=("git@github.com:SmokeMonsterPacks/EverDrive-Packs-Lists-Database.git")
otherRepos+=("git@github.com:Aleyr/EverDrive-Packs-Lists-Database-UI.git")
otherRepos+=("git@github.com:misterkun-io/MiSTer_DeViL.git")
#otherRepos+=("git@github.com:RetroDriven/MiSTerMAME.git")
otherRepos+=("git@github.com:calle81/MiSTer_UnofficialCores.git")
otherRepos+=("git@github.com:michaelshmitty/SD-Installer-macos_MiSTer.git")


misterDest="${scriptDir}/../Mister-devel"
mlList=$(gh repo list "MiSTer-devel" -L 1000 --json sshUrl --jq '.[].sshUrl' | sort )
misterRepos=()

SAVEIFS=$IFS   # Save current IFS
IFS=$'\n'      # Change IFS to new line
misterRepos=($mlList) # split to array $misterRepos
IFS=$SAVEIFS   # Restore IFS

function updateGit() {
  # git@github.com:
  # 012345678901234
  #           11111
  url=$1
  githubRemoved=${url:15}
  gorg=${githubRemoved%/*}
  gend=${githubRemoved#[!/]*/}
  repo=${gend%%\.git}
  if [ "X${gorg}" == "XMiSTer-devel" ]
  then
    dest="${misterDest}"
  else
    dest="${otherDest}"
  fi
  echo "================================"
  echo "url:  [${url}]"
  echo "gorg: [${gorg}]"
  #echo "gend: [${gend}]"
  echo "repo: [${repo}]"
  echo "dest: [${dest}]"
  echo "================================"
  if [ -f ${dest}/${repo}/.git/config ]
  then
    cd ${dest}/${repo} || exit
    git fetch --all    || exit
    git pull           || exit
    cd ${scriptDir}    || exit
  else
    cd ${dest}/        || exit
    git clone ${url}   || exit
    cd ${scriptDir}    || exit
  fi
}

for url in "${otherRepos[@]}"
do
  updateGit ${url}
done

for url in "${misterRepos[@]}"
do
  updateGit ${url}
done

echo "MiSTer-devel has ${#misterRepos[@]} repos"
echo "cloned ${#otherRepos[@]} other repos"
