# -*- coding: utf-8 -*-


from class_DAG import DAG
from class_Kalray import ClusteredManyCoreProcesser
import HEFT
from class_Scheduler import Scheduler


dag1 = DAG("test_nine_task")

target = ClusteredManyCoreProcesser(1,2,3)

sl = HEFT.HEFT(dag1)

scheduler = Scheduler(sl, dag1, target)
scheduler.schedule()
scheduler.print_result_node()
scheduler.print_result_core()