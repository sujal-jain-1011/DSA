/*C program to implement a binary tree by allocating memory dynamically from the heap,
that means we are going to create a complete binary tree using queue data structure and
we are also going to print all the root to leaf paths in the constructed binary tree*/

/*Including limits.h header file for using ULLONG_MAX, stdio.h header file for input
and output functions, stdlib.h header file for memory allocation functions, vector.h
header file for using user defined custom vector and pair.h for using custom pair*/
#include<limits.h>
#include<stdio.h>
#include<stdlib.h>
#include "vector.h"
#include "pair.h"

/*Typedefining long long unsigned int as llui*/
typedef long long unsigned int llui;

/*Defining some global variables: capacity variable of long long unsigned int type for the capacity of binary tree,
front and rear variables of long long unsigned int type for the front and rear indices of the queue, a root pointer to
store the address of the root node of the binary tree, a ptr pointer to traverse the binary tree for it's creation
and a queue pointer to store the address of the first cell that will be created to implement the queue data structure*/
long long unsigned int capacity, front=ULLONG_MAX, rear=ULLONG_MAX, frontLOT=ULLONG_MAX, rearLOT=ULLONG_MAX;

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
Pair** queLOT;

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
short unsigned int implementCircularQueue(struct TreeNode*** q)
{
    /*Allocating memory dynamically to create an array for implementing circular queue
    data structure and checking if the memory allocation was successful or not*/
    (*q)=(struct TreeNode**)malloc(capacity*sizeof(struct TreeNode*));
    if((*q)==NULL)
    {
        printf("Memory allocation failed for queue data structure!\n");
        return 0;
    }

    /*Returning one if memory allocation was successful*/
    return 1;
}

/*Function to check whether the circular queue is full or not if rear+1
mod capacity equals front then the queue is full otherwise it is not*/
short unsigned int isFull(long long unsigned int frontOBT, long long unsigned int rearOBT)
{return (((rearOBT+1)%capacity==frontOBT)?1:0);}

/*Function to check whether the circular queue is empty or not if
both front and rear equals ULLONG_MAX then queue is empty otherwise not*/
short unsigned int isEmpty(long long unsigned int frontOBT, long long unsigned int rearOBT)
{return ((frontOBT==ULLONG_MAX && rearOBT==ULLONG_MAX)?1:0);}

/*Function to implement the enqueue function for circular queue data structure*/
void enqueue(struct TreeNode* root_add, struct TreeNode*** q, long long unsigned int* frontOBT, long long unsigned int* rearOBT)
{
    /*Checking whether the queue is full or not using the isFull function,
    if it is full then we can't insert and hence return without enqueuing*/
    if(isFull((*frontOBT), (*rearOBT))) 
    {
        printf("Can't insert %d into queue, since queue is full!\n", root_add->val);
        return;
    }

    /*Checking for first insertion in the circular queue data structure*/
    if(isEmpty((*frontOBT), (*rearOBT)))
    {
        /*It is the first insertion in the queue data structure*/
        (*frontOBT)+=1; (*rearOBT)+=1;
        (*q)[(*rearOBT)]=root_add;
    }
    else {(*rearOBT)=((*rearOBT)+1)%capacity; (*q)[(*rearOBT)]=root_add;}
}

/*Function to implement the enqueuePair function for circular queue data structure*/
void enqueuePair(Pair* pr, Pair*** q, long long unsigned int* frontOBT, long long unsigned int* rearOBT)
{
    /*Checking whether the queue is full or not using the isFull function,
    if it is full then we can't insert and hence return without enqueuing*/
    if(isFull((*frontOBT), (*rearOBT))) 
    {
        printf("Can't insert pair into queue, since queue is full!\n");
        return;
    }

    /*Checking for first insertion in the circular queue data structure*/
    if(isEmpty((*frontOBT), (*rearOBT)))
    {
        /*It is the first insertion in the queue data structure*/
        (*frontOBT)+=1; (*rearOBT)+=1;
        (*q)[(*rearOBT)]=pr;
    }
    else {(*rearOBT)=((*rearOBT)+1)%capacity; (*q)[(*rearOBT)]=pr;}
}

/*Function to implement the dequeue function for circular queue data structure*/
struct TreeNode* dequeue(struct TreeNode*** q, long long unsigned int* frontOBT, long long unsigned int* rearOBT)
{
    /*Checking whether the queue is empty or not using the isEmpty function,
    if it is empty then we can't delete and hence return without dequeuing*/
    if(isEmpty((*frontOBT), (*rearOBT))) 
    {
        printf("Can't delete from queue, since queue is empty!\n");
        return NULL;
    }

    /*Getting the first element of queue and checking for
    last deletion from the circular queue data structure*/
    struct TreeNode* start_elm=(*q)[(*frontOBT)];
    if((*frontOBT)==(*rearOBT)) (*frontOBT)=(*rearOBT)=ULLONG_MAX;
    else (*frontOBT)=((*frontOBT)+1)%capacity;

    /*Returning the front element of queue*/
    return start_elm;
}

/*Function to implement the dequeuePair function for circular queue data structure*/
Pair* dequeuePair(Pair*** q, long long unsigned int* frontOBT, long long unsigned int* rearOBT)
{
    /*Checking whether the queue is empty or not using the isEmpty function,
    if it is empty then we can't delete and hence return without dequeuing*/
    if(isEmpty((*frontOBT), (*rearOBT))) 
    {
        printf("Can't delete from queue, since queue is empty!\n");
        return NULL;
    }

    /*Getting the first element of queue and checking for
    last deletion from the circular queue data structure*/
    Pair* start_elm=(*q)[(*frontOBT)];
    if((*frontOBT)==(*rearOBT)) (*frontOBT)=(*rearOBT)=ULLONG_MAX;
    else (*frontOBT)=((*frontOBT)+1)%capacity;

    /*Returning the front element of queue*/
    return start_elm;
}

