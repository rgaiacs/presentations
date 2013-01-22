#!/bin/bash
mkdir sand_box
cd sand_box
git init
echo 'C0' >> sand.txt
git add sand.txt
git commit -m 'C0'
echo 'C1' >> sand.txt
git commit -a -m 'C1'
git branch sand
git checkout sand
echo 'C2' >> sand.txt
git commit -a -m 'C2'
echo 'C3' >> sand.txt
git commit -a -m 'C3'
git checkout master
sed -i '1iC4' sand.txt
git commit -a -m 'C4'
git log --graph --oneline --all
git rebase sand
git log --graph --oneline --all
cd ..
rm -rf sand_box
