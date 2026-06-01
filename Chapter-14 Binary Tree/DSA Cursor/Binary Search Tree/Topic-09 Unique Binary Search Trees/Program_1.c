/*C program to implement a binary search tree by allocating memory dynamically from the heap,
that means we are going to create a binary search tree using queue data structure and an array and
we are also going to get the root nodes of different binary search trees possible with given nodes*/

/*Including limits.h header file for using ULLONG_MAX, stdio.h header file for input
and output functions, stdlib.h header file for memory allocation functions and vector.h
header file for using user defined vector data structure for dynamic operations*/
#include<limits.h>
#include<stdio.h>
#include<stdlib.h>
#include "vector.h"

/*Defining some global variables: capacity variable of long long unsigned int type for the capacity of binary search tree,
front and rear variables of long long unsigned int type for the front and rear indices of the queue, a root pointer to
store the address of the root node of the binary search tree, a ptr pointer to traverse the binary search tree for it's creation
and a queue pointer to store the address of the first cell that will created to implement the queue data structure*/
long long unsigned int capacity, front=ULLONG_MAX, rear=ULLONG_MAX;

/*Defining a structure for binary search tree node that contains data, left and right child pointers
and defining a function that will create a new node for the binary search tree when called*/
struct TreeNode{
    int val;
    struct TreeNode* left;
    struct TreeNode* right;
};
struct TreeNode* root;
struct TreeNode* ptr; 
struct TreeNode** que;

