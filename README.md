# RandomWalks
MATLAB implementation of various random walks including biased walks, lazy random walk, Levy flights, intermittent and some persistent (non-Markovian) walks on networks.   

The following is a list of MATLAB functions implementing various random walk strategies on networks-

1. rw.m: Standard random walk Input: Z: Adjacency Matrix
2. rwbi.m: Degree biased random walk with parameter of biasedness a.
3. rwlevy.m: Levy flights with exponent a.
4. rwnb.m: Random walk avoiding the previously visited node
5. rwnt.m: Random walk avoiding two previously visited nodes
6. rwnq.m: Random walk avoiding three previously visited nodes
7. rwlz.m: Lazy random walk with resting parameter a
8. rwin.m Intermitent random walk with jump parameter a

Inputs:
Z: Adjacency matrix
cur: Current node
n: size of the network
d: vector containing degrees of network
a: Appropriate parameter
p1: Previously visited node (last step)
p2: Previously visited node (2 steps) 
p3: Previously visited node (3 steps) 
D: Distance matrix
