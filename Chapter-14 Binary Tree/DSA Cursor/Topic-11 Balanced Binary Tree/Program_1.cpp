/*C++ program to implement a binary tree by allocating memory dynamically from the heap,
that means we are going to create a complete binary tree using queue data structure
and we are going to check whether the binary tree is height balanced or not*/

/*Including limits.h header file for using ULLONG_MAX, iostream header file for input
and output functions and new header file for memory allocation functions*/
#include<limits.h>
#include<iostream>
#include<new>

/*Using standard namespace*/
using namespace std;

/*Declaring a class to implement the binary tree*/
class BinaryTree{
    
    public:
        /*Defining some class variables: capacity variable of long long unsigned int type for the capacity of binary tree,
        front ad rear variables of long long unsigned int type for the front and rear indices of the queue, a root pointer to
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


        /*Member function of class: to create a new node for the binary tree and returning it*/
        struct TreeNode* createTreeNode(int data)
        {
            
            /*Dynamically allocating memory for the new node using malloc function and checking if the memory allocation was
            successful if it was, then populating the node with the data passed to function and returning it's address*/
            struct TreeNode* newTreeNode=new(nothrow) struct TreeNode;
            if(newTreeNode==nullptr)
            {
                cout<<"Memory allocation failed for node of binary tree!"<<endl;
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
        binary tree this function is going to take no arguments since we can directly access the capacity global variable*/
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
   
        /*Member function of class: to create a complete binary tree using queue data structure*/
        bool createBinaryTree()
        {
            /*Getting the input for capacity variable from user*/
            cout<<"Enter the capacity of binary tree:";
            cin>>capacity;

            /*User is instructed to enter the capacity less than LLONG_MAX to avoid wrap around
            otherwise the result will not be as predicted because of the wrap around property,
            writing a basic check but it won't be evaluated because of the wrap around property*/
            if(capacity>ULLONG_MAX || capacity<0)
            {
                cout<<"Invalid user input for capacity!"<<endl;
                return false;
            }

            /*Handling corner case: when capacity is zero*/
            if(capacity==0) {cout<<"Binary tree is empty!"<<endl; return false;}

            /*Declaring an array to store the elements of the binary tree
            and taking the user input for the node values of the binary tree*/
            int *arr=new(nothrow) int[capacity];

            /*Running a loop to get the elements of binary tree from user*/
            cout<<"Enter the elements of binary tree:"<<endl;
            for(long long unsigned int i=0; i<capacity; i++)
            {
                cout<<"Enter element "<<i<<" of binary tree:";
                cin>>arr[i];
            }

            /*Calling implementCircularQueue to initialize the circular queue data structure
            and inserting the root node into the newly created circular queue data structure*/
            if(!implementCircularQueue()) return false;
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
            return true;
        }

        /*Member function of class: to find the maximum of two long long unsigned integers*/
        long long unsigned int max(long long unsigned int a, long long unsigned int b) {return a>=b?a:b;}

        /*Member function of class: to find the absolute value of difference of two long long unsigned integers*/
        long long unsigned int llAbs(long long unsigned int a, long long unsigned int b) {return a>=b?(a-b):(b-a);}

        /*Member function of class: to check whether binary tree is height balanced or not, that means whether the
        difference between heights of left and right subtree for a current node is less than or equal to one or not*/
        long long unsigned int heightBalancedBT(struct TreeNode** root_add)
        {
            /*Declaring base case for recursion: when the current node is a leaf node,
            since leaf node is already height balanced, therefore returning one for it*/
            if(!(*root_add)->left && !(*root_add)->right) return 1;
            else
            {
                /*Declaring two variables leftHeight and rightHeight to get the heights of left and
                right subtree of the current node and checking whether they are height balanced or not*/
                long long unsigned int leftHeight=(*root_add)->left?heightBalancedBT(&((*root_add)->left)):0;
                if(leftHeight==ULLONG_MAX) return ULLONG_MAX;
                long long unsigned int rightHeight=(*root_add)->right?heightBalancedBT(&((*root_add)->right)):0;
                if(rightHeight==ULLONG_MAX) return ULLONG_MAX;

                /*Checking whether the current node is height balanced or not*/
                if(llAbs(leftHeight, rightHeight)<=1) return max(leftHeight, rightHeight)+1;
                else return ULLONG_MAX;
            }
        }
};

/*Defining main function(driver code)*/
int main(void)
{
    /*Declaring object of class BinaryTree*/
    BinaryTree BT;
    
    /*Checking whether the binary tree creation failed or not*/
    if(BT.createBinaryTree())
    {
        cout<<"Successfully created binary tree!"<<endl;
        if(BT.heightBalancedBT(&(BT.root))==ULLONG_MAX) cout<<"Binary tree is not height balanced!"<<endl;
        else cout<<"Binary tree is height balanced!"<<endl;
    }
    else cout<<"Binary tree creation failed!"<<endl;
    return 0;
}