/*Function to create a complete binary tree using queue data structure*/
short unsigned int createBinaryTree()
{
    /*Getting the input for capacity variable from user*/
    printf("Enter the capacity of binary tree:");
    scanf("%llu", &capacity);

    /*User is instructed to enter the capacity less than LLONG_MAX to avoid wrap around
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
    if(!implementCircularQueue(&que)) return 0;
    struct TreeNode* root_start=createTreeNode(arr[0]);
    enqueue(root_start, &que, &front, &rear);

    /*Running a loop to create the binary tree from the user input elements*/
    long long unsigned int iter=1;
    while(iter<capacity)
    {
        /*Dequeuing the front element of queue and enqueuing it's child nodes into queue*/
        struct TreeNode* currentTreeNode=dequeue(&que, &front, &rear);

        /*Checking for insertion in left child pointer*/
        if(!currentTreeNode->left)
        {
            /*Creating new TreeNode for left child pointer and inserting into queue*/
            struct TreeNode* left_child=createTreeNode(arr[iter++]);
            currentTreeNode->left=left_child;
            enqueue(left_child, &que, &front, &rear);
        }
        /*Checking for insertion in right child pointer*/
        if(iter<capacity && !currentTreeNode->right)
        {
            /*Creating new TreeNode for left child pointer and inserting into queue*/
            struct TreeNode* right_child=createTreeNode(arr[iter++]);
            currentTreeNode->right=right_child;
            enqueue(right_child, &que, &front, &rear);
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

/*Function to print all the root to leaf paths in the given binary tree*/
void allPaths(struct TreeNode** root_add)
{
    /*Declaring queue data structure to store the node values along with the vector containing path from root
    to that node in the form of pair and whenever we encounter a leaf node we are going to print that vector*/
    queLOT=(Pair**)malloc(capacity*sizeof(Pair*));
    if(!queLOT){printf("Circular queue creation failed!\n"); return;}
    else
    {
        /*Declaring a variable to keep track of root to leaf paths in the binary tree*/
        size_t noOfPaths=0;
        
        /*Creating a vector to hold the root node value and initializing a pair which
        will contain root node value and the vector containing the path from root to root*/
        vector vecRoot; vecInit(&vecRoot, sizeof(int)); vecPush(&vecRoot, &((*(root_add))->val));
        Pair* prRoot=pair_create((void*)(*(root_add)), sizeof(struct TreeNode), &vecRoot, sizeof(vector));

        /*Enqueuing pair of TreeNode and vector of paths into queue data structure and
        iterating the queue to print all the root to leaf paths of the given binary tree*/
        enqueuePair(prRoot, &queLOT, &frontLOT, &rearLOT);
        while(!isEmpty(frontLOT, rearLOT))
        {
            /*Getting and removing front element of the queue and checking whether the
            front element contains leaf node or not if yes then printing the path*/
            Pair* qr=dequeuePair(&queLOT, &frontLOT, &rearLOT);
            struct TreeNode* currentNode=(struct TreeNode*)(qr->first);
            vector current=*(vector*)(qr->second);

            /*Checking whether the current node is a leaf node or not if yes then printing*/
            if(!(currentNode->left) && !(currentNode->right))
            {
                /*Printing the values of root to leaf path values stored in the associated vector*/
                size_t sz=current.length; printf("Path %zu of binary tree is: ", 1+noOfPaths++);
                for(size_t iter=0; iter<sz; iter++) printf("%d ", *(int*)vecGet(&current, iter)); printf("\n");
            }

            /*Checking whether the left or right child of the current node exists or not, if they do
            then we are going to enqueue them into the queue along with path upto that node from root*/
            if(currentNode->left)
            {
                /*Creating pair for holding left child of the current node along with updated path vector*/
                vector leftChild; vecInit(&leftChild, sizeof(int)); size_t sz=current.length;
                for(size_t iter=0; iter<sz; iter++) vecPush(&leftChild, (int*)vecGet(&current, iter));
                vecPush(&leftChild, &((currentNode->left)->val));
                Pair* lc=pair_create((void*)(currentNode->left), sizeof(struct TreeNode), &leftChild, sizeof(vector));
                enqueuePair(lc, &queLOT, &frontLOT, &rearLOT);
            }
            if(currentNode->right)
            {
                /*Creating pair for holding right child of the current node along with updated path vector*/
                vector rightChild; vecInit(&rightChild, sizeof(int)); size_t sz=current.length;
                for(size_t iter=0; iter<sz; iter++) vecPush(&rightChild, (int*)vecGet(&current, iter));
                vecPush(&rightChild, &((currentNode->right)->val));
                Pair* rc=pair_create((void*)(currentNode->right), sizeof(struct TreeNode), &rightChild, sizeof(vector));
                enqueuePair(rc, &queLOT, &frontLOT, &rearLOT);
            }

            /*Freeing the space allocated to pair data structure from heap to prevent memory leakages*/
            pair_free(qr);
        }

        /*Freeing the space allocated to queLOT data structure from heap to prevent memory leakages*/
        free(queLOT);
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

        /*Calling allPaths function to print all the root to leaf paths*/
        allPaths(&root);

        /*Deallocating memory to created binary tree and
        the queue used for creating the binary tree*/
        freeBinaryTree(&root);
        free(que);
    }
    else printf("Binary tree creation failed!\n");
    return 0;
}