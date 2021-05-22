# -*- coding: utf-8 -*-


from class_DAG import DAG
from class_DAG import one_entry_DAG
from class_ClusteredManyCore import ClusteredManyCoreProcesser
import HEFT
import QLHEFT
from class_Proposed import Proposed
from class_Q_learning import Q_learning
from class_Scheduler import Scheduler


dag1 = DAG("test_nine_task")
target = ClusteredManyCoreProcesser(1,3,3)

proposed = Proposed(dag1, target)
sl = proposed.best_scheduling_list()

print(sl)



#sl = HEFT.HEFT(dag2)
#sl.remove(dag2.ve_index)

scheduler = Scheduler(sl, dag1, target)
scheduler.schedule()
scheduler.print_result_node()
scheduler.print_result_core()
print(scheduler.makespan())