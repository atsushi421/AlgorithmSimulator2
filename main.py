# -*- coding: utf-8 -*-


from class_DAG import DAG
from class_DAG import one_entry_DAG
from class_ClusteredManyCore import ClusteredManyCoreProcesser
from HEFT import HEFT
from QLHEFT import QLHEFT
from class_Proposed import Proposed
from class_Q_learning import Q_learning
from class_Scheduler import Scheduler


dag1 = DAG("new_100_1")
target = ClusteredManyCoreProcesser(2,2,3)

#sl_heft = HEFT(dag1, target)

#sl_ql = QLHEFT(dag1, target)

proposed = Proposed(dag1, target)
sl_proposed = proposed.best_scheduling_list()




#sl = HEFT.HEFT(dag2)
#sl.remove(dag2.ve_index)

dag2 = DAG("new_100_1")
scheduler = Scheduler(sl_proposed, dag2, target)
scheduler.schedule()
scheduler.print_result_node()
scheduler.print_result_core()
print(scheduler.makespan())