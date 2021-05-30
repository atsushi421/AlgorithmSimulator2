#!/usr/bin/bash


# remove result
rm /mnt/c/Users/atsushi/Documents/study/M1/Code/AlgorithmSimulator2/result/change_CCR/HEFT/*.txt
rm /mnt/c/Users/atsushi/Documents/study/M1/Code/AlgorithmSimulator2/result/change_CCR/QLHEFT/*.txt
rm /mnt/c/Users/atsushi/Documents/study/M1/Code/AlgorithmSimulator2/result/change_CCR/Proposed/*.txt


# HEFT
python3 evaluation.py HEFT change_CCR new_100_60_0 2 3 3 0.8 2
python3 evaluation.py HEFT change_CCR new_100_60_1 2 3 3 0.8 2
python3 evaluation.py HEFT change_CCR new_100_60_2 2 3 3 0.8 2
python3 evaluation.py HEFT change_CCR new_100_60_3 2 3 3 0.8 2
python3 evaluation.py HEFT change_CCR new_100_60_4 2 3 3 0.8 2
python3 evaluation.py HEFT change_CCR new_100_60_5 2 3 3 0.8 2
python3 evaluation.py HEFT change_CCR new_100_60_6 2 3 3 0.8 2
python3 evaluation.py HEFT change_CCR new_100_60_7 2 3 3 0.8 2

python3 evaluation.py HEFT change_CCR new_100_60_0 2 3 3 1 1.3
python3 evaluation.py HEFT change_CCR new_100_60_1 2 3 3 1 1.3
python3 evaluation.py HEFT change_CCR new_100_60_2 2 3 3 1 1.3
python3 evaluation.py HEFT change_CCR new_100_60_3 2 3 3 1 1.3
python3 evaluation.py HEFT change_CCR new_100_60_4 2 3 3 1 1.3
python3 evaluation.py HEFT change_CCR new_100_60_5 2 3 3 1 1.3
python3 evaluation.py HEFT change_CCR new_100_60_6 2 3 3 1 1.3
python3 evaluation.py HEFT change_CCR new_100_60_7 2 3 3 1 1.3

python3 evaluation.py HEFT change_CCR new_100_60_0 2 3 3 1.5 1
python3 evaluation.py HEFT change_CCR new_100_60_1 2 3 3 1.5 1
python3 evaluation.py HEFT change_CCR new_100_60_2 2 3 3 1.5 1
python3 evaluation.py HEFT change_CCR new_100_60_3 2 3 3 1.5 1
python3 evaluation.py HEFT change_CCR new_100_60_4 2 3 3 1.5 1
python3 evaluation.py HEFT change_CCR new_100_60_5 2 3 3 1.5 1
python3 evaluation.py HEFT change_CCR new_100_60_6 2 3 3 1.5 1
python3 evaluation.py HEFT change_CCR new_100_60_7 2 3 3 1.5 1

python3 evaluation.py HEFT change_CCR new_100_60_0 2 3 3 2 0.7
python3 evaluation.py HEFT change_CCR new_100_60_1 2 3 3 2 0.7
python3 evaluation.py HEFT change_CCR new_100_60_2 2 3 3 2 0.7
python3 evaluation.py HEFT change_CCR new_100_60_3 2 3 3 2 0.7
python3 evaluation.py HEFT change_CCR new_100_60_4 2 3 3 2 0.7
python3 evaluation.py HEFT change_CCR new_100_60_5 2 3 3 2 0.7
python3 evaluation.py HEFT change_CCR new_100_60_6 2 3 3 2 0.7
python3 evaluation.py HEFT change_CCR new_100_60_7 2 3 3 2 0.7

python3 evaluation.py HEFT change_CCR new_100_60_0 2 3 3 3 0.5
python3 evaluation.py HEFT change_CCR new_100_60_1 2 3 3 3 0.5
python3 evaluation.py HEFT change_CCR new_100_60_2 2 3 3 3 0.5
python3 evaluation.py HEFT change_CCR new_100_60_3 2 3 3 3 0.5
python3 evaluation.py HEFT change_CCR new_100_60_4 2 3 3 3 0.5
python3 evaluation.py HEFT change_CCR new_100_60_5 2 3 3 3 0.5
python3 evaluation.py HEFT change_CCR new_100_60_6 2 3 3 3 0.5
python3 evaluation.py HEFT change_CCR new_100_60_7 2 3 3 3 0.5


# QLHEFT
python3 evaluation.py QLHEFT change_CCR new_100_60_0 2 3 3 0.8 2 &
python3 evaluation.py QLHEFT change_CCR new_100_60_1 2 3 3 0.8 2 &
python3 evaluation.py QLHEFT change_CCR new_100_60_2 2 3 3 0.8 2 &
python3 evaluation.py QLHEFT change_CCR new_100_60_3 2 3 3 0.8 2 &
python3 evaluation.py QLHEFT change_CCR new_100_60_4 2 3 3 0.8 2 &
python3 evaluation.py QLHEFT change_CCR new_100_60_5 2 3 3 0.8 2 &
python3 evaluation.py QLHEFT change_CCR new_100_60_6 2 3 3 0.8 2 &
python3 evaluation.py QLHEFT change_CCR new_100_60_7 2 3 3 0.8 2

wait
python3 evaluation.py QLHEFT change_CCR new_100_60_0 2 3 3 1 1.3 &
python3 evaluation.py QLHEFT change_CCR new_100_60_1 2 3 3 1 1.3 &
python3 evaluation.py QLHEFT change_CCR new_100_60_2 2 3 3 1 1.3 &
python3 evaluation.py QLHEFT change_CCR new_100_60_3 2 3 3 1 1.3 &
python3 evaluation.py QLHEFT change_CCR new_100_60_4 2 3 3 1 1.3 &
python3 evaluation.py QLHEFT change_CCR new_100_60_5 2 3 3 1 1.3 &
python3 evaluation.py QLHEFT change_CCR new_100_60_6 2 3 3 1 1.3 &
python3 evaluation.py QLHEFT change_CCR new_100_60_7 2 3 3 1 1.3

wait
python3 evaluation.py QLHEFT change_CCR new_100_60_0 2 3 3 1.5 1 &
python3 evaluation.py QLHEFT change_CCR new_100_60_1 2 3 3 1.5 1 &
python3 evaluation.py QLHEFT change_CCR new_100_60_2 2 3 3 1.5 1 &
python3 evaluation.py QLHEFT change_CCR new_100_60_3 2 3 3 1.5 1 &
python3 evaluation.py QLHEFT change_CCR new_100_60_4 2 3 3 1.5 1 &
python3 evaluation.py QLHEFT change_CCR new_100_60_5 2 3 3 1.5 1 &
python3 evaluation.py QLHEFT change_CCR new_100_60_6 2 3 3 1.5 1 &
python3 evaluation.py QLHEFT change_CCR new_100_60_7 2 3 3 1.5 1

wait
python3 evaluation.py QLHEFT change_CCR new_100_60_0 2 3 3 2 0.7 &
python3 evaluation.py QLHEFT change_CCR new_100_60_1 2 3 3 2 0.7 &
python3 evaluation.py QLHEFT change_CCR new_100_60_2 2 3 3 2 0.7 &
python3 evaluation.py QLHEFT change_CCR new_100_60_3 2 3 3 2 0.7 &
python3 evaluation.py QLHEFT change_CCR new_100_60_4 2 3 3 2 0.7 &
python3 evaluation.py QLHEFT change_CCR new_100_60_5 2 3 3 2 0.7 &
python3 evaluation.py QLHEFT change_CCR new_100_60_6 2 3 3 2 0.7 &
python3 evaluation.py QLHEFT change_CCR new_100_60_7 2 3 3 2 0.7


wait
# Proposed
python3 evaluation.py Proposed change_CCR new_100_60_0 2 3 3 0.8 2 &
python3 evaluation.py Proposed change_CCR new_100_60_1 2 3 3 0.8 2 &
python3 evaluation.py Proposed change_CCR new_100_60_2 2 3 3 0.8 2 &
python3 evaluation.py Proposed change_CCR new_100_60_3 2 3 3 0.8 2 &
python3 evaluation.py Proposed change_CCR new_100_60_4 2 3 3 0.8 2 &
python3 evaluation.py Proposed change_CCR new_100_60_5 2 3 3 0.8 2 &
python3 evaluation.py Proposed change_CCR new_100_60_6 2 3 3 0.8 2 &
python3 evaluation.py Proposed change_CCR new_100_60_7 2 3 3 0.8 2

wait
python3 evaluation.py Proposed change_CCR new_100_60_0 2 3 3 1 1.3 &
python3 evaluation.py Proposed change_CCR new_100_60_1 2 3 3 1 1.3 &
python3 evaluation.py Proposed change_CCR new_100_60_2 2 3 3 1 1.3 &
python3 evaluation.py Proposed change_CCR new_100_60_3 2 3 3 1 1.3 &
python3 evaluation.py Proposed change_CCR new_100_60_4 2 3 3 1 1.3 &
python3 evaluation.py Proposed change_CCR new_100_60_5 2 3 3 1 1.3 &
python3 evaluation.py Proposed change_CCR new_100_60_6 2 3 3 1 1.3 &
python3 evaluation.py Proposed change_CCR new_100_60_7 2 3 3 1 1.3

wait
python3 evaluation.py Proposed change_CCR new_100_60_0 2 3 3 1.5 1 &
python3 evaluation.py Proposed change_CCR new_100_60_1 2 3 3 1.5 1 &
python3 evaluation.py Proposed change_CCR new_100_60_2 2 3 3 1.5 1 &
python3 evaluation.py Proposed change_CCR new_100_60_3 2 3 3 1.5 1 &
python3 evaluation.py Proposed change_CCR new_100_60_4 2 3 3 1.5 1 &
python3 evaluation.py Proposed change_CCR new_100_60_5 2 3 3 1.5 1 &
python3 evaluation.py Proposed change_CCR new_100_60_6 2 3 3 1.5 1 &
python3 evaluation.py Proposed change_CCR new_100_60_7 2 3 3 1.5 1

wait
python3 evaluation.py Proposed change_CCR new_100_60_0 2 3 3 2 0.7 &
python3 evaluation.py Proposed change_CCR new_100_60_1 2 3 3 2 0.7 &
python3 evaluation.py Proposed change_CCR new_100_60_2 2 3 3 2 0.7 &
python3 evaluation.py Proposed change_CCR new_100_60_3 2 3 3 2 0.7 &
python3 evaluation.py Proposed change_CCR new_100_60_4 2 3 3 2 0.7 &
python3 evaluation.py Proposed change_CCR new_100_60_5 2 3 3 2 0.7 &
python3 evaluation.py Proposed change_CCR new_100_60_6 2 3 3 2 0.7 &
python3 evaluation.py Proposed change_CCR new_100_60_7 2 3 3 2 0.7

wait
python3 evaluation.py Proposed change_CCR new_100_60_0 2 3 3 3 0.5 &
python3 evaluation.py Proposed change_CCR new_100_60_1 2 3 3 3 0.5 &
python3 evaluation.py Proposed change_CCR new_100_60_2 2 3 3 3 0.5 &
python3 evaluation.py Proposed change_CCR new_100_60_3 2 3 3 3 0.5 &
python3 evaluation.py Proposed change_CCR new_100_60_4 2 3 3 3 0.5 &
python3 evaluation.py Proposed change_CCR new_100_60_5 2 3 3 3 0.5 &
python3 evaluation.py Proposed change_CCR new_100_60_6 2 3 3 3 0.5 &
python3 evaluation.py Proposed change_CCR new_100_60_7 2 3 3 3 0.5