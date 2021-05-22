# -*- coding: utf-8 -*-


def HEFT(dag):
    scheduling_list = []
    temp = []
    
    for i in range(len(dag.ranku)):
        temp.append([i, dag.ranku[i]])
    
    temp = sorted(temp, reverse=True, key=lambda x: x[1])  # 昇順にソート
    
    for i in range(len(temp)):
        scheduling_list.append(temp[i][0])
    
    return scheduling_list