# -*- coding: utf-8 -*-


from class_DAG import DAG
from class_DAG import one_entry_DAG
from class_ClusteredManyCore import ClusteredManyCoreProcesser
import HEFT
from class_Scheduler import Scheduler


dag1 = DAG("test_nine_task")
dag1.print_all()
dag2 = one_entry_DAG("test_nine_task")
dag2.print_all()

target = ClusteredManyCoreProcesser(1,3,3)

sl = HEFT.HEFT(dag2)
sl.remove(dag2.ve_index)

scheduler = Scheduler(sl, dag1, target)
scheduler.schedule()
scheduler.print_result_node()
scheduler.print_result_core()