/*Function to create a new node for the binary search tree and returning it*/
struct TreeNode* createTreeNode(int data)
{
    /*Dynamically allocating memory for the new node using malloc function and checking if the memory allocation was
    successful if it was, then populating the node with the data passed to function and returning it's address*/
    struct TreeNode* newTreeNode=(struct TreeNode*)malloc(sizeof(struct TreeNode));
    if(newTreeNode==NULL)
    {
        printf("Memory allocation failed for node of binary search tree!\n");
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

/*Function to implement circular queue data structure that will be used to create a complete binary search tree
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

/*Defining custom compare function to help standard qsort function to sort array elements in
ascending order which contains the elements of the binary search tree in scrambled order*/
int cmp(const void *a,const void *b){return (*(int*)a-*(int*)b);}

/*Function to implement the binary search tree using the array elements (after sorting it), by choosing
the middle element as the root element of the BST and doing it recursively for left and right subtrees*/
struct TreeNode* implementBinarySearchTree(int *arr, long long unsigned int low, long long unsigned int high)
{
    /*Declaring base case for recursion: when low is greater than high then we can't create a BST*/
    if(low<=high)
    {
        /*Since we are working with long long unsigned int type iterators i.e. low and high we need
        to take into consideration the wrap around property of long long unsigned int type*/
        
        /*Getting the middle element of the array using low and high iterators, creating root node with this
        element and then calling implementBinarySearchTree function recursively for left and right subtrees*/
        long long unsigned int mid=low+(high-low)/2;
        struct TreeNode* rootNode=createTreeNode(arr[mid]);

        /*Checking for wrap around for high iterator variable before calling
        the implementBinarySearchTree function for creating left subtree*/
        if(mid>0) rootNode->left=implementBinarySearchTree(arr, low, mid-1);
        rootNode->right=implementBinarySearchTree(arr, mid+1, high);

        /*Returning root node of the created binary search subtree*/
        return rootNode;
    }
    else return NULL;
}

/*Function to create a complete binary search tree using queue data structure*/
short unsigned int createBinarySearchTree()
{
    /*Getting the input for capacity variable from user*/
    printf("Enter the capacity of binary search tree:");
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
    if(capacity==0) {printf("binary search tree is empty!\n"); return 0;}

    /*Declaring an array to store the elements of the binary search tree
    and taking the user input for the node values of the binary search tree*/
    int *arr=(int*)malloc(capacity*sizeof(int));

    /*Running a loop to get the elements of binary search tree from user*/
    printf("Enter the elements of binary search tree:\n");
    for(long long unsigned int i=0; i<capacity; i++)
    {
        printf("Enter element %llu of binary search tree:", i);
        scanf("%d", (arr+i));
    }

    /*Calling standard qsort function with the array as argument to sort the elements of array in ascending order
    and then implementBinarySearchTree function with the sorted array as argument to construct binary search tree
    and assigning the root node of the BST created by implementBinarySearchTree function to root global variable*/
    qsort(arr, capacity, sizeof(int), cmp); root=implementBinarySearchTree(arr, 0, capacity-1);

    /*Freeing up the memory allocated to array and returning one for successful creation of binary search tree*/
    free(arr);
    return 1;
}

/*Function to print the preorder traversal of the binary search tree by taking the address of root node*/
void preorder(struct TreeNode** root_add)
{
    /*Declaring base case for recursion: when the binary search tree is/becomes empty*/
    if((*root_add))
    {
        /*Printing the value of current node to console, calling preorder function
        recursively for left subtree and then calling it recursively for right subtree*/
        printf("%d ", (*root_add)->val);
        preorder(&((*root_add)->left));
        preorder(&((*root_add)->right));
    }
}

/*Function to recursively clone a binary (search) tree for creating deep copies*/
struct TreeNode* cloneTree(struct TreeNode* root)
{
    /*Declaring base case for recursion: when binary tree is/becomes empty*/
    if(root)
    {
        /*Creating new node for the current element and calling cloneTree function recusively for left and right subtees*/
        struct TreeNode* newNode=createTreeNode(root->val);newNode->left=cloneTree(root->left); newNode->right=cloneTree(root->right);
        return newNode;
    }
    else return NULL;
}

/*Function-2 to create a vector of root nodes of structurally unique binary search trees recursively*/
vector create(short unsigned int low, short unsigned int high, short unsigned int* arr)
{
    /*Declaring base case for recursion: when low is greater than high in that case we are
    going to return a vector containing null pointer to indicate empty binary search tree*/
    if(low<=high)
    {
        /*Declaring a vector of struct TreeNode that is going to store the root nodes of structurally unique BSTs
        and iterating over elements of arr array to make each of them root node and creating BST with them as root*/
        vector vec; vecInit(&vec, sizeof(struct TreeNode**));
        for(short unsigned int iter=low; iter<=high; iter++)
        {
            /*Declaring vectors to store the root nodes of left and right subtree of current node*/
            vector lvec, rvec;
            if(iter==low)
            {
                /*We can't call create function because of the wrap around property, so we need to handle this case separately*/
                vecInit(&lvec, sizeof(struct TreeNode**)); struct TreeNode** ptr=(struct TreeNode**)malloc(sizeof(struct TreeNode*));
                (*(ptr))=NULL; vecPush(&lvec, &ptr);
            }
            else lvec=create(low, iter-1, arr);
            rvec=create(iter+1, high, arr);

            /*Iterating right vector for each element of the left vector to link the nodes to the current node*/
            for(size_t lIter=0; lIter<lvec.length; lIter++)
            {
                for(size_t rIter=0; rIter<rvec.length; rIter++)
                {
                    /*Creating node with the current element as root node and then linking and storing the unique BSTs*/
                    struct TreeNode** currNode=(struct TreeNode**)malloc(sizeof(struct TreeNode*)); (*(currNode))=(createTreeNode((*(arr+iter))));
                    struct TreeNode** leftSubtree=*(struct TreeNode***)vecGet(&lvec, lIter); (*(currNode))->left=cloneTree((*(leftSubtree)));
                    struct TreeNode** rightSubtree=*(struct TreeNode***)vecGet(&rvec, rIter); (*(currNode))->right=cloneTree((*(rightSubtree)));

                    /*Pushing the root node of the current node into the vector*/
                    vecPush(&vec, &currNode);
                }
            }

            /*Freeing spaces occupied by left vector and right vector*/
            vecFree(&lvec); vecFree(&rvec);
        }

        /*Returning the vector containing the root nodes of the structurally unique binary search trees*/
        return vec;
    }
    else
    {
        /*Creating a vector containing NULL pointer and returning that vector*/
        vector vec; vecInit(&vec, sizeof(struct TreeNode**));
        struct TreeNode** nptr=(struct TreeNode**)malloc(sizeof(struct TreeNode*));
        (*(nptr))=NULL; vecPush(&vec, &nptr); return vec;
    }
}

/*Function-1 to create a vector of root nodes of structurally unique binary search trees*/
vector createUniqueBST(short unsigned int noOfNodes)
{
    /*Creating an array of first noOfNodes natural numbers which are going to serve as root node elements*/
    short unsigned int* arr=(short unsigned int*)malloc(noOfNodes*sizeof(short unsigned));
    for(short unsigned int iter=0; iter<noOfNodes; iter++) (*(arr+iter))=iter+1;

    /*Calling create function that will recursively build the structurally unique binary search trees and then
    will populate the vector with the root nodes of those binary search trees and we'll return that vector*/
    vector uBST=create(0, noOfNodes-1, arr); free(arr); return uBST;
}

/*Function to deallocate the space allocated to binary search tree in order to avoid memory leakages,
for that we are going to do the postorder traversal of binary search tree in order to deallocate
memory to binary search tree, so that we don't loose the address or reference of the child nodes*/
void freeBinarySearchTree(struct TreeNode** root_add)
{
    /*Declaring base case for recursion: when binary search tree is/becomes empty*/
    if((*root_add))
    {
        /*Calling freeBinaryTree function recursively for left and right subtrees
        of the current node and then deallocating memory to current node of tree*/
        freeBinarySearchTree(&((*root_add)->left));
        freeBinarySearchTree(&((*root_add)->right));
        free(*root_add);
    }
}

/*Defining main function(driver code)*/
int main(void)
{
    /*Getting the user input for the number of nodes in structurally unique binary search trees and
    then calling the createUniqueBST function to create a vector containing root nodes of diff. BSTs*/
    short unsigned int noOfNodes; printf("Enter the number of nodes in binary search tree:"); scanf("%hu", &noOfNodes);
    vector uBST=createUniqueBST(noOfNodes);

    /*Calling preorder function to print the preorder traversal of structurally unique binary search trees
    and then calling freeBinarySearchTree function to free the dynamically allocated memory for BSTs*/
    for(short unsigned iter=0; iter<uBST.length; iter++)
    {
        /*Calling preorder function to print the preorder traversal of structurally unique BSTs*/
        printf("Preorder traversal of binary search tree %hu is:", iter+1);
        struct TreeNode** root_add=*(struct TreeNode***)vecGet(&uBST, iter);
        preorder(root_add); printf("\n");
    }
    for(short unsigned iter=0; iter<uBST.length; iter++)
    {
        /*Calling freeBinarySearchTree function to free the dynamically allocated memory for each BST*/
        struct TreeNode** root_add=*(struct TreeNode***)vecGet(&uBST, iter);
        freeBinarySearchTree(root_add);
    }
    return 0;
}