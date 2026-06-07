/*Java Program to implement a graph data structure using the linked structure method, by allocating memory dynamically from heap (free store), i.e. we are going to
use the linked allocation (where the neighbours of the nodes are stored in a linked list data structure) with dynamic array for storing node numbers of nodes
and we are also going to print the depth first search traversal of the given graph using the recursive approach (it can be implemented using stack as well)*/

/*Including Scanner class for taking input from user and HashMap
class for using unordered map (for storing graph node references)*/
import java.util.Scanner;
import java.util.HashMap;

/*Defining an enum to store integer constants for type of data which is going to be stored
and declaring an interface for the functional reference which will be implemented by Graph class*/
enum dataType{intData, doubleData, charData};
@FunctionalInterface interface InitFuncion{Object initialize();}

/*Defining a class which will contain the metadata and functions related to graph*/
class Graph{
    /*Defining a data member of long int (for capacity), a generic class for storing the data in the
    graph data structure, another structure for implementing the doubly linked list data structure for
    implementing the linked representation of the graph and a pointer to point to the first element of graph*/
    private long capacity; Scanner sc=new Scanner(System.in);

    /*Defining a generic structure which we will be using to store the data in the graph, this structure will
    contain a Object reference to the data type, the size of the data type that we are going to store in graph,
    a reference to the method of the InitFunction interface which is going to be implemented in this class
    and a reference to an array which we will be using to store the initial references to the nodes of graph*/
    private static class Data{
        /*Declaring members of the structure: Object for reference to the data type, size_t for storing the size of
        the data type, data type and reference to method of InitFunction for pointing to the function for initialization*/
        Object val; int sizeOfVal; dataType dT; InitFuncion fptr;

        /*Constructor of class for initializing data members of class*/
        Data(dataType dt, int sz, InitFuncion func){dT=dt; sizeOfVal=sz; fptr=func; val=fptr.initialize();}
    }

    /*Declaring a class for storing the neighbors nodes of a graph node, this class will contain
    a variable of graphNode type and pointer to structure of it's own type(self referential structure)*/
    private class AdjNeigh{
        /*Declaring members of the structure: GraphNode for reference to the graph node of graph,
        and reference to class AdjNeigh type variable to store the next neighbors of current node*/
        GraphNode vertex; AdjNeigh next;

        /*Constructor of class for initializing data members of class*/
        AdjNeigh(GraphNode vtx){vertex=vtx; next=null;}
    };

    /*Declaring a class for storing the nodes of the graph, this class will be used for implementing
    adjacency list representation of the graph by storing data and list of neighbor nodes for current data*/
    private class GraphNode{
        /*Declaring members of the structure: Data for reference to the data node of the graph,
        and pointer to struct AdjNeigh type variable to store the neighbors of current node*/
        Data dt; AdjNeigh adj;

        /*Constructor of class for initializing data members of class*/
        GraphNode(Data dataNode){dt=dataNode; adj=null;}
    };

    /*--------------------------------------------Defining various Member functions for initialization--------------------------------------------*/
    /*Members function of class: for initializing the val field of the Data node with the int/double/char value given by user*/
    private Object initDataNodewithINT(){System.out.print("Enter the integer value for data node:");return sc.nextInt();}
    private Object initDataNodewithDOB(){System.out.print("Enter the double value for data node:");return sc.nextDouble();}
    private Object initDataNodewithCHAR(){System.out.print("Enter the character value for data node:");return sc.next().charAt(0);}
    /*--------------------------------------------End of declaration of initialization member functions--------------------------------------------*/

    /*Member function of class: to create a new node of the struct Data type and populating it's various fields*/
    private Data initStructDataNode(dataType type)
    {
        /*Calling constructor of Data class with the type passed by the user using switch case*/
        int dataSize; InitFuncion func;
        switch (type)
        {
            /*Declaring case for each data type: int, double and char and matching correct case*/
            case intData: dataSize=Integer.BYTES; func=this::initDataNodewithINT; break;
            case doubleData: dataSize=Double.BYTES; func=this::initDataNodewithDOB; break;
            case charData: dataSize=Character.BYTES; func=this::initDataNodewithCHAR; break;
            default: return null;
        } return new Data(type, dataSize, func);
    }

