This is the original version of list scheduling algorithm. It has scheudling, configuration, verification mixed together.
As a result, it is really slow especially when the DFG has larger scale. Meanwhile, since there are quite a few simplification 
in the scheduling, it can achive trifle acceleration. In this case, I have both issues that have been done and issues that will
be done in next step listed here for future reference.

Strategies that have been done:
1. Parameterized DFG generation
2. DFG vertex priority allocation
3. Physical shortest path selection
4. Approximately Shortest transmission path selection
5. Scheduling operation first and then PE
6. Component activity record
7. Component content record
8. Scheduling correctness verification
9. Arbitrary CGRA topology
10. Single port data memory in PE(write and read share a single port.)
11. Single PE output port
12. Activity, content and execution result check
13. Try to reduce overhead of PE state copy and resume by limiting the time scale and node scale 
14. Choose PE based on buffer utilization which reduce the scheduling time dramatically
15. Provide input port /output port /dsp pipeline /data memory utilization of the scheduling
16. All the input operands are stored in multipe PEs
17. Store and then Forward transmission mode instead of directly moving from source to destination
18. Add memory port to allow write and read at the same time
19. Add multiple read port to data meory in PE
20. Decide running bottlneck of the program
21. Add PE selection filter to the PEselection to reduce iteration times

Strategies that will be done:
2. More read/write ports for data memeory in PE
5. Separation of scheduling and verification
6. Best topology search
7. Multiple interconnection instead of broadcast/1 to M mux in PE port
8. Try to use registers in PE to optimize data transmission using component trace
9. PE scheduling and then operation scheduling
11.Leave multiple copy of a single data in different PEs which help to reduce communication time.

