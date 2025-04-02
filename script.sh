#!/bin/bash
> final_dict.txt  # fichier résultat
for p1 in $(cat part1.txt); do
  for p2 in $(cat part2.txt); do
    for p3 in $(cat part3.txt); do
      for sep1 in $(cat sep1.txt); do
        for sep2 in $(cat sep2.txt); do
          ....
          echo "${p1}${sep1}${p2}${sep2}${p3}${sep3}${p4}${sep4}${p4}${sep4}" >> final_dict.txt
          ....
        done
      done
    done
  done
done
