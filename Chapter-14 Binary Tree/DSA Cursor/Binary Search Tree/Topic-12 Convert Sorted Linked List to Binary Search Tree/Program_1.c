/*C program to implement a binary search tree by allocating memory dynamically from the heap,
that means we are going to create a binary search tree using queue data structure and an array
and we are also going to construct the binary search tree from the sorted linked list*/

/*Including limits.h header file for using ULLONG_MAX, stdio.h header file for input
and output functions and stdlib.h header file for memory allocation functions*/
#include<limits.h>
#include<stdio.h>
#include<stdlib.h>

/*Typedefining long long unsigned int as llui*/
typedef long long unsigned int llui;

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

/*Defining a structure for linked list node which we be using to create binary search tree
from this structure, it will contain data and a pointer to the next node of the linked list*/
struct ListNode{
    int val;
    struct ListNode* next;
};
struct ListNode* head=NULL;
struct ListNode* lptr=NULL;

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

/*Function to create a new node for the linked list and returning it*/
struct ListNode* createListNode(int data)
{
    /*Dynamically allocating memory for the new node using malloc function and checking if the memory allocation was
    successful if it was, then populating the node with the data passed to function and returning it's address*/
    struct ListNode* newListNode=(struct ListNode*)malloc(sizeof(struct ListNode));
    if(newListNode==NULL)
    {
        printf("Memory allocation failed for node of linked list!\n");
        return NULL;
    }
    
    /*Assigning the data passed to function to the val field of the new
    node and initializing the left and right child pointers to NULL*/
    newListNode->val=data;
    newListNode->next=NULL;

    /*Returning the newly created node*/
    return newListNode;
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
        /*Displaying a user friendly message to user*/
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

/*Function to create binary search tree from sorted linked list*/
struct TreeNode* createBST(struct ListNode* newHead, struct ListNode* newTail)
{
    /*Declaring base case for recursion: when head's next is/becomes tail*/
    if(newHead==newTail)
    {
        /*Returning NULL pointer if newHead and newTail coincides*/
        return NULL;
    }
    else
    {
        /*Finding the middle node of the linked list using slow and fast pointer and then
        calling the function createBST recursively for creating left and right subtrees*/
        struct ListNode* slow=newHead, *fast=newHead;
        while(fast!=newTail && fast->next!=newTail){slow=slow->next; fast=fast->next->next;}

        /*Creating node for the middle element of the linked list and calling the function
        createBST recursively for creating left and right subtree of the current node*/
        struct TreeNode* rootNode=createTreeNode(slow->val);
        rootNode->left=createBST(newHead, slow);
        rootNode->right=createBST(slow->next, newTail);

        /*Returning the root node of the created subtree*/
        return rootNode;
    }
}

/*Function to create a binary search tree from the sorted linked list, this function will
first take the elements of linked list as user input, then will sort the linked list and
then will call the other auxiliary function that will create the binary search tree*/
short unsigned int createLinkedList(void)
{
    /*Getting the size and elements of linked list as user input and then sorting the
    linked list using naive approach here by putting the elements of linked list in
    an auxiliary array, then sorting that array and then assigning the elements back*/
    llui size; printf("Enter the size of linked list:"); scanf("%llu", &size);

    /*User is instructed to enter the size less than ULLONG_MAX to avoid wrap around
    otherwise the result will not be as predicted because of the wrap around property,
    writing a basic check but it won't be evaluated because of the wrap around property*/
    if(size>ULLONG_MAX || size<0)
    {
        /*Displaying a user friendly message to user*/
        printf("Invalid user input for size of linked list!\n");
        return 0;
    }

    /*Handling corner case: when capacity is zero*/
    if(size==0) {printf("Linked List is empty!\n"); return 0;}

    /*Running a loop to get the input from user for elements of linked list*/
    for(llui iter=0; iter<size; iter++)
    {
        /*Getting the user input for iter+1 node and calling createListNode
        function to create a new node of linked list from the user given data*/
        int elm; printf("Enter the value of node %llu:", iter+1);
        scanf("%d", &elm); struct ListNode* temp=createListNode(elm);
        
        /*Checking whether the current node is first element of linked list or not*/
        if(!head){head=lptr=temp;} else{lptr->next=temp; lptr=temp;}
    } lptr=head;

    /*Dynamically allocating memory to an array which is going to store the elements
    of linked list and then calling qsort function to sort the elements of linked list
    we are going to assume that memory allocation didn't fail for the array*/
    int *arr=(int*)malloc(size*sizeof(int)); llui i=0;

    /*Copying the elements of linked list into the array, then sorting it and then
    again copying the sorted array to the linked list making it sorted as well*/
    while(lptr){arr[i++]=lptr->val; lptr=lptr->next;} qsort(arr, size, sizeof(int), cmp);
    i=0; lptr=head; while(lptr){lptr->val=arr[i++]; lptr=lptr->next;} lptr=head;

    /*Calling createBST function to create a binary search tree from the sorted linked list*/
    root=createBST(lptr, NULL); return 1;
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
    if(createLinkedList())
    {
        printf("Successfully created binary search tree!\n");
        printf("The preorder traversal of binary search tree is:\n");
        preorder(&root); printf("\n");

        /*Deallocating memory to created binary search tree*/
        freeBinarySearchTree(&root);
    }
    else printf("Binary search tree creation failed!\n");
    return 0;
}