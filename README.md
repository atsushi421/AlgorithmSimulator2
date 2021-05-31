# AlgorithmSimulator2

## Overview
AlgorithmSimulator2 evaluates the performance of the algorithms on various parameters.

The following algorithms are currently supported.
- HEFT
- QL-HEFT
- Proposed algorithm
  - [System Model](https://github.com/atsushi421/AlgorithmSimulator2/files/6567110/system_model_ver2.pdf)


## Usage
1. Create a directory to store the results.
   - `./result/"evaluation_name"/"algorithm_name"`
   - ![image](https://user-images.githubusercontent.com/55824710/120088871-0320bc00-c130-11eb-9eb9-b6597b587042.png)

2. Use the following commands depending on the evaluation you want to get.
   - `bash change_CCR.sh`
     - Evaluation of varying CCR of the input DAG.
     - CCR varies as [0.25, 0.5, 1.0, 2.0, 4.0].
   - `bash change_InoutRatio.sh`
     - Evaluation of varying the ratio of communication time outside the CC to communication time inside the CC for processors allocated tasks.
     - The ratio varies as [1.5, 3.0, 6.0, 12.0, 24.0]
   - `bash change_NumCore.sh`
     - Evaluation of varying the number of cores in a single CC for processors allocated tasks.
     - The number of cores varies as [2, 3, 4, 5]
   - `bash change_NumNode.sh`
     - Evaluation of varying the number of tasks in the input DAG.
     - The number of tasks varies as [20, 50, 100, 200]
   - `bash random.sh` & `python eva_AcceptanceRatio.py`
     - Evaluation of acceptance ratio in 50 random DAGs.


## Other Files Description
- **./DAG/~.tgff** - Information about the DAGs.
- **class_ClusteredManyCore.py** - Processor to which the task is allocated.
- **class_DAG.py** - Input DAG.
- **class_Scheduler.py** - Scheduler which allocates input DAGs to the processor.
- **class_Q_learning.py** - Use Q-learning to obtain the optimal policy.
- **class_Proposed.py** - Proposed algorithm.
- **HEFT.py** - HEFT algorithm.
- **QLHEFT.py** - QL-HEFT algorithm.
- **evaluation.py** - Evaluate according to the inputted parameters.
- **order_name.py** - Sort the evaluation results.
