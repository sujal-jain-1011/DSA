/*C program to implement a binary tree by allocating memory dynamically from the heap,
that means we are going to create a complete binary tree using queue data structure and
we are going to print the diagonal traversal of the binary tree using user defined map*/

/*Including limits.h header file for using ULLONG_MAX, stdio.h header file for input
and output functions, stdlib.h header file for memory allocation functions, including
user defined generic_map.h header file for using unordered map here and we are also
going to include pair.h header file for using user defined pair data structure*/
#include<limits.h>
#include<stdio.h>
#include<stdlib.h>
#include "generic_map.h"
#include "pair.h"

/*Typedefining long long unsigned int as llui*/
typedef long long unsigned int llui;

/*Defining some global variables: capacity variable of long long unsigned int type for the capacity of binary tree,
front and rear variables of long long unsigned int type for the front and rear indices of the queue, a root pointer to
store the address of the root node of the binary tree, a ptr pointer to traverse the binary tree for it's creation
and a queue pointer to store the address of the first cell that will be created to implement the queue data structure*/
long long unsigned int capacity, front=ULLONG_MAX, rear=ULLONG_MAX;

/*Defining a structure for binary tree node that contains data, left and right child pointers
and defining a function that will create a new node for the binary tree when called*/
struct TreeNode{
    int val;
    struct TreeNode* left;
    struct TreeNode* right;
};
struct TreeNode* root;
struct TreeNode* ptr; 
struct TreeNode** que;

/*Function to create a new node for the binary tree and returning it*/
struct TreeNode* createTreeNode(int data)
{
    /*Dynamically allocating memory for the new node using malloc function and checking if the memory allocation was
    successful if it was, then populating the node with the data passed to function and returning it's address*/
    struct TreeNode* newTreeNode=(struct TreeNode*)malloc(sizeof(struct TreeNode));
    if(newTreeNode==NULL)
    {
        printf("Memory allocation failed for node of binary tree!\n");
        return NULL;
    }
    
    /*Assigning the data passed to function to the val field of the new
    node and initializing the left and right child pointers to NULL*/
    newTreeNode->val=data;
    newTreeNode->left=NULL;
    newTreeNode->right=NULL;

    /*Returning the newly created node*/
    return newTreeNode;
}

/*Function to implement circular queue data structure that will be used to create a complete binary tree
this function is going to take no arguments since we can directly access the capacity global variable*/
short unsigned int implementCircularQueue()
{
    /*Allocating memory dynamically to create an array for implementing circular queue
    data structure and checking if the memory allocation was successful or not*/
    que=(struct TreeNode**)malloc(capacity*sizeof(struct TreeNode*));
    if(que==NULL)
    {
        printf("Memory allocation failed for queue data structure!\n");
        return 0;
    }

    /*Returning one if memory allocation was successful*/
    return 1;
}

/*Function to check whether the circular queue is full or not if rear+1
mod capacity equals front then the queue is full otherwise it is not*/
short unsigned int isFull() {return (((rear+1)%capacity==front)?1:0);}

/*Function to check whether the circular queue is empty or not if
both front and rear equals ULLONG_MAX then queue is empty otherwise not*/
short unsigned int isEmpty() {return ((front==ULLONG_MAX && rear==ULLONG_MAX)?1:0);}

/*Function to implement the enqueue function for circular queue data structure*/
void enqueue(struct TreeNode* root_add)
{
    /*Checking whether the queue is full or not using the isFull function,
    if it is full then we can't insert and hence return without enqueuing*/
    if(isFull()) 
    {
        printf("Can't insert %d into queue, since queue is full!\n", root_add->val);
        return;
    }

    /*Checking for first insertion in the circular queue data structure*/
    if(isEmpty())
    {
        /*It is the first insertion in the queue data structure*/
        front+=1; rear+=1;
        que[rear]=root_add;
    }
    else {rear=(rear+1)%capacity; que[rear]=root_add;}
}

/*Function to implement the dequeue function for circular queue data structure*/
struct TreeNode* dequeue()
{
    /*Checking whether the queue is empty or not using the isEmpty function,
    if it is empty then we can't delete and hence return without dequeuing*/
    if(isEmpty()) 
    {
        printf("Can't delete from queue, since queue is empty!\n");
        return NULL;
    }

