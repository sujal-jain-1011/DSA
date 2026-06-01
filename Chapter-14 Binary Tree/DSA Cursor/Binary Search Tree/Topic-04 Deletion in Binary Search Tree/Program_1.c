/*C program to implement a binary search tree by allocating memory dynamically from the heap,
that means we are going to create a binary search tree using queue data structure and an array
and delete an element from the binary search tree from the given user input using recursion*/

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

/*Function to get the inorder predecessor or inorder successor of a node*/
struct TreeNode*** getNext(struct TreeNode** currentNode)
{
    /*If this function is called then that means the node to be deleted is not a leaf node
    so we need to find the inorder predecessor or inorder successor of the current node*/
    
    /*First we are trying to find the inorder predecessor of the current node then we will try to get
    the inorder successor of the current node if the inorder predecessor is not possible to find*/
    if((*(currentNode))->left)
    {
        /*Running a while loop to get the right most node of binary search subtree rooted at current node
        and we are going to use parentNode and childNode pointers to keep track of parent and children*/
        struct TreeNode** parentNode=currentNode, **childNode=&((*(currentNode))->left);
        while((*(childNode))->right){parentNode=childNode; childNode=&((*(childNode))->right);}

        /*Checking whether childNode is leaf node or not, if yes then we are going to return this along
        with it's parent node otherwise we are going to find the predecessor or successor of this node*/
        if(!((*(childNode))->left) && !((*(childNode))->right))
        {
            /*Returning list containing pointer to parent node and pointer to node which is predecessor/successor*/
            struct TreeNode*** tn=(struct TreeNode***)malloc(2*sizeof(struct TreeNode**));
            tn[0]=parentNode; tn[1]=childNode;
            return tn;
        }
        else return getNext(childNode);
    }
    else if((*(currentNode))->right)
    {
        /*Running a while loop to get the left most node of binary search subtree rooted at current node
        and we are going to use parentNode and childNode pointers to keep track of parent and children*/
        struct TreeNode** parentNode=currentNode, **childNode=&((*(currentNode))->right);
        while((*(childNode))->left){parentNode=childNode; childNode=&((*(childNode))->left);}

        /*Checking whether childNode is leaf node or not, if yes then we are going to return this along
        with it's parent node otherwise we are going to find the predecessor or successor of this node*/
        if(!((*(childNode))->left) && !((*(childNode))->right))
        {
            /*Returning list containing pointer to parent node and pointer to node which is predecessor/successor*/
            struct TreeNode*** tn=(struct TreeNode***)malloc(2*sizeof(struct TreeNode**));
            tn[0]=parentNode; tn[1]=childNode;
            return tn;
        }
        else return getNext(childNode);
    }
}

/*Function to delete an element from the binary search tree given by user as input*/
void deleteFromBST(struct TreeNode** root_add, int element)
{
    /*Handling corner cases: when either the BST is empty or there is only one element in it*/
    if(!(*(root_add))) printf("Can't delete %d from binary search tree since BST is empty\n", element);
    else if(!((*(root_add))->left) && !((*(root_add))->right))
    {
        /*In this case we are going to have two subcases: when the element is root node's value
        then we are going to delete that root node and set member root node to null else return*/
        if((*(root_add))->val==element) (*root_add)=NULL;
        else printf("Can't delete %d from binary search tree\n", element);
    }
    
    /*If we are in this else block then the binary search tree definitely contains more than one node*/
    else
    {
        /*Declaring two pointers (parent and child pointer) to iterate the binary search
        tree for finding the element to be deleted from the given binary search tree and
        a boolean variable to check whether the user given element is found in BST or not*/
        struct TreeNode** parentNode=NULL, **childNode=root_add; short unsigned int isFound=0;

        /*Iterating the given binary search tree to find the user given element*/
        while((*(childNode)))
        {
            /*If current node element is greater than the element to be deleted then we will be
            moving to the left subtree else if current node element is lesser than the element
            then we will be moving to the right subtree else if element is found then we are
            going to swap it with either it's inorder predecessor or successor and then we'll delete*/
            if((*(childNode))->val>element){parentNode=childNode; childNode=&((*(childNode))->left);}
            else if((*(childNode))->val<element){parentNode=childNode; childNode=&((*(childNode))->right);}
            else
            {
                /*Element is found in the binary search tree therefore we are setting isFound variable
                to true and breaking the loop to transfer the control outside of the while loop*/
                isFound=1; break;
            }
        }

        /*On the basis of isFound variable we are going to call getNext function to get the inorder
        predecessor or inorder successor of the node to be deleted if isFound is true else return*/
        if(isFound)
        {
            /*Checking if the current node which we need to delete is a leaf node or not if it is then delete it other
            wise we are going to call the getNext function to get the inorder predecessor or inorder successor of node*/
            if(!((*(childNode))->left) && !((*(childNode))->right))
            {
                /*Checking which child is childNode of the parentNode and then deleting
                it by assigning null reference to that particular field of the parentNode*/
                if((*(parentNode))->left==(*(childNode))) (*(parentNode))->left=NULL;
                else (*(parentNode))->right=NULL;
            }
            else
            {
                /*Calling the getNext function to get the reference to parent node of the inorder predecessor or
                inorder successor along with the reference to the inorder predecessor or inorder successor*/
                struct TreeNode*** nextNode=getNext(childNode);
                
                /*Swapping the value of the node to be deleted with that of successor or predecessor*/
                int temp=(*(childNode))->val; (*(childNode))->val=(*(nextNode[1]))->val; (*(nextNode[1]))->val=temp;
                if((*(nextNode[0]))->left==(*(nextNode[1])))
                {
                    /*Freeing the pointer and then assigning null reference or pointer*/
                    (*(nextNode[0]))->left=NULL; struct TreeNode*ptr=(*(nextNode[0]))->left; free(ptr);
                }
                else
                {
                    /*Freeing the pointer and then assigning null reference or pointer*/
                    (*(nextNode[0]))->right=NULL; struct TreeNode*ptr=(*(nextNode[0]))->right; free(ptr);
                }
            }
        }
        else printf("%d not found in binary search tree\n", element);
    }
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
        /*Printing the message for successful creation of BST, then taking
        user input for the element to be inserted in BST and calling
        insert function to insert the desired element in the BST*/
        printf("Successfully created binary search tree!\n"); int elm;
        printf("Enter element to be deleted from binary search tree:");
        scanf("%d", &elm); deleteFromBST(&root, elm);
        printf("The preorder traversal of binary search tree after deletion:\n");
        preorder(&root); printf("\n");

        /*Deallocating memory to created binary search tree*/
        freeBinarySearchTree(&root);
    }
    else printf("Binary search tree creation failed!\n");
    return 0;
}