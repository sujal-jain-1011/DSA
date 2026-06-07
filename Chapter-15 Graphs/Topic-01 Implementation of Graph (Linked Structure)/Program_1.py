"""Python Program to implement a graph data structure using the linked structure method, by allocating memory dynamically from heap (free store), i.e. we are going to
use the linked allocation (where the neighbours of the nodes are stored in a linked list data structure) with dynamic array for storing node numbers of nodes"""

"""Importing Enum class from enum submodule and defining a class to
store integer constants for type of data which is going to be stored"""
from enum import Enum
from tokenize import Double
class DataType(Enum):
    #Defining integer constants for data types
    INT, DOUBLE, CHAR=0, 1, 2

#Defining a class which will contain the metadata and functions related to graph
class Graph:
    
        """Defining a data member of long long unsigned int(ish) (for capacity), a generic class for storing the data
        in the graph data structure, another class for implementing the doubly linked list data structure for
        implementing the linked representation of the graph and a pointer to point to the first element of the graph"""
        def __init__(self):
            self.capacity, self.GN=0, []

        """Defining a generic class which we will be using to store the data in the graph, this class will
        contain a value field for the value of the node in the graph and data type of the corresponding value"""
        class Data:

            """Declaring members of the structure: void* for pointer to the data type, size_t for storing the size of
            the data type, data type and void (*fptr)(void, size_t) for pointing to the function for initialization"""
            def __init__(self, value, dtype):
                self.val, self.dT=value, dtype

        #--------------------------------------------Defining various member functions for initialization--------------------------------------------
        #Members function of class: for initializing the val field of the Data node with the int/double/char value given by user
        @staticmethod
        def initDataNodewithINT():
            return int(input("Enter the integer value for data node:"))
        def initDataNodewithDOB():
            return float(input("Enter the integer value for data node:"))
        def initDataNodewithCHAR():
            return (input("Enter the integer value for data node:"))[0]
        #--------------------------------------------End of declaration of initialization member functions--------------------------------------------

        #Member function of class: to create a new node of the struct Data type and populating it's various fields
        def initStructDataNode(self, dtype): 
            """Checking the data type passed by user and returning the object of data class to the caller"""
            if dtype==DataType.INT:
                value=self.initDataNodewithINT()
            elif dtype==DataType.DOUBLE:
                value=self.initDataNodewithDOB()
            elif dtype==DataType.CHAR:
                value=self.initDataNodewithCHAR()
            else:
                return None
            return self.Data(value, dtype)
            
        """Declaring a class for storing the neighbors nodes of a graph node, this structure will contain
        a variable of graphNode type and pointer to class of it's own type(self referential class)"""
        class AdjNeigh:

            """Declaring members of the class: graphNode* for pointer to the graph node of graph,
            and pointer to class AdjNeigh type variable to store the next neighbors of current node"""
            def __init__(self, vtx):
                self.vertex, self.next=vtx, None

        """Declaring a structure for storing the nodes of the graph, this structure will be used for implementing
        adjacency list representation of the graph by storing data and list of neighbor nodes for current data"""
        class GraphNode:

            """Declaring members of the class: Data* for pointer to the data node of the graph,
            and pointer to class AdjNeigh type variable to store the neighbors of current node"""
            def __init__(self, data_node):
                self.dt, self.adj=data_node, None

        #Member function of class: to initialize adj node by populating it's various fields
        def initAdjNeigh(self, vtx):
            #Returning object of AdjNeigh class
            return self.AdjNeigh(vtx)

        #Member function to initialize graph node by populating fields of graphNode class, with the given parameters
        def initStructGraphNode(self, data_node):
            #Returning object of GraphNode class
            return self.GraphNode(data_node)

        #Member function of class: to check whether the destination node is present in adjacency list of source node or not
        def edgeExists(self, src, dest):
            #Searching the destination graph node in the adjacency list representation of the source node
            temp=src.adj
            while(temp):
                if(temp.vertex==dest):
                    return True
                temp=temp.next
            return False
    
        #Member function of class: to implement graph data structure using the user defined custom unordered map
        def createGraph(self, dtype):
            #Getting the input for capacity variable from user
            self.capacity=int(input("Enter the capacity/number of nodes in graph:"))

            #Checking whether the capacity entered by user is valid or not
            if(self.capacity<0):
                print("Invalid user input for capacity!")
                return False

            #Handling corner case: when capacity is zero
            if(self.capacity==0):
                print("Graph is empty!")
                return False

            """Initializing GN array to store the nodes along with their neighbor nodes
            and running a for loop to create linked lists for neighbors of nodes of graphs"""
            graphMap, self.GN={}, [None]*self.capacity
            
            #Running a loop to get the elements of graph from user
            print("Enter the elements of graph:")
            for i in range(self.capacity):
                print(f"Enter element {i} of graph:")
                data_node=self.initStructDataNode(dtype)
                if(not(data_node)):
                    return False
                graph_node=self.initStructGraphNode(data_node)
                self.GN[i], graphMap[i]=graph_node, graph_node

            """Running a loop for each node of the graph(for each element of the array)
            and asking user for the neighbor nodes of the current node of the graph"""
            for iter in range(self.capacity):
                """Getting the neighbor count for current node from user as input and then populating the adjacency
                list of the current node with the self referential linked list representation of the nodes"""
                neighCnt=int(input(f"\nEnter number of neighbours of node {iter}:"))

                """Getting user input for the neighbor node of the current node, searching it in map and putting
                it into adjacency list of current node along with putting current node in adjacency list of neighbor"""
                for j in range(neighCnt):
                    #Getting user input for neighbor node index and searching it in the unordered map
                    neighIdx=int(input(f"Enter neighbour index {j+1}:"))
                    if(neighIdx==iter or neighIdx>=self.capacity):
                        print("Invalid neighbour index")
                        continue

                    #Fetching neighbour graph node from map and validating it(in case it doesn't exist)
                    neighNode=graphMap.get(neighIdx)
                    if(not(neighNode)):
                        print("Neighbour node not found")
                        continue

                    #Inserting neighbor node into adjacency list of current node and vice-versa (after checking)
                    if(not(self.edgeExists(self.GN[iter], neighNode))):
                        #Inserting neighbor node into adjacency list of current node and vice-versa
                        temp=self.initAdjNeigh(neighNode)
                        if(not(temp)):
                            return False
                        temp.next=self.GN[iter].adj
                        self.GN[iter].adj=temp
                        reverse=self.initAdjNeigh(self.GN[iter])
                        if(not(reverse)):
                            return False
                        reverse.next=neighNode.adj
                        neighNode.adj=reverse

            #Returning true to indicate that the graph creation was successful
            return True

        #Function to print a particular data type passed as argument to this function
        def printDT(self, data_node):
            #Printing the value of the data
            print(data_node.val, end=" ")
        
        #Function to print the nodes of graph along with their neighbor nodes
        def printGraph(self):
            """Iterating each node of the given graph and for each node we are going
            to print the neighbor nodes of the current node of the given graph"""
            for iter in range(self.capacity):
                """Printing the current node, getting the reference of next neighbor node
                and iterating the adjacency linked list to iterate the neighbor nodes"""
                print(f"\nNode {iter} of graph is:", end="")
                self.printDT(self.GN[iter].dt)
                print()
                
                #Printing the neighbor nodes of the current node
                print(f"Neighbor nodes of node {iter} are: ", end=" ")
                ngbd=self.GN[iter].adj
                while(ngbd):
                    self.printDT((ngbd.vertex).dt)
                    print(end="")
                    ngbd=ngbd.next
                print()

#Driver code
#Creating object of Graph class and using it to access member function
gH=Graph()
    
"""Checking whether the graph creation remained successful or not,
if yes then only we are going to print the nodes of graph else no"""
if(gH.createGraph(DataType.INT)):
    """Printing the message of success to screen and calling printGraph
    function to print the nodes of graph along with neighbor nodes"""
    print("Successfully created graph!")
    gH.printGraph()
else:
    print("Graph creation failed!")