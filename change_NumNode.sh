#!/usr/bin/bash


# remove result
rm /mnt/c/Users/atsushi/Documents/study/M1/Code/AlgorithmSimulator2/result/change_NumNode/HEFT/*.txt
rm /mnt/c/Users/atsushi/Documents/study/M1/Code/AlgorithmSimulator2/result/change_NumNode/QLHEFT/*.txt
rm /mnt/c/Users/atsushi/Documents/study/M1/Code/AlgorithmSimulator2/result/change_NumNode/Proposed/*.txt


# HEFT
python3 evaluation.py HEFT change_NumNode new_20_0 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_20_1 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_20_2 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_20_3 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_20_4 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_20_5 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_20_6 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_20_7 2 3 3 1 1

python3 evaluation.py HEFT change_NumNode new_50_0 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_50_1 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_50_2 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_50_3 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_50_4 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_50_5 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_50_6 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_50_7 2 3 3 1 1

python3 evaluation.py HEFT change_NumNode new_100_60_0 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_100_60_1 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_100_60_2 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_100_60_3 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_100_60_4 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_100_60_5 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_100_60_6 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_100_60_7 2 3 3 1 1

python3 evaluation.py HEFT change_NumNode new_200_0 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_200_1 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_200_2 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_200_3 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_200_4 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_200_5 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_200_6 2 3 3 1 1
python3 evaluation.py HEFT change_NumNode new_200_7 2 3 3 1 1


# QLHEFT
python3 evaluation.py QLHEFT change_NumNode new_20_0 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_20_1 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_20_2 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_20_3 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_20_4 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_20_5 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_20_6 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_20_7 2 3 3 1 1

wait
python3 evaluation.py QLHEFT change_NumNode new_50_0 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_50_1 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_50_2 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_50_3 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_50_4 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_50_5 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_50_6 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_50_7 2 3 3 1 1

wait
python3 evaluation.py QLHEFT change_NumNode new_100_60_0 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_100_60_1 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_100_60_2 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_100_60_3 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_100_60_4 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_100_60_5 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_100_60_6 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_100_60_7 2 3 3 1 1

wait
python3 evaluation.py QLHEFT change_NumNode new_200_0 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_200_1 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_200_2 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_200_3 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_200_4 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_200_5 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_200_6 2 3 3 1 1 &
python3 evaluation.py QLHEFT change_NumNode new_200_7 2 3 3 1 1


wait
# Proposed
python3 evaluation.py Proposed change_NumNode new_20_0 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_20_1 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_20_2 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_20_3 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_20_4 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_20_5 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_20_6 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_20_7 2 3 3 1 1

wait
python3 evaluation.py Proposed change_NumNode new_50_0 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_50_1 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_50_2 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_50_3 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_50_4 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_50_5 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_50_6 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_50_7 2 3 3 1 1

wait
python3 evaluation.py Proposed change_NumNode new_100_60_0 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_100_60_1 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_100_60_2 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_100_60_3 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_100_60_4 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_100_60_5 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_100_60_6 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_100_60_7 2 3 3 1 1

wait
python3 evaluation.py Proposed change_NumNode new_200_0 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_200_1 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_200_2 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_200_3 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_200_4 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_200_5 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_200_6 2 3 3 1 1 &
python3 evaluation.py Proposed change_NumNode new_200_7 2 3 3 1 1

wait
python3 order_name.py change_NumNode