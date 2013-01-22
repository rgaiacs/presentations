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
echo 'C4' >> sand.txt
git commit -a -m 'C4'
echo 'C5' >> sand.txt
git commit -a -m 'C5'
git checkout master
sed -i '1iC6' sand.txt
git commit -a -m 'C6'
git log --graph --oneline --all
git rebase -i master sand
git log --graph --oneline --all
cd ..
rm -rf sand_box
