# -*- coding: utf-8 -*-


class Core:
    # ＜コンストラクタ＞
    def __init__(self):
        '''
        idle=True : このコアがアイドル状態
        processing_node : 処理中のノード番号
        remain_process : 残処理時間
        finish_time : 処理終了時刻
        '''
        self.idle = True
        self.processing_node = -1
        self.remain_process = 0
        self.finish_time = -1
    
    
    # ＜メソッド＞
    # 処理を1秒進める
    def advance_time(self):
        if(self.idle == False):
            self.remain_process-=1
            if(self.remain_process == 0):
                self.__init__()
    


class Cluster:
    # ＜コンストラクタ＞
    def __init__(self, num_of_core):
        '''
        num_of_core : 1クラスタ内のコア数
        self.core[] : クラスタ内にあるコア
        '''
        
        self.num_of_core = num_of_core
        # コアを用意
        self.core = []
        for i in range(self.num_of_core):
            self.core.append(Core())
    
    
    # ＜メソッド＞
    # 処理を1秒進める
    def advance_time(self):
        for i in range(self.num_of_core):
            self.core[i].advance_time()
    
    # クラスタに空きがあればそのコア番号, そうでなければ-1
    def idle_core(self):
        for i in range(self.num_of_core):
            if(self.core[i].idle == True):
                return i
        
        return -1
            


class ClusteredManyCoreProcesser:
    # ＜クラス変数＞
    current_time = 0  # 現在時刻
    
    
    # ＜コンストラクタ＞
    def __init__(self, num_of_cluster, num_of_core):
        '''
        num_of_cluster : プロセッサ内のクラスタ数
        num_of_core : 1クラスタ内のコア数
        cluster = [] : このプロセッサ内にあるクラスタ
        '''
        
        self.num_of_cluster = num_of_cluster
        self.num_of_core = num_of_core
        # プロセッサを形成
        self.cluster = []
        for i in range(self.num_of_cluster):
            self.cluster.append(Cluster(self.num_of_core))
    
    
    # ＜メソッド＞
    # 処理を1進める
    def advance_time(self):
        ClusteredManyCoreProcesser.current_time+=1
        
        for i in range(self.num_of_cluster):
            self.cluster[i].advance_time()