# -*- coding: utf-8 -*-


def QLHEFT(dag, Q_learning):
    scheduling_list = []
    
    current_state = dag.ve_index  # 初期状態は仮想entryノード
    finish_nodes = [dag.ve_index]  # 仮想entryノードは選択済み
    wait_nodes = []
    wait_nodes += Q_learning.check_succ(current_state, finish_nodes, wait_nodes)
    
    for k in range(dag.num_of_node - 1):
        
        max_q_value = 0  # 現在の状態における行動価値の最大値を格納
        max_value_action = 0  # 行動価値が最大のノード

        for wait_n in wait_nodes:
            if(Q_learning.q_sa[current_state][wait_n] >= max_q_value):
                max_q_value = Q_learning.q_sa[current_state][wait_n]  # 行動価値の最大値を更新
                max_value_action = wait_n

        selected_node = max_value_action  # 行動価値が最大の行動を選択
        wait_nodes.remove(max_value_action)
        finish_nodes.append(max_value_action)
        current_state = max_value_action
        wait_nodes += Q_learning.check_succ(current_state, finish_nodes, wait_nodes)
    
    scheduling_list = finish_nodes
    scheduling_list.remove(dag.ve_index)  # 仮想entryノードを削除
    
    return scheduling_list