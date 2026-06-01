/*C++ Program to implement a graph data structure using the linked structure method, by allocating memory dynamically from heap (free store), i.e. we are going to
use the linked allocation (where the neighbours of the nodes are stored in a linked list data structure) with dynamic array for storing node numbers of nodes
and we are also going to print the breadth first search traversal of the given graph using the custom queue data structure declared separately in a file*/

/*Including iostream header file for using standard input/output functions,
new header file for using dynamic memory management functions, limit.h
header file for using predefined max and min limits of data types and
unordered map file for using user defined custom unordered map and
queue to use queue data structure for storing nodes of graph*/
#include<iostream>
#include<new>
#include<limits.h>
#include<unordered_map>
#include<queue>

/*Using standard namespace to avoid specifying namespace again and again*/
using namespace std;

/*Typedefining long long unsigned int as llui and short unsigned int as sui, and defining
an enum to store integer constants for type of data which is going to be stored*/
typedef long long unsigned int llui; typedef short unsigned int sui;
enum dataType{intData, doubleData, charData};

/*Defining a class which will contain the metadata and functions related to graph*/
class Graph{
    
    /*Private data member and member functions of class: metadata of the graph*/
    private:
        /*Defining a data member of long long unsigned int (for capacity), a generic structure for storing the data
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

        /*Member function of class: to create a new node of the struct Data type and populating it's various fields*/
        Data* initStructDataNode(enum dataType dt, size_t givenSize, void (*funcPtr)(void*, size_t))
        {
            /*Dynamically allocating memory for the node of the struct Data type and populating it's various fields
            after checking whether the allocation remained successful or not, if not then returning nullptr*/
            Data* dPtr=(new (nothrow) Data); if(!dPtr){cout<<"Memory allocation for data node failed"<<endl; return nullptr;}

            /*Populating fields of the newly created struct Data node with the given values, and then calling
            the function whose address is stored in the given funcPtr pointer for initializing the val field*/
            dPtr->sizeOfVal=givenSize; dPtr->val=operator new(dPtr->sizeOfVal, std::nothrow);
            if(!(dPtr->val)){cout<<"Memory allocation for val pointer failed"<<endl; return nullptr;}
            dPtr->dT=dt; dPtr->fptr=funcPtr; (*(dPtr->fptr))(dPtr->val, dPtr->sizeOfVal); return dPtr;
        }

        /*--------------------------------------------Defining various Member functions for initialization--------------------------------------------*/
        /*Members function of class: for initializing the val field of the Data node with the int/double/char value given by user*/
        static void initDataNodewithINT(void* value, size_t sz){cout<<"Enter the integer value for data node:"; cin>>(*((int*)value));}
        static void initDataNodewithDOB(void* value, size_t sz){cout<<"Enter the double value for data node:"; cin>>(*((double*)value));}
        static void initDataNodewithCHAR(void* value, size_t sz){cout<<"Enter the char value for data node:"; cin>>(*((char*)value));}
        /*--------------------------------------------End of declaration of initialization member functions--------------------------------------------*/

        /*Forward declarations of structures*/
        struct GraphNode; struct AdjNeigh; typedef GraphNode graphNode;

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

        /*Member function of class: to initialize adj node by populating it's various fields*/
        AdjNeigh* initAdjNeigh(graphNode* vtx)
        {
            /*Dynamically allocating memory for AdjNeigh type structure, checking for memory allocation
            if memory allocation failed then we'll return NULL otherwise populating it's various fields*/
            AdjNeigh* aN=new (nothrow)AdjNeigh;
            if(!aN){cout<<"Memory allocation failed for adjoing neighbor node"<<endl; return nullptr;}
            aN->vertex=vtx; aN->next=nullptr; return aN;
        }

