/*C++ program to implement a binary tree by allocating memory dynamically from the heap,
that means we are going to create a complete binary tree using queue data structure and we
are also going to find out whether a path exists in the binary tree with given sum or not*/

/*Including iostream header file for input and output functions, limits.h header
file for using ULLONG_MAX and new header file for memory allocation functions*/
#include<iostream>
#include<limits.h>
#include<new>
#include<vector>

/*Using standard namespace*/
using namespace std;

/*Declaring a class to implement the binary tree*/
class BinaryTree{
    
    public:
        /*Defining some class variables: capacity variable of long long unsigned int type for the capacity of binary tree,
        front and rear variables of long long unsigned int type for the front and rear indices of the queue, a root pointer to
        store the address of the root node of the binary tree, a ptr pointer to traverse the binary tree for it's creation
        and a queue pointer to store the address of the first cell that will be created to implement the queue data structure*/
        long long unsigned int capacity, front=ULLONG_MAX, rear=ULLONG_MAX, isFound=false;

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

            /*User is instructed to enter the capacity less than ULLONG_MAX to avoid wrap around
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

        /*Member function of class: to print the preorder traversal the binary tree by taking the address of root node*/
        void preorder(struct TreeNode** root_add)
        {
            /*Declaring base case for recursion: when the binary tree is/becomes empty*/
            if((*root_add))
            {
                /*Printing the value of current node to console, calling preorder function
                recursively for left subtree and then calling it recursively for right subtree*/
                cout<<(*root_add)->val<<" ";
                preorder(&((*root_add)->left));
                preorder(&((*root_add)->right));
            }
        }

        /*Member function of class: to check whether a path exists in the binary tree with given sum or not*/
        void isPathExist(struct TreeNode** root_add, int targetSum, int sum)
        {
            /*Declaring base case for recursion: when binary tree is/becomes empty or path is found*/
            if((*root_add) && !isFound)
            {
                /*Adding the value of current node into sum variable and checking whether the current node is a leaf node or
                not, if the current node is a leaf node and sum equals target sum then we are going to change isFound to true*/
                sum+=(*root_add)->val;
                if(!(*root_add)->left && !(*root_add)->right && sum==targetSum) {isFound=true; return;}
                
                /*Calling the isPathExist function recursively for left and right subtrees of current node*/
                isPathExist(&((*root_add)->left), targetSum, sum);
                isPathExist(&((*root_add)->right), targetSum, sum);
            }
        }

        /*Member function of class: to deallocate the space allocated to binary tree in order to avoid memory
        leakages, for that we are going to do the postorder traversal of binary tree in order to deallocate
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
                delete (*root_add);
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
        cout<<"The preorder traversal of binary tree is:"<<endl;
        BT.preorder(&(BT.root));
        cout<<endl;

        /*Taking the user input for the target sum*/
        int targetSum;
        cout<<"Enter the target sum:";
        cin>>targetSum;

        /*Calling the isPathExist function to check whether a path exists in the binary tree with given sum or not*/
        BT.isPathExist(&(BT.root), targetSum, 0);

        /*Checking whether the path exists or not*/
        if(BT.isFound) cout<<"Path exists in the binary tree with given sum!"<<endl;
        else cout<<"Path does not exist in the binary tree with given sum!"<<endl;

        /*Deallocating memory to created binary tree and
        the queue used for creating the binary tree*/
        BT.freeBinaryTree(&(BT.root));
        delete[] BT.que;
    }
    else cout<<"Binary tree creation failed!"<<endl;
    return 0;
}