# -*- coding: utf-8 -*-


import pprint


# DAG
class DAG:
    # ＜コンストラクタ＞
    def __init__(self, file_tgff):
        self.num_of_node, self.node, self.edge, self.pred, self.succ, self.entry, self.exit = self.read_file_tgff(file_tgff)
        '''
        num_of_node : DAG内のノード数
        node[i] : niの実行時間
        edge[i][j] : ni~nj間の通信時間
        pred[i] : niの前任ノードのリスト
        succ[i] : niの後続ノードのリスト
        entry[i]=1 : niはentryノード. entry[i]=0 : niはentryノードではない
        exit[i]=1 : niはexitノード. exit[i]=0 : niはexitノードではない
        '''


    # ＜メソッド＞
    # .tgffファイルの読み込み
    def read_file_tgff(self, file_tgff):
        path = "./DAG/" + file_tgff + ".tgff"  # DAG直下にあることを想定
        file_tgff = open(path, "r")
        
        type_cost = []  # TYPEと実行時間の対応関係の配列
        read_flag = 0  # PE5の情報だけを読み込むためのフラグ
        info_flag = 0   #余計な部分を読み込まないためのフラグ
        
        for line in file_tgff:
            if(line == "\n"):
                continue  # 空行はスキップ
            
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            # 読み込む範囲を限定
            if(len(line_list) >= 2):
                if(line_list[0] == '@PE' and line_list[1] == '5'):
                    read_flag = 1

                if(line_list[1] == 'type' and line_list[2] == 'exec_time'):
                    info_flag = 1
                    continue
                
                # TYPEの情報取得
                if(read_flag == 1 and info_flag == 1):
                    type_cost.append(int(float(line_list[1])))  #TYPEに対応する実行時間をint型で格納
                    
            elif(line_list[0] == '}'):
                read_flag = 0
                info_flag = 0
        
        file_tgff.close()
        
        # TASKの情報の取得
        node = []
        file_tgff = open(path, "r")
        for line in file_tgff:
            if(line == "\n"):
                continue  # 空行はスキップ
            
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            if(line_list[0] == 'TASK'):
                node.append(type_cost[int(line_list[3])]) #line_list[3]がTYPEなので、それに対応する実行時間を格納
            
        file_tgff.close()
        
        num_of_node = len(node)  # タスク数を取得
        
        # ARC情報の取得
        edge = [[0 for j in range(num_of_node)] for i in range(num_of_node)]
        file_tgff = open(path, "r")
        for line in file_tgff:
            if(line == "\n"):
                continue  # 空行はスキップ
            
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            if(line_list[0] == 'ARC'):
                from_t = int(line_list[3][3:])  # エッジを出すタスク
                to_t = int(line_list[5][3:])  # エッジの先のタスク
                comm_cost = int(type_cost[int(line_list[7])])  # TYPEに書かれている時間を通信時間とする
                edge[from_t][to_t] = comm_cost
        file_tgff.close()
        
        # predを求める
        pred = [[] for i in range(num_of_node)]
        for in_node in range(num_of_node):
            for out_node in range(num_of_node):
                if(edge[in_node][out_node] != 0):  # エッジがあれば
                    pred[out_node].append(in_node)
        
        # succを求める
        succ = [[] for i in range(num_of_node)]
        for in_node in range(num_of_node):
            for out_node in range(num_of_node):
                if(edge[in_node][out_node] != 0):  # エッジがあれば
                    succ[in_node].append(out_node)
                    
        # entryノードを求める
        entry = [0] * num_of_node
        for i in range(num_of_node):
            if(len(pred[i]) == 0):
                entry[i] = 1
                
        # exitノードを求める
        exit = [0] * num_of_node
        for i in range(num_of_node):
            if(len(succ[i]) == 0):
                exit[i] = 1
        
        return num_of_node, node, edge, pred, succ, entry, exit


    # rankuの計算


    # プロパティの表示
    def print_num_of_node(self):
        print("num_of_node = ", end = "")
        print(self.num_of_node)
    
    def print_node(self):
        print("node = ", end = "")
        print(self.node)
        
    def print_edge(self):
        print("edge = ", end = "")
        pprint.pprint(self.edge)
    
    def print_pred(self):
        print("pred = ", end = "")
        pprint.pprint(self.pred)
    
    def print_succ(self):
        print("succ = ", end = "")
        pprint.pprint(self.succ)
    
    def print_entry(self):
        print("entry = ", end = "")
        print(self.entry)
        
    def print_exit(self):
        print("exit = ", end = "")
        print(self.exit)
    
    def print_all(self):
        self.print_num_of_node()
        self.print_node()
        self.print_edge()
        self.print_pred()
        self.print_succ()
        self.print_entry()
        self.print_exit()