        /*Member function to initialize graph node by populating fields of graphNode structure, with the given parameters*/
        graphNode* initStructGraphNode(Data* dataNode)
        {
            /*Dynamically allocating memory for GraphNode type structure, checking for memory allocation
            if memory allocation failed then we'll return NULL otherwise populating it's various fields*/
            graphNode* gN=new (nothrow)graphNode;
            if(!gN){cout<<"Memory allocation failed for graph node"<<endl; return nullptr;}
            gN->dt=dataNode; gN->adj=NULL; return gN;
        }

        /*Member function of class: to check whether the destination node is present in adjacency list of source node or not*/
        bool edgeExists(graphNode* src, graphNode* dest)
        {
            /*Searching the destination graph node in the adjacency list representation of the source node*/
            AdjNeigh* temp=src->adj; while(temp){if(temp->vertex==dest) return true; temp=temp->next;} return false;
        }

    public:
        /*Declaring two pointers: one head pointer for storing address of first element of the array of graph, and
        an iterator pointer for iterating each element of linked list which will be used at the time of creation*/
        graphNode** GN; graphNode* iterPtr;    
    
        /*Member function of class: to implement graph data structure using the user defined custom unordered map*/
        bool createGraph(enum dataType type)
        {
            /*Getting the input for capacity variable from user*/
            cout<<"Enter the capacity/number of nodes in graph:";
            cin>>capacity;

            /*User is instructed to enter the capacity less than ULLONG_MAX to avoid wrap around
            otherwise the result will not be as predicted because of the wrap around property,
            writing a basic check but it won't be evaluated because of the wrap around property*/
            if(capacity>ULLONG_MAX || capacity<0)
            {
                cout<<"Invalid user input for capacity!"<<endl;
                return false;
            }

            /*Handling corner case: when capacity is zero*/
            if(capacity==0) {cout<<"Graph is empty!"<<endl; return false;}

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
                default: return false;
            }

            /*Initializing GN array to store the nodes along with their neighbor nodes
            and running a for loop to create linked lists for neighbors of nodes of graphs*/
            unordered_map<llui, graphNode*> graphMap; void* dummy; Data* dtTemp;
            GN=new (nothrow) graphNode*[capacity];
            if(!GN){cout<<"Memory allocation for graph array failed!"<<endl; return false;}

            /*Running a loop to get the elements of graph from user*/
            cout<<"Enter the elements of graph:"<<endl;
            for(long long unsigned int i=0; i<capacity; i++)
            {
                cout<<"Enter element "<<i<<" of graph:"<<endl;
                dtTemp=initStructDataNode(type, dataSize, initFunc);
                if(!dtTemp) return false; GN[i]=initStructGraphNode(dtTemp); if(!GN[i]) return false;
                graphMap[i]=GN[i];
            }

            /*Running a loop for each node of the graph(for each element of the array)
            and asking user for the neighbor nodes of the current node of the graph*/
            for(long long unsigned int iter=0; iter<capacity; iter++)
            {
                /*Getting the neighbor count for current node from user as input and then populating the adjacency
                list of the current node with the self referential linked list representation of the nodes*/
                llui neighCnt; cout<<"\nEnter number of neighbours of node "<<iter<<":"; cin>>neighCnt;

                /*Getting user input for the neighbor node of the current node, searching it in map and putting
                it into adjacency list of current node along with putting current node in adjacency list of neighbor*/
                for(long long unsigned int j=0; j<neighCnt; j++)
                {
                    /*Getting user input for neighbor node index and searching it in the unordered map*/
                    llui neighIdx; cout<<"Enter neighbour index "<<j+1<<":"; cin>>neighIdx;
                    if(neighIdx==iter || neighIdx>=capacity){cout<<"Invalid neighbour index"<<endl; continue;}

                    /*Fetching neighbour graph node from map and validating it(in case it doesn't exist)*/
                    graphNode* nH=graphMap[neighIdx];
                    if(!nH){cout<<"Neighbour node not found"<<endl; continue;}
                    graphNode* neighNode=nH;

                    /*Inserting neighbor node into adjacency list of current node and vice-versa (after checking)*/
                    if(!edgeExists(GN[iter], neighNode))
                    {  
                        /*Inserting neighbor node into adjacency list of current node and vice-versa*/
                        AdjNeigh* temp=initAdjNeigh(neighNode); if(!temp) return false;
                        temp->next=GN[iter]->adj; GN[iter]->adj=temp;
                        AdjNeigh* reverse = initAdjNeigh(GN[iter]); if(!reverse) return false;
                        reverse->next=neighNode->adj; neighNode->adj=reverse;
                    }
                }
            }