    /*Member function of class: to check whether the destination node is present in adjacency list of source node or not*/
    private boolean edgeExists(GraphNode src, GraphNode dest)
    {
        /*Searching the destination graph node in the adjacency list representation of the source node*/
        AdjNeigh temp=src.adj; while(temp!=null){if(temp.vertex==dest) return true; temp=temp.next;} return false;
    }

    /*Declaring two references: one head reference for storing array of nodes of graph, and an iterator
    reference for iterating each element of linked list which will be used at the time of creation*/
    GraphNode[] GN; GraphNode[] iterPtr; 

    /*Member function of class: to implement graph data structure using the user defined custom unordered map*/
    public boolean createGraph(dataType type)
    {
        /*Getting the input for capacity variable from user*/
        System.out.print("Enter the capacity/number of nodes in graph:");
        capacity=sc.nextLong();

        /*User is instructed to enter the capacity less than ULLONG_MAX to avoid wrap around
        otherwise the result will not be as predicted because of the wrap around property,
        writing a basic check but it won't be evaluated because of the wrap around property*/
        if(capacity>Long.MAX_VALUE || capacity<0)
        {
            System.out.println("Invalid user input for capacity!");
            return false;
        }

        /*Handling corner case: when capacity is zero*/
        if(capacity==0) {System.out.println("Graph is empty!"); return false;}

        /*Initializing GN array to store the nodes along with their neighbor nodes
        and running a for loop to create linked lists for neighbors of nodes of graphs*/
        HashMap<Long, GraphNode> graphMap=new HashMap<>();
        try{GN=new GraphNode[(int)capacity];}
        catch(OutOfMemoryError e){System.out.println("Memory allocation for graph array failed!");}

        /*Running a loop to get the elements of graph from user*/
        System.out.println("Enter the elements of graph:");
        for(long i=0; i<capacity; i++)
        {
            System.out.println("Enter element "+i+" of graph:");
            Data dtTemp=initStructDataNode(type);
            if(dtTemp==null) return false; GN[(int)i]=new GraphNode(dtTemp);
            if(GN[(int)i]==null) return false; graphMap.put(i, GN[(int)i]);
        }

        /*Running a loop for each node of the graph(for each element of the array)
        and asking user for the neighbor nodes of the current node of the graph*/
        for(long iter=0; iter<capacity; iter++)
        {
            /*Getting the neighbor count for current node from user as input and then populating the adjacency
            list of the current node with the self referential linked list representation of the nodes*/
            System.out.print("\nEnter number of neighbours of node "+iter+":"); long neighCnt=sc.nextLong();

            /*Getting user input for the neighbor node of the current node, searching it in map and putting
            it into adjacency list of current node along with putting current node in adjacency list of neighbor*/
            for(long j=0; j<neighCnt; j++)
            {
                /*Getting user input for neighbor node index and searching it in the unordered map*/
                System.out.print("Enter neighbour index "+(j+1)+":"); long neighIdx=sc.nextLong();
                if(neighIdx==iter || neighIdx>=capacity){System.out.println("Invalid neighbour index"); continue;}

                /*Fetching neighbour graph node from map and validating it(in case it doesn't exist)*/
                GraphNode neighNode=graphMap.get(neighIdx);
                if(neighNode==null){System.out.println("Neighbour node not found"); continue;}

                /*Inserting neighbor node into adjacency list of current node and vice-versa (after checking)*/
                if(!edgeExists(GN[(int)iter], neighNode))
                {  
                    /*Inserting neighbor node into adjacency list of current node and vice-versa*/
                    AdjNeigh temp=new AdjNeigh(neighNode); if(temp==null) return false;
                    temp.next=GN[(int)iter].adj; GN[(int)iter].adj=temp;
                    AdjNeigh reverse=new AdjNeigh(GN[(int)iter]); if(reverse==null) return false;
                    reverse.next=neighNode.adj; neighNode.adj=reverse;
                }
            }
        }

        /*Returning true to indicate that the graph creation was successful*/
        return true;
    }

