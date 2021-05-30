# -*- coding: utf-8 -*-


import sys

from class_DAG import DAG
from class_DAG import one_entry_DAG
from class_ClusteredManyCore import ClusteredManyCoreProcesser
from HEFT import HEFT
from QLHEFT import QLHEFT
from class_Proposed import Proposed
from class_Q_learning import Q_learning
from class_Scheduler import Scheduler


class Evaluater:
    # ＜コンストラクタ＞
    def __init__(self, args):
        '''
        ALGORITHM_NAME : 使用するアルゴリズム
        EVA_NAME : 評価名
        TARGET : 対象のプロセッサ
        DAG : 対象のDAG
        LOG_PATH : ログファイルへのパス
        RESULT_PATH : 結果を書き込むファイルへのパス
        '''
        self.ALGORITHM_NAME = args[1]
        self.EVA_NAME = args[2]
        self.TARGET = ClusteredManyCoreProcesser(int(args[4]), int(args[5]), float(args[6]))
        self.DAG = DAG(args[3])
        self.update_dag(float(args[7]), float(args[8]))
        self.LOG_PATH = "./result/" + self.EVA_NAME + "/" + self.ALGORITHM_NAME + "/log/" + self.DAG.file_name + "_" + str(self.TARGET.num_of_cluster) + "_" + str(self.TARGET.num_of_core) + "_" + ("{:.2f}".format(self.DAG.CCR)) + ".txt"
        self.write_param()
        self.RESULT_PATH = self.set_result_path(float(args[7]), float(args[8]))
        self.evaluate()
    
    
    # ＜メソッド＞
    # アルゴリズム名に基づいて評価を行う
    def evaluate(self):
        scheduling_list = []
        
        if(self.ALGORITHM_NAME == "HEFT"):
            scheduling_list = HEFT(self.DAG, self.TARGET)
            scheduler = Scheduler(scheduling_list, self.DAG, self.TARGET)
            
            # 結果を書き込み
            f = open(self.RESULT_PATH, "a")
            f.write(self.DAG.file_name + "\t" + str(scheduler.makespan()) + "\n")
            f.close()
        
        if(self.ALGORITHM_NAME == "QLHEFT"):
            scheduling_list = QLHEFT(self.DAG, self.TARGET)
            scheduler = Scheduler(scheduling_list, self.DAG, self.TARGET)
            
            # 結果を書き込み
            f = open(self.RESULT_PATH, "a")
            f.write(self.DAG.file_name + "\t" + str(scheduler.makespan()) + "\n")
            f.close()
        
        if(self.ALGORITHM_NAME == "Proposed"):
            proposed = Proposed(self.DAG, self.TARGET)
            scheduling_list = proposed.best_scheduling_list()
            scheduler = Scheduler(scheduling_list, self.DAG, self.TARGET)
            
            # 結果を書き込み
            f = open(self.RESULT_PATH, "a")
            f.write(self.DAG.file_name + "\t" + str(scheduler.makespan()) + "\n")
            f.close()
            
    
    # FACTORに基づいてDAGを更新
    def update_dag(self, factor_edge, factor_node):
        for i in range(self.DAG.num_of_node):
            for j in range(self.DAG.num_of_node):
                self.DAG.edge[i][j] = int(self.DAG.edge[i][j] * factor_edge)
        for i in range(self.DAG.num_of_node):
            self.DAG.node[i] = int(self.DAG.node[i] * factor_node)
        
        # rankuの再計算
        self.DAG.ranku = [0] * self.DAG.num_of_node  # 初期化
        for i in range(self.DAG.num_of_node):
            if(self.DAG.entry[i] == 1):
                self.DAG.ranku_calc(i)
        
        self.DAG.ccr_calc()  # CCRの再計算
    
    
    # 評価名に基づいて, result_path を決める
    def set_result_path(self, factor_edge, factor_node):
        if(self.EVA_NAME == "change_CCR"):
            if(factor_edge == 0.8 and factor_node == 2):
                return "./result/change_CCR/" + self.ALGORITHM_NAME + "/CCR_0.25.txt"
            if(factor_edge == 1 and factor_node == 1.3):
                return "./result/change_CCR/" + self.ALGORITHM_NAME + "/CCR_0.5.txt"
            if(factor_edge == 1.5 and factor_node == 1):
                return "./result/change_CCR/" + self.ALGORITHM_NAME + "/CCR_1.0.txt"
            if(factor_edge == 2 and factor_node == 0.7):
                return "./result/change_CCR/" + self.ALGORITHM_NAME + "/CCR_2.0.txt"
            if(factor_edge == 3 and factor_node == 0.5):
                return "./result/change_CCR/" + self.ALGORITHM_NAME + "/CCR_4.0.txt"
        
        if(self.EVA_NAME == "change_InoutRatio"):
            return "./result/change_InoutRatio/" + self.ALGORITHM_NAME + "/InoutRatio_" + str(self.TARGET.inout_ratio) + ".txt"
        
        if(self.EVA_NAME == "change_NumCore"):
            return "./result/change_NumCore/" + self.ALGORITHM_NAME + "/NumCore_" + str(self.TARGET.num_of_core) + ".txt"
        
        if(self.EVA_NAME == "change_NumNode"):
            if('20_' in self.DAG.file_name):
                return "./result/change_NumNode/" + self.ALGORITHM_NAME + "/NumNode_20.txt"
            if('50_' in self.DAG.file_name):
                return "./result/change_NumNode/" + self.ALGORITHM_NAME + "/NumNode_50.txt"
            if('100_' in self.DAG.file_name):
                return "./result/change_NumNode/" + self.ALGORITHM_NAME + "/NumNode_100.txt"
            if('200_' in self.DAG.file_name):
                return "./result/change_NumNode/" + self.ALGORITHM_NAME + "/NumNode_200.txt"
        
        if(self.EVA_NAME == "random"):
            return "./result/random/" + self.ALGORITHM_NAME + "/random.txt"

    
    # 評価パラメータをログに書き込む
    def write_param(self):
        f = open(self.LOG_PATH, "w")
        f.write("＜評価パラメータ＞\n")
        f.write("DAG_name    : " + args[3] + ".tgff\n")
        f.write("NUM_OF_CC   : " + args[4] + "\n")
        f.write("NUM_OF_CORE : " + args[5] + "\n")
        f.write("inout_ratio : " + args[6] + "\n")
        f.write("factor_edge : " + args[7] + "\n")
        f.write("factor_node : " + args[8] + "\n")
        f.write("CCR         : " + str(self.DAG.CCR) + "\n")
        f.write("\n")
        f.close()



'''
args[1] : 使用するアルゴリズム. [HEFT, QLHEFT, Proposed]
args[2] : 評価名. [change_CCR, change_InoutRatio, change_NumCore, change_NumNode]
args[3] : 実行するDAGのファイル名
args[4] : クラスタ数
args[5] : 1クラスタ内のコア数
args[6] : クラスタ外の通信時間とクラスタ内の通信時間の比率
args[7] : すべてのedgeに掛ける係数
args[8] : すべてのnodeに掛ける係数
'''
args = sys.argv
Evaluater(args)