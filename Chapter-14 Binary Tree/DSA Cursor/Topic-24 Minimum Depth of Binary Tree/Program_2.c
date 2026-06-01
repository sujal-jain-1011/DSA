/*C program to implement a binary tree by allocating memory dynamically from the heap,
that means we are going to create a complete binary tree using queue data structure
and we are also going to find the minimum depth of the given binary tree iteratively*/

/*Including limits.h header file for using ULLONG_MAX, stdio.h header file for input
and output functions and stdlib.h header file for memory allocation functions*/
#include<limits.h>
#include<stdio.h>
#include<stdlib.h>

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
struct TreeNode** queLOT;

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

/*Function to find the minimum depth of given binary tree iteratively*/
llui minDepth(struct TreeNode** root_add)
{
    /*Handling corner case: when binary tree is empty, in that
    case we are going to print "Binary tree is empty!" and return*/
    if(!(*root_add))
    {
        printf("Binary tree is empty!\n");
        return 0;
    }
    else
    {
        /*Calling implementCircularQueue function to create the queue data structure
        that will be used to store the nodes of binary tree at a particular level*/
        if(!implementCircularQueue(&queLOT))
        {
            /*Circular queue creation failed, therefore displaying
            the message and then returning without printing*/
            printf("Circular queue creation failed!\n");
            return 0;
        }
        else
        {
            /*Declaring a variable to store the minimum level of BT, enqueuing root node and NULL into
            the created circular queue and then iterating the binary tree to traverse all of it's nodes*/
            llui lc=0;
            enqueue((*root_add), &queLOT, &frontLOT, &rearLOT);
            enqueue(NULL, &queLOT, &frontLOT, &rearLOT);
            while(!isEmpty(frontLOT, rearLOT))
            {
                /*Getting and removing the front element of the queue and enqueuing
                it's child nodes into the queue data structure, if it's not NULL*/
                struct TreeNode* qptr=dequeue(&queLOT, &frontLOT, &rearLOT);
                if(qptr)
                {
                    /*Enqueuing child nodes if they exist and checking for leaf node*/
                    if(qptr->left) enqueue(qptr->left, &queLOT, &frontLOT, &rearLOT);
                    if(qptr->right) enqueue(qptr->right, &queLOT, &frontLOT, &rearLOT);
                    if(!(qptr->left) && !(qptr->right)) break;
                }
                else
                {
                    /*Enqueuing NULL into queue to mark the ending of the current level*/
                    lc+=1; if(!isEmpty(frontLOT, rearLOT)) enqueue(NULL, &queLOT, &frontLOT, &rearLOT);
                }
            }

            /*Deallocating memory to created queue used in this specific function
            and returning the minimum level of the binary tree stored in lc variable+1*/
            free(queLOT); return lc+1;
        }
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

        /*Calling minDepth function to get the minimum height of binary tree*/
        printf("The minimum depth of binary tree is:%llu\n", minDepth(&root));

        /*Deallocating memory to created binary tree and
        the queue used for creating the binary tree*/
        freeBinaryTree(&root);
        free(que);
    }
    else printf("Binary tree creation failed!\n");
    return 0;
}