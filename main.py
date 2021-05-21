# -*- coding: utf-8 -*-


from class_DAG import DAG
from class_Kalray import ClusteredManyCoreProcesser
from class_Scheduler import Scheduler


dag1 = DAG("test_nine_task")

kalray = ClusteredManyCoreProcesser(4,2,3)

sl = [1,2]

scheduler = Scheduler(sl, dag1, kalray)
