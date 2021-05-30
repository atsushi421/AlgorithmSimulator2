#!/usr/bin/bash


# remove result
rm /mnt/c/Users/atsushi/Documents/study/M1/Code/AlgorithmSimulator2/result/change_NumCore/HEFT/*.txt
rm /mnt/c/Users/atsushi/Documents/study/M1/Code/AlgorithmSimulator2/result/change_NumCore/QLHEFT/*.txt
rm /mnt/c/Users/atsushi/Documents/study/M1/Code/AlgorithmSimulator2/result/change_NumCore/Proposed/*.txt


# HEFT
python3 evaluation.py HEFT change_NumCore new_100_60_0 2 2 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_1 2 2 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_2 2 2 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_3 2 2 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_4 2 2 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_5 2 2 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_6 2 2 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_7 2 2 3 1 1

python3 evaluation.py HEFT change_NumCore new_100_60_0 2 3 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_1 2 3 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_2 2 3 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_3 2 3 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_4 2 3 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_5 2 3 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_6 2 3 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_7 2 3 3 1 1

python3 evaluation.py HEFT change_NumCore new_100_60_0 2 4 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_1 2 4 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_2 2 4 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_3 2 4 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_4 2 4 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_5 2 4 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_6 2 4 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_7 2 4 3 1 1

python3 evaluation.py HEFT change_NumCore new_100_60_0 2 5 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_1 2 5 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_2 2 5 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_3 2 5 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_4 2 5 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_5 2 5 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_6 2 5 3 1 1
python3 evaluation.py HEFT change_NumCore new_100_60_7 2 5 3 1 1


# QLHEFT
python3 evaluation.py QLHEFT change_NumCore new_100_60_0 2 2 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_1 2 2 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_2 2 2 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_3 2 2 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_4 2 2 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_5 2 2 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_6 2 2 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_7 2 2 3 1 1

wait
python3 evaluation.py QLHEFT change_NumCore new_100_60_0 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_1 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_2 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_3 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_4 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_5 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_6 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_7 2 3 3 1 1

wait
python3 evaluation.py QLHEFT change_NumCore new_100_60_0 2 4 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_1 2 4 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_2 2 4 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_3 2 4 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_4 2 4 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_5 2 4 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_6 2 4 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_7 2 4 3 1 1

wait
python3 evaluation.py QLHEFT change_NumCore new_100_60_0 2 5 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_1 2 5 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_2 2 5 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_3 2 5 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_4 2 5 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_5 2 5 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_6 2 5 3 1 1 &
python3 evaluation.py QLHEFT change_NumCore new_100_60_7 2 5 3 1 1


wait
# Proposed
python3 evaluation.py Proposed change_NumCore new_100_60_0 2 2 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_1 2 2 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_2 2 2 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_3 2 2 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_4 2 2 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_5 2 2 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_6 2 2 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_7 2 2 3 1 1

wait
python3 evaluation.py Proposed change_NumCore new_100_60_0 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_1 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_2 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_3 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_4 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_5 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_6 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_7 2 3 3 1 1

wait
python3 evaluation.py Proposed change_NumCore new_100_60_0 2 4 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_1 2 4 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_2 2 4 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_3 2 4 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_4 2 4 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_5 2 4 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_6 2 4 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_7 2 4 3 1 1

wait
python3 evaluation.py Proposed change_NumCore new_100_60_0 2 5 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_1 2 5 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_2 2 5 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_3 2 5 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_4 2 5 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_5 2 5 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_6 2 5 3 1 1 &
python3 evaluation.py Proposed change_NumCore new_100_60_7 2 5 3 1 1