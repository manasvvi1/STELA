List<String> expNo = ["1", "2", "3", "4(a)", "4(b)", "5", "6", "7"];

List<String> aim = [
  "Write prolog program for solving Tower of Hanoi Problem",
  "Write a Prolog program for solving Monkey-Banana Problem. A hungry monkey is in a room, and he is near the door. The monkey is on the floor. Bananas have been hung from the center of the ceiling of the room. There is a block (or chair) present in the room near the window. The monkey wants the banana, but cannot reach it. How Monkey can get the Banana?",
  "Write a prolog program for your own family tree.",
  "Write a LISP function to compute the nth Fibonacci number",
  "Write a LISP Program to implement Pattern Matching",
  "Solve Farmer, wolf, goat and cabbage problem using LISP",
  "Perform operations on Vector and Matrix using R Programming",
  "Perform operations on Lists, Factors and Data frames using R Programming"
];

List<String> procedure = [
  "The Tower of Hanoi (also called the Tower of Brahma or Lucas' Tower and pyramid puzzle ) is a mathematical game or puzzle consisting of three rods and a number of disks of various diameters, which can slide onto any rod. These rings are of different sizes and stacked upon in an ascending order, i.e. the smaller one sits over the larger one. We mark three towers with name, source, destination and intermediate (only to help moving the disks). The objective of the puzzle is to move the entire stack to the last rod, obeying the following rules: \n Only one disk can be moved among the towers at any given time. \n Only the \"top\" disk can be removed. \n No large disk can sit over a small disk. \nTower of Hanoi puzzle with n disks can be solved in minimum 2^3-1 steps. This presentation shows that a puzzle with 3 disks has taken 2^3-1 = 7 steps. To write an algorithm for Tower of Hanoi, first we need to learn how to solve this problem with lesser amount of disks. If we have only one disk, then it can easily be moved from source to destination peg. The following diagram depicts the starting setup for N=3 disks.The procedure for moving the disks when n = 3 is as follows: \n Move top disk from source to target \n Move top disk from source to intermediate \n Move top disk from target to intermediate \n Move top disk from source to target \n Move top disk from intermediate to source \n Move top disk from intermediate to target \n Move top disk from source to target",
  "The monkey and banana problem is a famous toy problem in artificial intelligence, particularly in logic programming and planning. The ‘monkey world’ always is in some state that can be changed in time. The current state is determined by the positions of the objects. Monkey’s possible actions \n walk on the floor \n push the box around if it is already at the box \n grasp the banana if standing on the box directly under the banana \n climb the box \nThe following few movements can be made in this situation − \n Monkey can reach the block, if both of them are at the same level. Both the monkey and the block are on the floor. \n If the block position is not at the center, then monkey can drag it to the center. \n If monkey and the block both are on the floor, and block is at the center, then the monkey can climb up on the block. So the vertical position of the monkey will be changed. \n When the monkey is on the block, and block is at the center, then the monkey can get the bananas. \nAnother predicate will be canget(). Here we pass a state, so this will perform move predicate from one state to another using different actions, then perform canget() on state 2. When we have reached to the state ‘has>’, this indicates ‘has banana’. We will stop the execution.",

];

List<String> algorithm = [
  "Step 1 − Move n-1 disks from source to intermediate\nStep 2 − Move nth disk from source to target\nStep 3 − Move n-1 disks from intermediate to target",
  "",
];

List<String> program = [
  "move(1,S,T,_) :- \nwrite('Move top disk from '), write(S), write(' to '), write(T), nl. \nmove(N,S,T,I) :- \nN>1, M is N-1, \nmove(M,S,I,T), \nmove(1,S,T,_), \nmove(M,I,T,S).",
  "move(state(middle,onbox,middle,hasnot), \ngrasp, \nstate(middle,onbox,middle,has)). \nmove(state(P,onfloor,P,H), \nclimb, \nstate(P,onbox,P,H)). \nmove(state(P1,onfloor,P1,H), \npush(P1,P2), \nstate(P2,onfloor,P2,H)). \nmove(state(P1,onfloor,B,H), \nwalk(P1,P2), \nstate(P2,onfloor,B,H)). \ncanget(state(_,_,_,has)). \ncanget(State1) :- \nmove(State1,_,State2), \ncanget(State2)."
];

List<String> result = [
  "The above program gives the required steps to move the disks from the source tower to the target tower using intermediate tower.",
  "The above program finds how monkey can get banana using programming"
];