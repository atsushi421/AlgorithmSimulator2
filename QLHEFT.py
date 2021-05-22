# -*- coding: utf-8 -*-


from class_DAG import one_entry_DAG
from class_Q_learning import Q_learning


def QLHEFT(dag, target):
    one_entry_dag = one_entry_DAG(dag.file_name)  # one_entry_DAG に変換
    # 通信時間を平均にする
    for i in range(one_entry_dag.num_of_node):
        for j in range(one_entry_dag.num_of_node):
            one_entry_dag.edge[i][j] = int((one_entry_dag.edge[i][j] + (one_entry_dag.edge[i][j] * target.inout_ratio)) / 2)
    
    q_learning = Q_learning(1.0, 0.8, one_entry_dag)
    q_learning.learning()
    
    scheduling_list = []
    
    current_state = one_entry_dag.ve_index  # 初期状態は仮想entryノード
    finish_nodes = [one_entry_dag.ve_index]  # 仮想entryノードは選択済み
    wait_nodes = []
    wait_nodes += q_learning.check_succ(current_state, finish_nodes, wait_nodes)
    
    for k in range(one_entry_dag.num_of_node - 1):
        
        max_q_value = 0  # 現在の状態における行動価値の最大値を格納
        max_value_action = 0  # 行動価値が最大のノード

        for wait_n in wait_nodes:
            if(q_learning.q_sa[current_state][wait_n] >= max_q_value):
                max_q_value = q_learning.q_sa[current_state][wait_n]  # 行動価値の最大値を更新
                max_value_action = wait_n

        selected_node = max_value_action  # 行動価値が最大の行動を選択
        wait_nodes.remove(max_value_action)
        finish_nodes.append(max_value_action)
        current_state = max_value_action
        wait_nodes += q_learning.check_succ(current_state, finish_nodes, wait_nodes)
    
    scheduling_list = finish_nodes
    scheduling_list.remove(one_entry_dag.ve_index)  # 仮想entryノードを削除
    
    return scheduling_list