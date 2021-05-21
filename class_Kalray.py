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
        print(Hello)