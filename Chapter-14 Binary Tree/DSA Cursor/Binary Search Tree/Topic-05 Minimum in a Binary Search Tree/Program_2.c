/*C program to implement a binary search tree by allocating memory dynamically from the heap,
that means we are going to create a binary search tree using queue data structure and an
array and to find the minimum element in the binary search tree using iterative approach*/

/*Including limits.h header file for using ULLONG_MAX, stdio.h header file for input
and output functions and stdlib.h header file for memory allocation functions*/
#include<limits.h>
#include<stdio.h>
#include<stdlib.h>

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

/*Function to find the minimum element in binary search tree using iterative approach*/
int minBST(struct TreeNode** root_add)
{
    /*Running a while loop to get the leftmost node of the binary search tree*/
    struct TreeNode* ptr=(*(root_add)); while(ptr->left) ptr=ptr->left; return ptr->val;
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
    /*Checking whether the binary search tree creation failed or not*/
    if(createBinarySearchTree())
    {
        printf("Successfully created binary search tree!\n");
        printf("The preorder traversal of binary search tree is:\n");
        preorder(&root); printf("\n");
        if(!root) printf("Can't find minimum since binary search tree is empty!\n");
        else printf("The minimum element in binary search tree is:%d\n", minBST(&root));

        /*Deallocating memory to created binary search tree*/
        freeBinarySearchTree(&root);
    }
    else printf("Binary search tree creation failed!\n");
    return 0;
}