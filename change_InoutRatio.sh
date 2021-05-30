#!/usr/bin/bash


# remove result
rm /mnt/c/Users/atsushi/Documents/study/M1/Code/AlgorithmSimulator2/result/change_InoutRatio/HEFT/*.txt
rm /mnt/c/Users/atsushi/Documents/study/M1/Code/AlgorithmSimulator2/result/change_InoutRatio/QLHEFT/*.txt
rm /mnt/c/Users/atsushi/Documents/study/M1/Code/AlgorithmSimulator2/result/change_InoutRatio/Proposed/*.txt


# HEFT
python3 evaluation.py HEFT change_InoutRatio new_100_60_0 2 3 1.5 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_1 2 3 1.5 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_2 2 3 1.5 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_3 2 3 1.5 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_4 2 3 1.5 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_5 2 3 1.5 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_6 2 3 1.5 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_7 2 3 1.5 1 1

python3 evaluation.py HEFT change_InoutRatio new_100_60_0 2 3 3 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_1 2 3 3 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_2 2 3 3 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_3 2 3 3 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_4 2 3 3 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_5 2 3 3 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_6 2 3 3 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_7 2 3 3 1 1

python3 evaluation.py HEFT change_InoutRatio new_100_60_0 2 3 6 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_1 2 3 6 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_2 2 3 6 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_3 2 3 6 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_4 2 3 6 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_5 2 3 6 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_6 2 3 6 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_7 2 3 6 1 1

python3 evaluation.py HEFT change_InoutRatio new_100_60_0 2 3 12 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_1 2 3 12 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_2 2 3 12 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_3 2 3 12 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_4 2 3 12 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_5 2 3 12 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_6 2 3 12 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_7 2 3 12 1 1

python3 evaluation.py HEFT change_InoutRatio new_100_60_0 2 3 24 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_1 2 3 24 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_2 2 3 24 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_3 2 3 24 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_4 2 3 24 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_5 2 3 24 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_6 2 3 24 1 1
python3 evaluation.py HEFT change_InoutRatio new_100_60_7 2 3 24 1 1


# QLHEFT
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_0 2 3 1.5 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_1 2 3 1.5 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_2 2 3 1.5 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_3 2 3 1.5 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_4 2 3 1.5 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_5 2 3 1.5 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_6 2 3 1.5 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_7 2 3 1.5 1 1

wait
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_0 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_1 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_2 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_3 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_4 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_5 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_6 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_7 2 3 3 1 1

wait
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_0 2 3 6 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_1 2 3 6 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_2 2 3 6 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_3 2 3 6 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_4 2 3 6 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_5 2 3 6 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_6 2 3 6 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_7 2 3 6 1 1

wait
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_0 2 3 12 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_1 2 3 12 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_2 2 3 12 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_3 2 3 12 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_4 2 3 12 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_5 2 3 12 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_6 2 3 12 1 1 &
python3 evaluation.py QLHEFT change_InoutRatio new_100_60_7 2 3 12 1 1


wait
# Proposed
python3 evaluation.py Proposed change_InoutRatio new_100_60_0 2 3 1.5 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_1 2 3 1.5 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_2 2 3 1.5 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_3 2 3 1.5 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_4 2 3 1.5 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_5 2 3 1.5 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_6 2 3 1.5 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_7 2 3 1.5 1 1

wait
python3 evaluation.py Proposed change_InoutRatio new_100_60_0 2 3 3 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_1 2 3 3 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_2 2 3 3 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_3 2 3 3 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_4 2 3 3 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_5 2 3 3 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_6 2 3 3 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_7 2 3 3 1 1

wait
python3 evaluation.py Proposed change_InoutRatio new_100_60_0 2 3 6 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_1 2 3 6 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_2 2 3 6 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_3 2 3 6 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_4 2 3 6 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_5 2 3 6 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_6 2 3 6 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_7 2 3 6 1 1

wait
python3 evaluation.py Proposed change_InoutRatio new_100_60_0 2 3 12 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_1 2 3 12 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_2 2 3 12 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_3 2 3 12 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_4 2 3 12 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_5 2 3 12 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_6 2 3 12 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_7 2 3 12 1 1

wait
python3 evaluation.py Proposed change_InoutRatio new_100_60_0 2 3 24 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_1 2 3 24 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_2 2 3 24 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_3 2 3 24 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_4 2 3 24 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_5 2 3 24 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_6 2 3 24 1 1 &
python3 evaluation.py Proposed change_InoutRatio new_100_60_7 2 3 24 1 1

wait
python3 order_name.py change_InoutRatio