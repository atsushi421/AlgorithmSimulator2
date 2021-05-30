import os
import sys

# ~~評価名を受け取って、その評価結果をDAGナンバーの昇順に並べ替える~~ 
def order_result(evaluation_name):
    change_file_path = './result/' + evaluation_name
    algorithm_names = ['HEFT', 'QLHEFT', 'Proposed']
    
    # <change_CCR>
    if(evaluation_name == 'change_CCR'):
        
        parameters = ['CCR_0.25', 'CCR_0.5', 'CCR_1.0', 'CCR_2.0', 'CCR_4.0']
        
        for algorithm in algorithm_names:
            for param in parameters:
                path = change_file_path + '/' + algorithm + '/' + param + '.txt'
                file = open(path, 'r')  # ファイルを開く
                
                result = []  # 結果の情報を読み込む
                
                # ---- <<1行ずつ読み込む>> ----
                for line in file:
                    line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
                    
                    dag_info = line_list[0].split('_')  # .tgffのファイル名をアンダーバーを区切り文字として、分割
                    # -------- <<<dag_infoの最後の要素以外を復元>>> --------
                    except_dag_number = dag_info[0] + '_'  # DAG番号以外の情報
                    for i in range(1, len(dag_info) - 1):  # dag_infoの最後の要素以外を復元
                        except_dag_number = except_dag_number + dag_info[i] + '_'
                    # -------- <<<dag_infoの最後の要素以外を復元>>> --------
                    dag_number = int(dag_info[-1])  # dag_infoの最後の要素がDAG番号
                    makespan = int(line_list[1])
                    result.append([dag_number, makespan])
                # ---- <<1行ずつ読み込む>> ----
                
                file.close()  # ファイルを閉じる
                
                result = sorted(result, reverse=False, key=lambda x: x[0])  #[0]に注目してソート
                
                # ---- <<昇順に並び替えた結果を書き込む>> ----
                file = open(path, 'w')  # 書き込みモードで開く
                
                for i in range(len(result)):
                    file.write(except_dag_number + str(result[i][0]) + '\t' + str(result[i][1]) + '\n')
                
                file.close()
                # ---- <<昇順に並び替えた結果を書き込む>> ----
    # <change_CCR>
    
    # <change_corenum>
    if(evaluation_name == 'change_NumCore'):
        
        parameters = ['NumCore_2', 'NumCore_3', 'NumCore_4', 'NumCore_5']
        
        for algorithm in algorithm_names:
            for param in parameters:
                path = change_file_path + '/' + algorithm + '/' + param + '.txt'
                file = open(path, 'r')  # ファイルを開く
                
                result = []  # 結果の情報を読み込む
                
                # ---- <<1行ずつ読み込む>> ----
                for line in file:
                    line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
                    
                    dag_info = line_list[0].split('_')  # .tgffのファイル名をアンダーバーを区切り文字として、分割
                    # -------- <<<dag_infoの最後の要素以外を復元>>> --------
                    except_dag_number = dag_info[0] + '_'  # DAG番号以外の情報
                    for i in range(1, len(dag_info) - 1):  # dag_infoの最後の要素以外を復元
                        except_dag_number = except_dag_number + dag_info[i] + '_'
                    # -------- <<<dag_infoの最後の要素以外を復元>>> --------
                    dag_number = int(dag_info[-1])  # dag_infoの最後の要素がDAG番号
                    makespan = int(line_list[1])
                    result.append([dag_number, makespan])
                # ---- <<1行ずつ読み込む>> ----
                
                file.close()  # ファイルを閉じる
                
                result = sorted(result, reverse=False, key=lambda x: x[0])  #[0]に注目してソート
                
                # ---- <<昇順に並び替えた結果を書き込む>> ----
                file = open(path, 'w')  # 書き込みモードで開く
                
                for i in range(len(result)):
                    file.write(except_dag_number + str(result[i][0]) + '\t' + str(result[i][1]) + '\n')
                
                file.close()
                # ---- <<昇順に並び替えた結果を書き込む>> ----
    # <change_corenum>
    
    # <change_ratio>
    if(evaluation_name == 'change_InoutRatio'):
        
        parameters = ['InoutRatio_1.5', 'InoutRatio_3.0', 'InoutRatio_6.0', 'InoutRatio_12.0', 'InoutRatio_24.0']
        
        for algorithm in algorithm_names:
            for param in parameters:
                path = change_file_path + '/' + algorithm + '/' + param + '.txt'
                file = open(path, 'r')  # ファイルを開く
                
                result = []  # 結果の情報を読み込む
                
                # ---- <<1行ずつ読み込む>> ----
                for line in file:
                    line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
                    
                    dag_info = line_list[0].split('_')  # .tgffのファイル名をアンダーバーを区切り文字として、分割
                    # -------- <<<dag_infoの最後の要素以外を復元>>> --------
                    except_dag_number = dag_info[0] + '_'  # DAG番号以外の情報
                    for i in range(1, len(dag_info) - 1):  # dag_infoの最後の要素以外を復元
                        except_dag_number = except_dag_number + dag_info[i] + '_'
                    # -------- <<<dag_infoの最後の要素以外を復元>>> --------
                    dag_number = int(dag_info[-1])  # dag_infoの最後の要素がDAG番号
                    makespan = int(line_list[1])
                    result.append([dag_number, makespan])
                # ---- <<1行ずつ読み込む>> ----
                
                file.close()  # ファイルを閉じる
                
                result = sorted(result, reverse=False, key=lambda x: x[0])  #[0]に注目してソート
                
                # ---- <<昇順に並び替えた結果を書き込む>> ----
                file = open(path, 'w')  # 書き込みモードで開く
                
                for i in range(len(result)):
                    file.write(except_dag_number + str(result[i][0]) + '\t' + str(result[i][1]) + '\n')
                
                file.close()
                # ---- <<昇順に並び替えた結果を書き込む>> ----
    # <change_ratio>
    
    # <change_tasknum>
    if(evaluation_name == 'change_NumNode'):
        
        parameters = ['NumNode_20', 'NumNode_50', 'NumNode_100', 'NumNode_200']
        
        for algorithm in algorithm_names:
            for param in parameters:
                path = change_file_path + '/' + algorithm + '/' + param + '.txt'
                file = open(path, 'r')  # ファイルを開く
                
                result = []  # 結果の情報を読み込む
                
                # ---- <<1行ずつ読み込む>> ----
                for line in file:
                    line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
                    
                    dag_info = line_list[0].split('_')  # .tgffのファイル名をアンダーバーを区切り文字として、分割
                    # -------- <<<dag_infoの最後の要素以外を復元>>> --------
                    except_dag_number = dag_info[0] + '_'  # DAG番号以外の情報
                    for i in range(1, len(dag_info) - 1):  # dag_infoの最後の要素以外を復元
                        except_dag_number = except_dag_number + dag_info[i] + '_'
                    # -------- <<<dag_infoの最後の要素以外を復元>>> --------
                    dag_number = int(dag_info[-1])  # dag_infoの最後の要素がDAG番号
                    makespan = int(line_list[1])
                    result.append([dag_number, makespan])
                # ---- <<1行ずつ読み込む>> ----
                
                file.close()  # ファイルを閉じる
                
                result = sorted(result, reverse=False, key=lambda x: x[0])  #[0]に注目してソート
                
                # ---- <<昇順に並び替えた結果を書き込む>> ----
                file = open(path, 'w')  # 書き込みモードで開く
                
                for i in range(len(result)):
                    file.write(except_dag_number + str(result[i][0]) + '\t' + str(result[i][1]) + '\n')
                
                file.close()
                # ---- <<昇順に並び替えた結果を書き込む>> ----
    # <change_tasknum>
    
    # <random>
    if(evaluation_name == 'random'):
        
        parameters = ['random']
        
        for algorithm in algorithm_names:
            for param in parameters:
                path = change_file_path + '/' + algorithm + '/' + param + '.txt'
                file = open(path, 'r')  # ファイルを開く
                
                result = []  # 結果の情報を読み込む
                
                # ---- <<1行ずつ読み込む>> ----
                for line in file:
                    line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
                    
                    dag_info = line_list[0].split('_')  # .tgffのファイル名をアンダーバーを区切り文字として、分割
                    # -------- <<<dag_infoの最後の要素以外を復元>>> --------
                    except_dag_number = dag_info[0] + '_'  # DAG番号以外の情報
                    for i in range(1, len(dag_info) - 1):  # dag_infoの最後の要素以外を復元
                        except_dag_number = except_dag_number + dag_info[i] + '_'
                    # -------- <<<dag_infoの最後の要素以外を復元>>> --------
                    dag_number = int(dag_info[-1])  # dag_infoの最後の要素がDAG番号
                    makespan = int(line_list[1])
                    result.append([dag_number, makespan])
                # ---- <<1行ずつ読み込む>> ----
                
                file.close()  # ファイルを閉じる
                
                result = sorted(result, reverse=False, key=lambda x: x[0])  #[0]に注目してソート
                
                # ---- <<昇順に並び替えた結果を書き込む>> ----
                file = open(path, 'w')  # 書き込みモードで開く
                
                for i in range(len(result)):
                    file.write(except_dag_number + str(result[i][0]) + '\t' + str(result[i][1]) + '\n')
                
                file.close()
                # ---- <<昇順に並び替えた結果を書き込む>> ----
    # <random>
# ~~[評価名を受け取って、その評価結果をDAGナンバーの昇順に並べ替える]~~ 


# =====処理=====
args = sys.argv  #コマンドライン引数で、変更したい評価の結果を指定
change_result_evaluation_name = args[1]

order_result(change_result_evaluation_name)
# =====処理=====

