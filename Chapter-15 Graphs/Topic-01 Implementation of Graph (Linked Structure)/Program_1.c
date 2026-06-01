/*C Program to implement a graph data structure using the linked structure method, by allocating memory dynamically from heap (free store), i.e. we are going to
use the linked allocation (where the neighbours of the nodes are stored in a linked list data structure) with dynamic array for storing node numbers of nodes*/

/*Including stdio.h header file for using standard input/output functions,
stdlib.h header file for using dynamic memory management functions, limit.h
header file for using predefined max and min limits of data types and
generic_map.h file for using user defined custom unordered map*/
#include<stdio.h>
#include<stdlib.h>
#include<limits.h>
#include "generic_map.h"

/*Typedefining long long unsigned int as llui and short unsigned int as sui, and defining
an enum to store integer constants for type of data which is going to be stored*/
typedef long long unsigned int llui; typedef short unsigned int sui;
enum dataType{intData, doubleData, charData};

/*Defining a global variable of long long unsigned int (for capacity), a generic structure for storing the data
in the graph data structure, another structure for implementing the doubly linked list data structure for
implementing the linked representation of the graph and a pointer to point to the first element of the graph*/
long long unsigned int capacity;

/*Defining a generic structure which we will be using to store the data in the graph, this structure will
contain a void pointer to the data type, the size of the data type that we are going to store in graph,
a pointer to the function(s) which will be used to initialize the members of this generic structure and
a pointer to an array which we will be using to store the initial references to the nodes of graph*/
typedef struct Data{
    /*Declaring members of the structure: void* for pointer to the data type, size_t for storing the size of
    the data type, data type and void (*fptr)(void, size_t) for pointing to the function for initialization*/
    void* val; size_t sizeOfVal; enum dataType dT; void (*fptr)(void*, size_t);
} Data;

/*Function to create a new node of the struct Data type and populating it's various fields*/
Data* initStructDataNode(enum dataType dt, size_t givenSize, void (*funcPtr)(void*, size_t))
{
    /*Dynamically allocating memory for the node of the struct Data type and populating it's various fields
    after checking whether the allocation remained successful or not, if not then returning nullptr*/
    Data* dPtr=(Data*)malloc(sizeof(Data)); if(!dPtr){printf("Memory allocation for data node failed\n"); return NULL;}

    /*Populating fields of the newly created struct Data node with the given values, and then calling
    the function whose address is stored in the given funcPtr pointer for initializing the val field*/
    dPtr->sizeOfVal=givenSize; dPtr->val=(void*)malloc(dPtr->sizeOfVal);
    if(!(dPtr->val)){printf("Memory allocation for val pointer failed\n"); return NULL;}
    dPtr->dT=dt; dPtr->fptr=funcPtr; (*(dPtr->fptr))(dPtr->val, dPtr->sizeOfVal); return dPtr;
}

/*--------------------------------------------Defining various functions for initialization--------------------------------------------*/
/*Function for initializing the val field of the Data node with the int/double/char value given by user*/
void initDataNodewithINT(void* value, size_t sz){printf("Enter the integer value for data node:"); scanf("%d", (int*)value);}
void initDataNodewithDOB(void* value, size_t sz){printf("Enter the double value for data node:"); scanf("%lf", (double*)value);}
void initDataNodewithCHAR(void* value, size_t sz){printf("Enter the char value for data node:"); scanf(" %c", (char*)value);}
/*--------------------------------------------End of declaration of initialization functions--------------------------------------------*/

/*Forward declarations of structures*/
typedef struct GraphNode graphNode;
typedef struct AdjNeigh AdjNeigh;

/*Declaring a structure for storing the neighbors nodes of a graph node, this structure will contain
a variable of graphNode type and pointer to structure of it's own type(self referential structure)*/
struct AdjNeigh{
    /*Declaring members of the structure: graphNode* for pointer to the graph node of graph,
    and pointer to struct AdjNeigh type variable to store the next neighbors of current node*/
    graphNode* vertex; AdjNeigh* next;
};