    /*Getting the first element of queue and checking for
    last deletion from the circular queue data structure*/
    struct TreeNode* start_elm=que[front];
    if(front==rear) front=rear=ULLONG_MAX;
    else front=(front+1)%capacity;

    /*Returning the front element of queue*/
    return start_elm;
}

/*Function to create a complete binary tree using queue data structure*/
short unsigned int createBinaryTree()
{
    /*Getting the input for capacity variable from user*/
    printf("Enter the capacity of binary tree:");
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
    if(capacity==0) {printf("Binary tree is empty!\n"); return 0;}

    /*Declaring an array to store the elements of the binary tree
    and taking the user input for the node values of the binary tree*/
    int arr[capacity];

    /*Running a loop to get the elements of binary tree from user*/
    printf("Enter the elements of binary tree:\n");
    for(long long unsigned int i=0; i<capacity; i++)
    {
        printf("Enter element %llu of binary tree:", i);
        scanf("%d", (arr+i));
    }

    /*Calling implementCircularQueue to initialize the circular queue data structure
    and inserting the root node into the newly created circular queue data structure*/
    if(!implementCircularQueue()) return 0;
    struct TreeNode* root_start=createTreeNode(arr[0]);
    enqueue(root_start);

    /*Running a loop to create the binary tree from the user input elements*/
    long long unsigned int iter=1;
    while(iter<capacity)
    {
        /*Dequeuing the front element of queue and enqueuing it's child nodes into queue*/
        struct TreeNode* currentTreeNode=dequeue();

        /*Checking for insertion in left child pointer*/
        if(!currentTreeNode->left)
        {
            /*Creating new TreeNode for left child pointer and inserting into queue*/
            struct TreeNode* left_child=createTreeNode(arr[iter++]);
            currentTreeNode->left=left_child;
            enqueue(left_child);
        }
        /*Checking for insertion in right child pointer*/
        if(iter<capacity && !currentTreeNode->right)
        {
            /*Creating new TreeNode for left child pointer and inserting into queue*/
            struct TreeNode* right_child=createTreeNode(arr[iter++]);
            currentTreeNode->right=right_child;
            enqueue(right_child);
        }
    }

    /*Assigning root_start to root global variable and returning one for successful creation of binary tree*/
    root=root_start;
    return 1;
}

/*Function to print the preorder traversal the binary tree by taking the address of root node*/
void preorder(struct TreeNode** root_add)
{
    /*Declaring base case for recursion: when the binary tree is/becomes empty*/
    if((*root_add))
    {
        /*Printing the value of current node to console, calling preorder function
        recursively for left subtree and then calling it recursively for right subtree*/
        printf("%d ", (*root_add)->val);
        preorder(&((*root_add)->left));
        preorder(&((*root_add)->right));
    }
}

/*Function to get the maximum diagonal level of binary tree by using depth first search*/
void getDiagonalLevel(struct TreeNode** root_add, long long unsigned int currLev, GenericMap** hmap)
{
    /*Declaring base case for recursion: when binary tree is/becomes empty*/
    if((*(root_add)))
    {
        /*Incrementing the value corresponding to the given key in map and then
        calling the function recursively for left and right subtree to do the same*/
        long long unsigned int* out=NULL;
        long long unsigned int* valPtr=(long long unsigned int*)malloc(sizeof(long long unsigned int)); (*valPtr)=1;
        short unsigned int exist=map_get((*(hmap)), &currLev, sizeof(currLev), (void**)&out);
        if(!exist) map_put(hmap, &currLev, sizeof(llui), valPtr, sizeof(llui));
        else (*(long long unsigned int*)out)+=1; free(valPtr);

        /*Calling the function recursively for left and right subtre of the current node*/
        getDiagonalLevel(&((*(root_add))->left), currLev+1, hmap);
        getDiagonalLevel(&((*(root_add))->right), currLev, hmap);
    }
}

