/*C program to implement a binary tree by allocating memory dynamically from the heap,
that means we are going to create a complete binary tree using queue data structure and
we are going to check whether the created binary tree is a valid binary search tree*/

/*Including limits.h header file for using ULLONG_MAX, stdio.h header file for input
and output functions, stdlib.h header file for memory allocation functions and
including pair.h header file for using the user defined custom pair data structure*/
#include<limits.h>
#include<stdio.h>
#include<stdlib.h>
#include "pair.h"

/*Defining some global variables: capacity variable of long long unsigned int type for the capacity of binary tree,
front and rear variables of long long unsigned int type for the front and rear indices of the queue, a root pointer to
store the address of the root node of the binary tree, a ptr pointer to traverse the binary tree for it's creation
and a queue pointer to store the address of the first cell that will created to implement the queue data structure*/
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

/*Function to check whether the given binary tree is a valid binary search tree or not,
using the fact that inorder traversal of binary search tree is in strictly increasing order*/
Pair* checkBST(struct TreeNode** root_add, short unsigned int* isBST)
{
    /*Declaring base case for recursion: when binary tree is/becomes empty*/
    if((*(root_add)) && (*(isBST)))
    {
        /*Declaring a pair data structure that is going to be returned by this function, we are
        going to populate this pair from the pairs returned by the calls for left and right subtree*/
        int firstVal=-1, secondVal=-1; Pair* pr=pair_create(&firstVal, sizeof(firstVal), &secondVal, sizeof(secondVal));

        /*Declaring two boolean variables to check for existence of left and right subtrees
        and populating the pairs from the values returned by the left and right calls*/
       short unsigned int isLeft=0, isRight=0;
        
        /*Calling the checkBST function recursively for left and right subtrees of the current node*/
        Pair* lpr, *rpr;
        if((*(root_add))->left)
        {
            /*Declaring pair to store the min-max value pair returned by the function call for left subtree
            and we are also going to set the value of isLeft true so to indicate existence of left subtree*/
            lpr=checkBST(&((*(root_add))->left), isBST); isLeft=1;
        }
        if((*(root_add))->right)
        {
            /*Declaring pair to store the min-max value pair returned by the function call for right subtree
            and we are also going to set the value of isRight true so to indicate existence of right subtree*/
            rpr=checkBST(&((*(root_add))->right), isBST); isRight=1;
        }

        /*Creating the min-max pair from the min-max pairs returned by the function calls for left and right subtree
        for this we are going to have four cases: case-1: when both the left and right subtrees of the current node
        are empty in that case we are going to return current node value as the min-max pair, case-2: when right subtree
        of the current node is empty but not the left subtree in that case we are going to have min from the left
        subtree as the new min and current node's value as the new max, case-3: when left subtree of the current node
        is empty but not the right subtree in that case we are going to have new min as current node's value and max
        from right subtree as the new max, case-4: when both the subtrees are non-empty in that we are going to have
        new min as min from pair returned by left subtree and new max as max from the pair returned by right subtree*/
        if((*(isBST)))
        {
            if(!isLeft && !isRight)
            {
                /*Both the subtrees of current node are empty*/
                (*(int*)(pr->first))=(*(int*)pr->second)=(*(root_add))->val;
            }
            else if(isLeft && !isRight)
            {
                /*Left subtree is non-empty but right subtree is empty*/
                if((*(int*)(lpr->second))>=(*(root_add))->val) (*(isBST))=0;
                (*(int*)(pr->first))=(*(int*)(lpr->first)); (*(int*)(pr->second))=(*(root_add))->val;
            }
            else if(!isLeft && isRight)
            {
                /*Left subtree is empty but right subtree is non-empty*/
                if((*(int*)(rpr->first))<=(*(root_add))->val) (*(isBST))=0;
                (*(int*)(pr->first))=(*(root_add))->val; (*(int*)(pr->second))=(*(int*)(rpr->second));
            }
            else
            {
                /*Both the left and right subtrees are non-empty*/
                if((*(int*)(lpr->second))>=(*(root_add))->val || (*(int*)(rpr->first))<=(*(root_add))->val) (*(isBST))=0;
                (*(int*)(pr->first))=(*(int*)(lpr->first)); (*(int*)(pr->second))=(*(int*)(rpr->second));
            }
        }

        /*Returning the min-max pair from this function call*/
        return pr;
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
    if(createBinaryTree())
    {
        printf("Successfully created binary tree!\n");
        printf("The preorder traversal of binary tree is:\n");
        preorder(&root); printf("\n");

        /*Calling checkBST function to check whether the binary tree is BST or not*/
        short unsigned int isBST=1; checkBST(&root, &isBST); if(isBST) printf("Given binary tree is a valid binary search tree\n");
        else printf("Given binary tree is not a valid binary search tree\n");

        /*Deallocating memory to created binary tree and
        the queue used for creating the binary tree*/
        freeBinaryTree(&root); free(que);
    }
    else printf("Binary tree creation failed!");
    return 0;
}