/*Declaring a structure for storing the nodes of the graph, this structure will be used for implementing
adjacency list representation of the graph by storing data and list of neighbor nodes for current data*/
struct GraphNode{
    /*Declaring members of the structure: Data* for pointer to the data node of the graph,
    and pointer to struct AdjNeigh type variable to store the neighbors of current node*/
    Data* dt; AdjNeigh* adj;
};

/*Function to initialize adj node by populating it's various fields*/
AdjNeigh* initAdjNeigh(graphNode* vtx)
{
    /*Dynamically allocating memory for AdjNeigh type structure, checking for memory allocation
    if memory allocation failed then we'll return NULL otherwise populating it's various fields*/
    AdjNeigh* aN=(AdjNeigh*)malloc(sizeof(AdjNeigh));
    if(!aN){printf("Memory allocation failed for adjoing neighbor node\n"); return NULL;}
    aN->vertex=vtx; aN->next=NULL; return aN;
}

/*Function to initialize graph node by populating fields of graphNode structure, with the given parameters*/
graphNode* initStructGraphNode(Data* dataNode)
{
    /*Dynamically allocating memory for GraphNode type structure, checking for memory allocation
    if memory allocation failed then we'll return NULL otherwise populating it's various fields*/
    graphNode* gN=(graphNode*)malloc(sizeof(graphNode));
    if(!gN){printf("Memory allocation failed for graph node\n"); return NULL;}
    gN->dt=dataNode; gN->adj=NULL; return gN;
}

/*Function to check whether the destination node is present in adjacency list of source node or not*/
short edgeExists(graphNode* src, graphNode* dest)
{
    /*Searching the destination graph node in the adjacency list representation of the source node*/
    AdjNeigh* temp=src->adj; while(temp){if(temp->vertex==dest) return 1; temp=temp->next;} return 0;
}

/*Declaring two pointers: one head pointer for storing address of first element of the array of graph, and
an iterator pointer for iterating each element of linked list which will be used at the time of creation*/
graphNode** GN; graphNode* iterPtr;

