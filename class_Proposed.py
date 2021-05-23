# -*- coding: utf-8 -*-


from class_DAG import one_entry_DAG
from class_Q_learning import Q_learning
from class_Scheduler import Scheduler
from class_ClusteredManyCore import ClusteredManyCoreProcesser
from QLHEFT import QLHEFT


class Proposed():
    # ＜コンストラクタ＞
    def __init__(self, dag, target):
        '''
        dag : dag
        one_entry_dag : dag を one_entry_dag に変換したもの
        on_entry_dag : 対象のone_entry_DAG
        target : 割り当て対象のプロセッサ
        scheduling_list : スケジューリングリスト
        best_makespan : 最短のメイクスパン
        '''
        
        self.dag = dag
        self.one_entry_dag = one_entry_DAG(self.dag.file_name)
        self.target = ClusteredManyCoreProcesser(target.num_of_cluster, target.num_of_core, target.inout_ratio)
        self.scheduling_list = QLHEFT(dag, self.target)
        self.scheduler = Scheduler(self.scheduling_list, self.dag, self.target)
        self.scheduler.schedule()
        print(self.scheduling_list)
        self.best_makespan = self.scheduler.makespan()
    
    
    # ＜メソッド＞
    # メイクスパンを最短にするスケジューリングリストを得る
    def best_scheduling_list(self):
        temp_makespan = 0
        
        while(temp_makespan < self.best_makespan):  # メイクスパンが短縮される限りループ
            num_diff = self.num_diff()
            print(num_diff)
            num_edge = self.num_edge()
            print(num_edge)
            
            # 通信時間を更新
            for i in range(self.dag.num_of_node):
                for j in range(self.dag.num_of_node):
                    self.one_entry_dag.edge[i][j] = int((self.dag.edge[i][j] * (1 - num_diff/num_edge)) + (self.dag.edge[i][j] * self.target.inout_ratio * (num_diff/num_edge)))
            
            # ranku を再計算
            self.one_entry_dag.ranku = [0] * self.one_entry_dag.num_of_node  # 初期化
            self.one_entry_dag.ranku_calc(self.one_entry_dag.ve_index)
            
            temp_scheduling_list = self.re_get()
            target = ClusteredManyCoreProcesser(self.target.num_of_cluster, self.target.num_of_core, self.target.inout_ratio)
            temp_scheduler = Scheduler(temp_scheduling_list, self.dag, target)
            temp_scheduler.schedule()
            temp_makespan = temp_scheduler.makespan()
            
            # 結果の判定
            if(temp_makespan < self.best_makespan):
                self.best_makespan = temp_makespan
                self.scheduling_list = temp_scheduling_list
        
        return self.scheduling_list
                
    
    
    # スケジューリング結果から,　クラスタ外の通信回数を取得
    def num_diff(self):
        num_diff = 0
        
        for n in range(self.dag.num_of_node):
            for pred_n in self.dag.pred[n]:
                if(self.scheduler.result_node[pred_n][0] != self.scheduler.result_node[n][0]):
                    num_diff+=1
        
        return num_diff
    
    
    # dagのエッジの数を返す
    def num_edge(self):
        num_edge = 0  # DAGのエッジの総数
        
        for i in range(self.dag.num_of_node):
            for j in range(self.dag.num_of_node):
                if(self.dag.edge[i][j] != 0):  # エッジがあれば
                    num_edge += 1
        
        return num_edge
    
    
    # 学習し, スケジューリングリストを得る
    def re_get(self):
        temp_scheduling_list = []
        q_learning = Q_learning(1.0, 0.8, self.one_entry_dag)
        q_learning.learning()
        
        current_state = self.one_entry_dag.ve_index  # 初期状態は仮想entryノード
        finish_nodes = [self.one_entry_dag.ve_index]  # 仮想entryノードは選択済み
        wait_nodes = []
        wait_nodes += q_learning.check_succ(current_state, finish_nodes, wait_nodes)
        
        for k in range(self.one_entry_dag.num_of_node - 1):
            
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
        
        temp_scheduling_list = finish_nodes
        temp_scheduling_list.remove(self.one_entry_dag.ve_index)  # 仮想entryノードを削除
        
        return temp_scheduling_list