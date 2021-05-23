# -*- coding: utf-8 -*-


from class_DAG import DAG


def HEFT(dag, target):
    temp_dag = DAG(dag.file_name)
    
    # 通信時間を平均にする 
    for i in range(temp_dag.num_of_node):
        for j in range(temp_dag.num_of_node):
            temp_dag.edge[i][j] = int((dag.edge[i][j] + (dag.edge[i][j] * target.inout_ratio)) / 2)
    
    # rankuを再計算
    temp_dag.ranku = [0] * temp_dag.num_of_node  # 初期化
    for i in range(temp_dag.num_of_node):
        if(temp_dag.entry[i] == 1):
            temp_dag.ranku_calc(i)
    
    scheduling_list = []
    temp = []
    
    for i in range(len(temp_dag.ranku)):
        temp.append([i, temp_dag.ranku[i]])
    
    temp = sorted(temp, reverse=True, key=lambda x: x[1])  # 昇順にソート
    
    for i in range(len(temp)):
        scheduling_list.append(temp[i][0])
    
    return scheduling_list