# -*- coding: utf-8 -*-


from class_DAG import DAG
from class_Kalray import ClusteredManyCoreProcesser


dag1 = DAG("test_nine_task")

kalray = ClusteredManyCoreProcesser(4,2)
print(kalray.cluster[0].core[0].idle)