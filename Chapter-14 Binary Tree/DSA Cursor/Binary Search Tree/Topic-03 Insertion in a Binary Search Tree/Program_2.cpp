/*C++ program to implement a binary search tree by allocating memory dynamically from the heap,
that means we are going to create a binary search tree using queue data structure and an array
and insert an element in the binary search tree from the given user input using iterative approach*/

/*Including iostream header file for input and output functions, limits.h header
file for using ULLONG_MAX, new header file for memory allocation functions and
algorithms header file for using the standard sort function for sorting an array*/
#include<iostream>
#include<limits.h>
#include<new>
#include<algorithm>

/*Using standard namespace*/
using namespace std;

/*Declaring a class to implement the binary search tree*/
class BinarySearchTree{
    
    public:
        /*Defining some class variables: capacity variable of long long unsigned int type for the capacity of binary search tree,
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

        /*Member function of class: to create a new node for the binary search tree and returning it*/
        struct TreeNode* createTreeNode(int data)
        {
            /*Dynamically allocating memory for the new node using malloc function and checking if the memory allocation was
            successful if it was, then populating the node with the data passed to function and returning it's address*/
            struct TreeNode* newTreeNode=new(nothrow) struct TreeNode;
            if(newTreeNode==nullptr)
            {
                cout<<"Memory allocation failed for node of binary search tree!"<<endl;
                return nullptr;
            }
            
            /*Assigning the data passed to function to the val field of the new
            node and initializing the left and right child pointers to NULL*/
            newTreeNode->val=data;
            newTreeNode->left=nullptr;
            newTreeNode->right=nullptr;

            /*Returning the newly created node*/
            return newTreeNode;
        }

        /*Member function of class: to implement circular queue data structure that will be used to create a complete
        binary search tree this function is going to take no arguments since we can directly access the capacity global variable*/
        bool implementCircularQueue()
        {
            /*Allocating memory dynamically to create an array for implementing circular queue
            data structure and checking if the memory allocation was successful or not*/
            que=new(nothrow) struct TreeNode*[capacity];
            if(que==nullptr)
            {
                cout<<"Memory allocation failed for queue data structure!"<<endl;
                return false;
            }

            /*Returning true if memory allocation was successful*/
            return true;
        }

        /*Member function of class: to check whether the circular queue is full or not
        if rear+1 mod capacity equals front then the queue is full otherwise it is not*/
        bool isFull() {return (((rear+1)%capacity==front)?1:0);}

        /*Member function of class: to check whether the circular queue is empty or not
        if both front and rear equals ULLONG_MAX then queue is empty otherwise not*/
        bool isEmpty() {return ((front==ULLONG_MAX && rear==ULLONG_MAX)?1:0);}