/*Function to populate the user defined map with the diagonal levels and values at those levels*/
void populateMap(struct TreeNode** root_add, llui currLev, GenericMap** newMap)
{
    /*Declaring base case for recursion: when binary tree is/becomes empty*/
    if((*(root_add)))
    {
        /*Inserting the current node's address into it's diagonal level and
        calling populateMap function recursively for left and right subtree*/
        void* tmp; Pair* out; map_get(*newMap, &currLev, sizeof(currLev), &tmp);
        out=(Pair*)tmp; struct TreeNode*** arr=(struct TreeNode***)(out->first);
        llui* meta=(llui*)(out->second); llui idx = meta[0]--; arr[idx]=root_add;

        /*Calling populateMap function recursively for left and right subtree*/
        populateMap(&((*(root_add))->left), currLev+1, newMap);
        populateMap(&((*(root_add))->right), currLev, newMap);
    }
}

/*Function to deallocate the space allocated to binary tree in order to avoid memory leakages,
for that we are going to do the postorder traversal of binary tree in order to deallocate
memory to binary tree, so that we don't loose the address or reference of the child nodes*/
void freeBinaryTree(struct TreeNode** root_add)
{
    /*Declaring base case for recursion: when binary tree is/becomes empty*/
    if((*root_add))
    {
        /*Calling freeBinaryTree function recursively for left and right subtrees
        of the current node and then deallocating memory to current node of tree*/
        freeBinaryTree(&((*root_add)->left));
        freeBinaryTree(&((*root_add)->right));
        free(*root_add);
    }
}

/*Defining main function(driver code)*/
int main(void)
{
    /*Checking whether the binary tree creation failed or not*/
    if(createBinaryTree())
    {
        printf("Successfully created binary tree!\n");
        printf("The preorder traversal of binary tree is:\n");
        preorder(&root); printf("\n");

        /*Initializing user defined custom map to store the
        number of nodes at a particular diagonal level and
        then calling getDiagonalLevel to get the number of
        nodes at different diagonal levels in the binary tree*/
        GenericMap* hmap=map_create(); getDiagonalLevel(&root, 0, &hmap);

        /*Getting the size of hashmap and iterating it to create a
        new hashmap that is going to store diagonal level as key and
        a pair of pointer and size of the array pointed to by pointer
        as value which will be used for diagonal traversal of binary tree*/
        long long unsigned int sz=(long long unsigned int)map_size(hmap);
        GenericMap* newMap=map_create();
        for(llui iter=0; iter<sz; iter++)
        {
            /*Defining members of the pair: llui and pointer to struct TreeNode** 
            which will be inserted as values into the new map we have defined*/
            void* tmp; llui* out; map_get(hmap, &iter, sizeof(iter), &tmp); llui* arrPtr=(llui*)malloc(2*sizeof(llui)); out=(llui*)tmp;
            arrPtr[0]=*out-1; arrPtr[1]=*out; struct TreeNode*** pntr=(struct TreeNode***)malloc((*out)*sizeof(struct TreeNode**));
            
            /*Creating pair to store pointers to nodes of binary tree and size*/
            Pair* pr=pair_create(pntr, (*out)*sizeof(struct TreeNode**), arrPtr, 2*sizeof(llui));
            map_put(&newMap, &iter, sizeof(llui), pr, sizeof(Pair)); free(arrPtr); free(pntr);
        }

        /*Calling populateMap function to fill in the node pointers at a particular
        diagonal level and simultaneously decrementing the size present in pair*/
        map_free(hmap); populateMap(&root, 0, &newMap);

        /*Displaying a user friendly message for printing the diagonal order traversal*/
        printf("The diagonal order traversal of binary tree is:\n");
        
        /*Iterating newMap hashmap to get the diagonal order traversal of binary tree*/
        for(llui iter=0; iter<sz; iter++)
        {
            /*Getting the value corresponding to the key in a variable
            and printing the node values at a particular diagonal level*/
            void* tmp; Pair* out; map_get(newMap, &iter, sizeof(iter), &tmp); out=(Pair*)tmp;
            llui* meta=(llui*)(out->second); llui size=meta[1]; struct TreeNode*** arr=(struct TreeNode***)(out->first);
            for(llui i=size-1; i>=1; i--) printf("%d ", (*(arr[i]))->val); printf("%d ", (*(arr[0]))->val);
        }
        printf("\n");

        /*Deallocating memory to created binary tree and
        the queue used for creating the binary tree*/
        freeBinaryTree(&root);
        free(que);
    }
    else printf("Binary tree creation failed!\n");
    return 0;
}