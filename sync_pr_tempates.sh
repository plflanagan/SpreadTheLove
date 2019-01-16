#!/bin/bash


# should have one arg for directory location
if [ "$#" -ne 1 ]; then
  echo -n "
    Where do you want to run the script from? > "
  read answer
  current_directory=$answer
else
  current_directory=$1
fi

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
parent_path="$parent_path"/SupportingFiles
current_basename=`basename "$current_directory"`


cd "$current_directory"


for dir in */
do
  cd $dir

  echo "

Within $dir:"
  echo -n "
Local Branches:
"
  git branch
  echo -n "What git branch do you want to edit? > 
"
  read answer
  
  # TODO: make sure answer is real local branch
  git checkout $answer
  
  echo -n "
    Do you want to push the changes immediately without reviewing? (Yy to continue; anything else to skip) > "
  read answer
  if [ "$answer" == "${answer#[Yy]}" ] ;then
    echo "    Won't push before review."

    "$parent_path"/integrate_pr_template.sh "$parent_path" "$current_basename"
  else
  	"$parent_path"/integrate_pr_template.sh "$parent_path" "$current_basename"

  	git add .
    git commit -m "automated add/update PR template"
    git push origin $answer
  fi
  
  cd ..

  echo "    Update complete."
done

echo "Task Completed"