    /*Member function of class: to print a particular data type passed as argument to this function*/
    private void printDT(Data dN)
    {
        /*Checking which data type we need to print using the switch case statement*/
        switch(dN.dT)
        {
            /*Checking which data type has been passed to function for printing*/
            case intData: System.out.print((Integer)dN.val); break;
            case doubleData: System.out.print((Double)dN.val); break;
            case charData: System.out.print((Character)dN.val); break;
        }
    }

    /*Member function of class: to print the nodes of graph along with their neighbor nodes*/
    public void printGraph(GraphNode[] startNode)
    {
        /*Iterating each node of the given graph and for each node we are going
        to print the neighbor nodes of the current node of the given graph*/
        for(long iter=0; iter<capacity; iter++)
        {
            /*Printing the current node, getting the reference of next neighbor node
            and iterating the adjacency linked list to iterate the neighbor nodes*/
            System.out.print("\nNode "+iter+" of graph is:"); printDT(startNode[(int)iter].dt); System.out.println();
            
            /*Printing the neighbor nodes of the current node*/
            System.out.print("Neighbor nodes of node "+iter+" are: ");
            AdjNeigh ngbd=startNode[(int)iter].adj;
            while(ngbd!=null){printDT((ngbd.vertex).dt); System.out.print(" "); ngbd=ngbd.next;}
        }System.out.println();
    }

    /*Member function of class: to print the depth first search traversal of the given
    graph this function is a helper function which will be called from dfs function*/
    void dfsHelper(GraphNode gNode, HashMap<Object, Boolean> vt)
    {
        /*Marking the current received node as visited, then checking for neighbor nodes and
        calling dfsHelper function for unvisited neighbor nodes of the current node of the graph*/
        vt.put((gNode.dt).val, true);
        printDT(gNode.dt); System.out.print(" "); AdjNeigh ngbd=gNode.adj;
        while(ngbd!=null)
        {
            /*Checking the status of neighbor node of the current node and if it is not already visited
            then we are going to call dfsHelper function to process this neighbor node of current node*/
            if(!vt.get(((ngbd.vertex).dt).val)) dfsHelper(ngbd.vertex, vt); ngbd=ngbd.next;
        }
    }

    /*Member function of class: to perform the depth first search traversal of the given graph*/
    void dfs(GraphNode[] start)
    {
        /*Declaring a map to store the status of the nodes of the graph: i.e.
        one if the node is already visited and zero if the node is not visited*/
        HashMap<Object, Boolean>visited=new HashMap<>();
        for(long it=0; it<capacity; it++) visited.put((start[(int)it].dt).val, false);

        /*Iterating every node/vertex of the given graph and for each node calling dfsHelper to print the
        dfs dfsHelper will be called only if the current node is not visited, if it is then continue/skip*/
        for(long iter=0; iter<capacity; iter++)
        {
            /*Getting the status of current node of graph from the map and calling dfsHelper if it is not visited*/
            if(!visited.get((start[(int)iter].dt).val)) dfsHelper(start[(int)iter], visited);
        }
    }
}

/*Driver code(Program_1 class)*/
public class Program_1
{
    /*Declaring main function of the class*/
    public static void main(String[] args)
    {
        /*Creating object of Graph class and using it to access member function*/
        Graph gH=new Graph();
        
        /*Checking whether the graph creation remained successful or not,
        if yes then only we are going to print the nodes of graph else no*/
        if(gH.createGraph(dataType.intData))
        {
            /*Printing the message of success to screen and calling printGraph
            function to print the nodes of graph along with neighbor nodes*/
            System.out.println("Successfully created graph!"); gH.printGraph(gH.GN);
            System.out.println("The DFS traversal of given graph is:"); gH.dfs(gH.GN); System.out.println();
        }
        else System.out.println("Graph creation failed!");
    }
}
