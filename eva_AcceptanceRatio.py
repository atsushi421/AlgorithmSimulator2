# -*- coding: utf-8 -*-


import os
from class_DAG import DAG



# CPを取得
dag_names = []

f = open("./result/random/HEFT/random.txt", "r")
for line in f:
    line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
    dag_names.append((line_list[0]))
f.close()  

dags = []
cp = []  
    
for i in range(len(dag_names)):
    dags.append(DAG(dag_names[i]))
    
for i in range(len(dags)):
    cp.append(dags[i].cp_len())


# ＜評価＞
algorithm_names = ['HEFT', 'QLHEFT', 'Proposed']
parameters = ['1.0','1.025', '1.05', '1.075', '1.1', '1.125', '1.15', '1.175', '1.2', '1.225', '1.25', '1.275', '1.3', '1.325', '1.35', '1.375', '1.4', '1.425', '1.45', '1.475', '1.5', '1.525', '1.55', '1.575', '1.6']

for algorithm in algorithm_names:
    # 結果を取得
    result = []
    
    f = open("./result/random/" + algorithm + "/random.txt", "r")
    for line in f:
        line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
        result.append(int(line_list[1]))
    f.close()  
    
    for param in parameters:
        # デッドライン決め
        deadline = []
        
        for i in range(len(cp)):
            deadline.append(cp[i] * float(param))
        
        # AcceptanceRatio 計算
        accept = [0] * len(cp)  # デッドラインに間に合っていれば1. そうでなければ0
        num_of_accept = 0
        
        for i in range(len(cp)):
            if(result[i] <= deadline[i]):
                accept[i] = 1
                num_of_accept += 1
        
        acceptance_ratio = num_of_accept/len(cp)
        
        # 結果の書き込み
        result_path = "./result/AcceptanceRatio/" + algorithm + "/AcceptanceRatio.txt"
        f = open(result_path, "a")
        f.write(param + "\t" + str(acceptance_ratio) + "\n")
        f.close()
        