        /*Member function of class: to implement the enqueue function for circular queue data structure*/
        void enqueue(struct TreeNode* root_add)
        {
            /*Checking whether the queue is full or not using the isFull function,
            if it is full then we can't insert and hence return without enqueuing*/
            if(isFull()) 
            {
                cout<<"Can't insert "<<root_add->val<<" into queue, since queue is full!"<<endl;
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

        /*Member function of class: to implement the dequeue function for circular queue data structure*/
        struct TreeNode* dequeue()
        {
            /*Checking whether the queue is empty or not using the isEmpty function,
            if it is empty then we can't delete and hence return without dequeuing*/
            if(isEmpty()) 
            {
                cout<<"Can't delete from queue, since queue is empty!"<<endl;
                return nullptr;
            }

            /*Getting the first element of queue and checking for
            last deletion from the circular queue data structure*/
            struct TreeNode* start_elm=que[front];
            if(front==rear) front=rear=ULLONG_MAX;
            else front=(front+1)%capacity;

            /*Returning the front element of queue*/
            return start_elm;
        }
        
        /*Member function of class: to implement the binary search tree using the array elements (after sorting it), by
        choosing the middle element as the root element of the BST and doing it recursively for left and right subtrees*/
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
            else return nullptr;
        }

        /*Member function of class: to create a complete binary search tree using queue data structure*/
        bool createBinarySearchTree()
        {
            /*Getting the input for capacity variable from user*/
            cout<<"Enter the capacity of binary search tree:";
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
            if(capacity==0) {cout<<"binary search tree is empty!"<<endl; return false;}

            /*Declaring an array to store the elements of the binary search tree
            and taking the user input for the node values of the binary search tree*/
            int *arr=new(nothrow) int[capacity];

            /*Running a loop to get the elements of binary search tree from user*/
            cout<<"Enter the elements of binary search tree:"<<endl;
            for(long long unsigned int i=0; i<capacity; i++)
            {
                cout<<"Enter element "<<i<<" of binary search tree:";
                cin>>arr[i];
            }

            /*Calling standard sort function with the array as argument to sort the elements of array in ascending order
            and then implementBinarySearchTree function with the sorted array as argument to construct binary search tree
            and assigning the root node of the BST created by implementBinarySearchTree function to root global variable*/
            sort(arr, arr+capacity); root=implementBinarySearchTree(arr, 0, capacity-1);

            /*Freeing up the memory allocated to array and returning true for successful creation of binary search tree*/
            delete[] arr;
            return true;
        }

        /*Member function of class: to print the preorder traversal of the binary search tree by taking the address of root node*/
        void preorder(struct TreeNode** root_add)
        {
            /*Declaring base case for recursion: when the binary search tree is/becomes empty*/
            if((*root_add))
            {
                /*Printing the value of current node to console, calling preorder function
                recursively for left subtree and then calling it recursively for right subtree*/
                cout<<(*root_add)->val<<" ";
                preorder(&((*root_add)->left));
                preorder(&((*root_add)->right));
            }
        }

        /*Member function of class: to insert an element into the binary search tree given by user as input*/
        void insert(struct TreeNode** parentNode, struct TreeNode** childNode, int element)
        {
            /*Declaring base case for recursion: when childNode pointer is/becomes empty or null*/
            while(*(childNode))
            {
                /*Comparing childNode element with that of user input element and if that user
                input element is greater than current childNode element then we will be moving
                to right subtree of childNode otherwise will be moving to the left subtree*/
                if((*(childNode))->val>element){parentNode=childNode; childNode=&((*(childNode))->left);}
                else if((*(childNode))->val<element){parentNode=childNode; childNode=&((*(childNode))->right);}
                else{cout<<"Duplicate element not allowed"<<endl; return;}
            }
            
            /*Creating the TreeNode for the current element and inserting the element into BST*/
            struct TreeNode* newNode=createTreeNode(element);

            /*Checking if the binary search tree is empty or not in that case we need to do some extra work*/
            if(!parentNode) root=newNode;
            else
            {
                /*Binary search tree is not empty so we need to insert using the parentNode*/
                if((*(parentNode))->val<element) (*(parentNode))->right=newNode;
                else (*(parentNode))->left=newNode;
            }
        }

        /*Member function of class: to deallocate the space allocated to binary search tree in order to avoid memory
        leakages, for that we are going to do the postorder traversal of binary search tree in order to deallocate
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
                delete (*root_add);
            }
        }
};

/*Defining main function(driver code)*/
int main(void)
{
    /*Declaring object of class BinarySearchTree*/
    BinarySearchTree BST;
    
    /*Checking whether the binary search tree creation failed or not*/
    if(BST.createBinarySearchTree())
    {
        /*Printing the message for successful creation of BST, then taking
        user input for the element to be inserted in BST and calling
        insert function to insert the desired element in the BST*/
        cout<<"Successfully created binary search tree!"<<endl; int elm;
        cout<<"Enter element to be inserted in binary search tree:";
        cin>>elm; BST.insert(nullptr, &(BST.root), elm);
        cout<<"The preorder traversal of binary search tree after insertion:"<<endl;
        BST.preorder(&(BST.root)); cout<<endl;
        
        /*Deallocating memory to created binary search tree*/
        BST.freeBinarySearchTree(&(BST.root));
    }
    else cout<<"Binary search tree creation failed!"<<endl;
    return 0;
}