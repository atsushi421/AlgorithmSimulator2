# -*- coding: utf-8 -*-


class Core:
    # ＜コンストラクタ＞
    def __init__(self):
        self.idle = True  # idle=True : このコアがアイドル状態
        self.processing_node = -1  # 処理中のノード番号
        self.remain_process = 0  # 残処理時間
    

class Cluster:
    # ＜コンストラクタ＞
    def __init__(self, num_of_core):
        # コアを用意
        self.core = []  # このクラスタ内にあるコア
        for i in range(num_of_core):
            self.core.append(Core())
            

class ClusteredManyCoreProcesser:
    # ＜コンストラクタ＞
    def __init__(self, num_of_cluster, num_of_core):
        # プロセッサを形成
        self.cluster = []  # このプロセッサ内にあるクラスタ
        for i in range(num_of_cluster):
            self.cluster.append(Cluster(num_of_core))