/*Function to implement graph data structure using the user defined custom unordered map*/
short unsigned int createGraph(enum dataType type)
{
    /*Getting the input for capacity variable from user*/
    printf("Enter the capacity/number of nodes in graph:");
    scanf("%llu", &capacity);

    /*User is instructed to enter the capacity less than ULLONG_MAX to avoid wrap around
    otherwise the result will not be as predicted because of the wrap around property,
    writing a basic check but it won't be evaluated because of the wrap around property*/
    if(capacity>ULLONG_MAX || capacity<0)
    {
        printf("Invalid user input for capacity!\n");
        return 0;
    }

    /*Handling corner case: when capacity is zero*/
    if(capacity==0) {printf("Graph is empty!\n"); return 0;}

    /*Checking the type which the user has passed to this function and on the basis of that
    we are going to get the size field and function pointer field of the data node of graph*/
    size_t dataSize; void (*initFunc)(void*, size_t);
    switch(type)
    {
        /*Checking whether the type passed by user was integer, double or char*/
        case intData: dataSize=sizeof(int); initFunc=initDataNodewithINT; break;
        case doubleData: dataSize=sizeof(double); initFunc=initDataNodewithDOB; break;
        case charData: dataSize=sizeof(char); initFunc=initDataNodewithCHAR; break;

        /*Default case: when type mismatch occurs, in that case we'll return 0*/
        default: return 0;
    }

    /*Initializing GN array to store the nodes along with their neighbor nodes
    and running a for loop to create linked lists for neighbors of nodes of graphs*/
    GenericMap* graphMap=map_create(); void* dummy; Data* dtTemp;
    GN=(graphNode**)malloc(capacity*sizeof(graphNode*));
    if(!GN){printf("Memory allocation for graph array failed!\n"); return 0;}

    /*Running a loop to get the elements of graph from user*/
    printf("Enter the elements of graph:\n");
    for(long long unsigned int i=0; i<capacity; i++)
    {
        printf("Enter element %llu of graph:\n", i);
        dtTemp=initStructDataNode(type, dataSize, initFunc);
        if(!dtTemp) return 0; GN[i]=initStructGraphNode(dtTemp); if(!GN[i]) return 0;
        map_put(&graphMap, &i, sizeof(llui), GN[i], sizeof(graphNode*));
    }

    /*Running a loop for each node of the graph(for each element of the array)
    and asking user for the neighbor nodes of the current node of the graph*/
    for(long long unsigned int iter=0; iter<capacity; iter++)
    {
        /*Getting the neighbor count for current node from user as input and then populating the adjacency
        list of the current node with the self referential linked list representation of the nodes*/
        llui neighCnt; printf("\nEnter number of neighbours of node %llu:", iter); scanf("%llu", &neighCnt);

        /*Getting user input for the neighbor node of the current node, searching it in map and putting
        it into adjacency list of current node along with putting current node in adjacency list of neighbor*/
        for(long long unsigned int j=0; j<neighCnt; j++)
        {
            /*Getting user input for neighbor node index and searching it in the unordered map*/
            llui neighIdx; printf("Enter neighbour index %llu:", j+1); scanf("%llu", &neighIdx);
            if(neighIdx==iter || neighIdx>=capacity){printf("Invalid neighbour index\n"); continue;}

            /*Fetching neighbour graph node from map and validating it(in case it doesn't exist)*/
            void* nH=NULL; map_get(graphMap, &neighIdx, sizeof(llui), &nH);
            if(!nH){printf("Neighbour node not found\n"); continue;}
            graphNode* neighNode=(graphNode*)nH;

            /*Inserting neighbor node into adjacency list of current node and vice-versa (after checking)*/
            if(!edgeExists(GN[iter], neighNode))
            {  
                /*Inserting neighbor node into adjacency list of current node and vice-versa*/
                AdjNeigh* temp=initAdjNeigh(neighNode); if(!temp) return 0;
                temp->next=GN[iter]->adj; GN[iter]->adj=temp;
                AdjNeigh* reverse = initAdjNeigh(GN[iter]); if(!reverse) return 0;
                reverse->next=neighNode->adj; neighNode->adj=reverse;
            }
        }
    }

    /*Returning one to indicate that the graph creation was successful*/
    return 1;
}

/*Function to print a particular data type passed as argument to this function*/
void printDT(Data* dN)
{
    /*Checking which data type we need to print using the switch case statement*/
    switch(dN->dT)
    {
        /*Checking which data type has been passed to function for printing*/
        case intData: printf("%d", *(int*)(dN->val)); break;
        case doubleData: printf("%lf", *(double*)(dN->val)); break;
        case charData: printf("%c", *(char*)(dN->val)); break;
    }
}

/*Function to print the nodes of graph along with their neighbor nodes*/
void printGraph(graphNode** startNode)
{
    /*Iterating each node of the given graph and for each node we are going
    to print the neighbor nodes of the current node of the given graph*/
    for(long long unsigned int iter=0; iter<capacity; iter++)
    {
        /*Printing the current node, getting the reference of next neighbor node
        and iterating the adjacency linked list to iterate the neighbor nodes*/
        printf("\nNode %llu of graph is:", iter); printDT(startNode[iter]->dt); printf("\n");
        
        /*Printing the neighbor nodes of the current node*/
        printf("Neighbor nodes of node %llu are: ", iter);
        AdjNeigh* ngbd=startNode[iter]->adj;
        while(ngbd){printDT((ngbd->vertex)->dt); printf(" "); ngbd=ngbd->next;}
    }printf("\n");
}

/*Driver code(main function)*/
int main(void)
{
    /*Checking whether the graph creation remained successful or not,
    if yes then only we are going to print the nodes of graph else no*/
    if(createGraph(0))
    {
        /*Printing the message of success to screen and calling printGraph
        function to print the nodes of graph along with neighbor nodes*/
        printf("Successfully created graph!\n"); printGraph(GN);
    }
    else printf("Graph creation failed!\n");
    return 0;
}