            /*Returning true to indicate that the graph creation was successful*/
            return true;
        }

        /*Function to print a particular data type passed as argument to this function*/
        void printDT(Data* dN)
        {
            /*Checking which data type we need to print using the switch case statement*/
            switch(dN->dT)
            {
                /*Checking which data type has been passed to function for printing*/
                case intData: cout<<*(int*)(dN->val); break;
                case doubleData: cout<<*(double*)(dN->val); break;
                case charData: cout<<*(char*)(dN->val); break;
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
                cout<<"\nNode "<<iter<<" of graph is:"; printDT(startNode[iter]->dt); cout<<endl;
                
                /*Printing the neighbor nodes of the current node*/
                cout<<"Neighbor nodes of node "<<iter<<" are: ";
                AdjNeigh* ngbd=startNode[iter]->adj;
                while(ngbd){printDT((ngbd->vertex)->dt); cout<<" "; ngbd=ngbd->next;}
            }cout<<endl;
        }

        /*Member function of class: /*Function to print the breadth first search traversal of the given graph*/
        void bfs(graphNode** start)
        {
            /*Declaring a map to store the status of the nodes of the graph: i.e.
            one if the node is already visited and zero if the node is not visited*/
            unordered_map<void*, bool> visited;
            for(llui it=0; it<capacity; it++) visited[(start[it]->dt)->val]=false;

            /*Creating a queue data structure to store the neighbor nodes of current node and
            initializing it with the zero indexed node to start breadth first search traversal*/
            queue<graphNode*> que;
            for(long long unsigned int iter=0; iter<capacity; iter++)
            {
                /*Checking whether the current node of graph is visited or not, if not then enqueue*/
                if(!visited[(start[iter]->dt)->val])
                {
                    /*Marking the current unvisited node as visited and pushing it into queue*/
                    visited[(start[iter]->dt)->val]=true; que.push(start[iter]);
                    while(!que.empty())
                    {
                        /*Getting and removing front element of the queue and iterating neighbor nodes
                        and checking whether the neighbor nodes are visited or not, if not then push*/
                        graphNode* curr=que.front(); que.pop();
                        AdjNeigh* ptr=curr->adj; printDT(curr->dt); cout<<" ";
                        while(ptr)
                        {
                            /*Checking whether the current neighbor node is already visited or not, if not then pushing
                            into the queue else we are going to skip the current node, since it is already visited*/
                            if(!visited[(start[iter]->dt)->val])
                            {
                                /*Pushing the unvisited node into queue and marking the current neighbor node visited*/
                                que.push((ptr->vertex)); visited[(start[iter]->dt)->val]=true;
                            }
                            ptr=ptr->next; 
                        }
                    }
                }
            }
        }
};

/*Driver code(main function)*/
int main(void)
{
    /*Creating object of Graph class and using it to access member function*/
    Graph gH;
    
    /*Checking whether the graph creation remained successful or not,
    if yes then only we are going to print the nodes of graph else no*/
    if(gH.createGraph(dataType::intData))
    {
        /*Printing the message of success to screen and calling printGraph
        function to print the nodes of graph along with neighbor nodes*/
        cout<<"Successfully created graph!"<<endl; gH.printGraph(gH.GN);
        cout<<"The BFS traversal of given graph is:"<<endl; gH.bfs(gH.GN); cout<<endl;
    }
    else cout<<"Graph creation failed!"<<endl;
    return 0;
}