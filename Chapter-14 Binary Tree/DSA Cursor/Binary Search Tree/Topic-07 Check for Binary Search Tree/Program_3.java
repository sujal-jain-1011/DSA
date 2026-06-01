/*Java program to implement a binary tree by allocating memory dynamically from the heap,
that means we are going to create a complete binary tree using queue data structure and
we are going to check whether the created binary tree is a valid binary search tree*/

/*Importing Scanner class from java.util for taking the input from user*/
import java.util.Scanner;

/*Declaring a class to implement the binary tree*/
class BinaryTree{
    /*Defining some class variables: capacity variable of int type for the capacity of binary tree, front and
    rear variables of int type for the front and rear indices of the queue, a root pointer to store the address
    of the root node of the binary tree, a ptr pointer to traverse the binary tree for it's creation and a queue
    pointer to store the address of the first cell that will created to implement the queue data structure*/
    int capacity, front=-1, rear=-1;

    /*Defining a class for pair data structure*/
    class pair<A, B>
    {
        /*Data memebers of class*/
        A first;
        B second;
        
        /*Parameterized constructor to initialize the data members of this class*/
        pair(A first, B second)
        {
            this.first=first;
            this.second=second;
        }
    }
    
    /*Defining a class for binary tree node that contains data, left and right child pointers
    and defining a function that will create a new node for the binary tree when called*/
    class TreeNode{
        int val;
        TreeNode left;
        TreeNode right;

        /*Parameterized constructor to initialize the data members of this class*/
        TreeNode(int data) {val=data; left=null; right=null;}
    };
    TreeNode root;
    TreeNode ptr; 
    TreeNode []que;

    /*Member function of class: to create a new node for the binary tree and returning it*/
    TreeNode createTreeNode(int data)
    {
        /*Dynamically allocating memory for the new node and checking if the memory allocation was successful
        if it was, then populating the node with the data passed to function and returning it's address*/
        try
        {
            /*Invoking constructor of the TreeNode class and returning the newly created node*/
            TreeNode newTreeNode=new TreeNode(data);
            return newTreeNode;
        }
        catch(OutOfMemoryError e)
        {
            System.out.println("Memory allocation failed for node of binary tree!");
            return null;
        }
    }

    /*Member function of class: to implement circular queue data structure that will be used to create a complete
    binary tree this function is going to take no arguments since we can directly access the capacity global variable*/
    boolean implementCircularQueue()
    {
        /*Allocating memory dynamically to create an array for implementing circular queue
        data structure and checking if the memory allocation was successful or not*/
        try {que=new TreeNode[capacity];}
        catch(OutOfMemoryError e)
        {
            System.out.println("Memory allocation failed for queue data structure!");
            return false;
        }

        /*Returning true if memory allocation was successful*/
        return true;
    }

    /*Member function of class: to check whether the circular queue is full or not
    if rear+1 mod capacity equals front then the queue is full otherwise it is not*/
    boolean isFull() {return (((rear+1)%capacity==front)?true:false);}

    /*Member function of class: to check whether the circular queue is empty or
    not if both front and rear equals -1 then queue is empty otherwise not*/
    boolean isEmpty() {return ((front==-1 && rear==-1)?true:false);}

    /*Member function of class: to implement the enqueue function for circular queue data structure*/
    void enqueue(TreeNode root_add)
    {
        /*Checking whether the queue is full or not using the isFull function,
        if it is full then we can't insert and hence return without enqueuing*/
        if(isFull()) 
        {
            System.out.println("Can't insert "+root_add.val+" into queue, since queue is full!");
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
    TreeNode dequeue()
    {
        /*Checking whether the queue is empty or not using the isEmpty function,
        if it is empty then we can't delete and hence return without dequeuing*/
        if(isEmpty()) 
        {
            System.out.println("Can't delete from queue, since queue is empty!");
            return null;
        }

        /*Getting the first element of queue and checking for
        last deletion from the circular queue data structure*/
        TreeNode start_elm=que[front];
        if(front==rear) front=rear=-1;
        else front=(front+1)%capacity;

        /*Returning the front element of queue*/
        return start_elm;
    }

    /*Member function of class: to create a complete binary tree using queue data structure*/
    boolean createBinaryTree()
    {
        /*Creating object of Scanner class to take input from user*/
        Scanner sc=new Scanner(System.in);
        
        /*Getting the input for capacity variable from user*/
        System.out.print("Enter the capacity of binary tree:");
        capacity=sc.nextInt();

        /*User is instructed to enter the capacity less than Integer.MAX_VALUE to avoid wrap around
        otherwise the result will not be as predicted because of the wrap around property,
        writing a basic check but it won't be evaluated because of the wrap around property*/
        if(capacity>Integer.MAX_VALUE || capacity<0)
        {
            System.out.println("Invalid user input for capacity!");
            return false;
        }

        /*Handling corner case: when capacity is zero*/
        if(capacity==0) {System.out.println("Binary tree is empty!"); return false;}

        /*Declaring an array to store the elements of the binary tree
        and taking the user input for the node values of the binary tree*/
        int []arr=new int[capacity];

        /*Running a loop to get the elements of binary tree from user*/
        System.out.println("Enter the elements of binary tree:");
        for(int i=0; i<capacity; i++)
        {
            System.out.print("Enter element "+i+" of binary tree:");
            arr[i]=sc.nextInt();
        }

        /*Calling implementCircularQueue to initialize the circular queue data structure
        and inserting the root node into the newly created circular queue data structure*/
        if(!implementCircularQueue()) return false;
        TreeNode root_start=createTreeNode(arr[0]);
        enqueue(root_start);

        /*Running a loop to create the binary tree from the user input elements*/
        int iter=1;
        while(iter<capacity)
        {
            /*Dequeuing the front element of queue and enqueuing it's child nodes into queue*/
            TreeNode currentTreeNode=dequeue();

            /*Checking for insertion in left child pointer*/
            if(currentTreeNode.left==null)
            {
                /*Creating new TreeNode for left child pointer and inserting into queue*/
                TreeNode left_child=createTreeNode(arr[iter++]);
                currentTreeNode.left=left_child;
                enqueue(left_child);
            }
            /*Checking for insertion in right child pointer*/
            if(iter<capacity && currentTreeNode.right==null)
            {
                /*Creating new TreeNode for left child pointer and inserting into queue*/
                TreeNode right_child=createTreeNode(arr[iter++]);
                currentTreeNode.right=right_child;
                enqueue(right_child);
            }
        }

        /*Assigning root_start to root global variable and returning one for successful creation of binary tree*/
        root=root_start;
        return true;
    }

    /*Member function of class: to print the preorder traversal the binary tree by taking the root node*/
    void preorder(TreeNode root_add)
    {
        /*Declaring base case for recursion: when the binary tree is/becomes empty*/
        if(root_add!=null)
        {
            /*Printing the value of current node to console, calling preorder function
            recursively for left subtree and then calling it recursively for right subtree*/
            System.out.print(root_add.val+" ");
            preorder(root_add.left);
            preorder(root_add.right);
        }
    }

    /*Member function of class: to check whether the given binary tree is a valid binary search tree
    or not, using the fact that inorder traversal of binary search tree is in strictly increasing order*/
    pair<Integer, Integer> checkBST(TreeNode root_add, boolean[] isBST)
    {
        /*Declaring base case for recursion: when binary tree is/becomes empty*/
        if(root_add!=null && isBST[0])
        {
            /*Declaring a pair data structure that is going to be returned by this function, we are
            going to populate this pair from the pairs returned by the calls for left and right subtree*/
            pair<Integer, Integer> pr=new pair(-1, -1);

            /*Declaring two boolean variables to check for existence of left and right subtrees
            and populating the pairs from the values returned by the left and right calls*/
            boolean isLeft=false, isRight=false;
            
            /*Calling the checkBST function recursively for left and right subtrees of the current node*/
            pair<Integer, Integer> lpr=new pair(null, null); pair<Integer, Integer> rpr=new pair(null, null);
            if(root_add.left!=null)
            {
                /*Declaring pair to store the min-max value pair returned by the function call for left subtree
                and we are also going to set the value of isLeft true so to indicate existence of left subtree*/
                lpr=checkBST(root_add.left, isBST); isLeft=true;
            }
            if(root_add.right!=null)
            {
                /*Declaring pair to store the min-max value pair returned by the function call for right subtree
                and we are also going to set the value of isRight true so to indicate existence of right subtree*/
                rpr=checkBST(root_add.right, isBST); isRight=true;
            }

            /*Creating the min-max pair from the min-max pairs returned by the function calls for left and right subtree
            for this we are going to have four cases: case-1: when both the left and right subtrees of the current node
            are empty in that case we are going to return current node value as the min-max pair, case-2: when right subtree
            of the current node is empty but not the left subtree in that case we are going to have min from the left
            subtree as the new min and current node's value as the new max, case-3: when left subtree of the current node
            is empty but not the right subtree in that case we are going to have new min as current node's value and max
            from right subtree as the new max, case-4: when both the subtrees are non-empty in that we are going to have
            new min as min from pair returned by left subtree and new max as max from the pair returned by right subtree*/
            if(isBST[0])
            {
                if(!isLeft && !isRight)
                {
                    /*Both the subtrees of current node are empty*/
                    pr.first=pr.second=root_add.val;
                }
                else if(isLeft && !isRight)
                {
                    /*Left subtree is non-empty but right subtree is empty*/
                    if(lpr.second>=root_add.val) isBST[0]=false;
                    pr.first=lpr.first; pr.second=root_add.val;
                }
                else if(!isLeft && isRight)
                {
                    /*Left subtree is empty but right subtree is non-empty*/
                    if(rpr.first<=root_add.val) isBST[0]=false;
                    pr.first=root_add.val; pr.second=rpr.second;
                }
                else
                {
                    /*Both the left and right subtrees are non-empty*/
                    if(lpr.second>=root_add.val || rpr.first<=root_add.val) isBST[0]=false;
                    pr.first=lpr.first; pr.second=rpr.second;
                }
            }

            /*Returning the min-max pair from this function call*/
            return pr;
        }
        else {pair<Integer, Integer> pr=new pair<>(null, null); return pr;}
    }
};

/*Defining Program_1 class(driver code)*/
public class Program_3
{
    /*Defining main function*/
    public static void main(String[] args)
    {
        /*Declaring object of class BinaryTree*/
        BinaryTree BT=new BinaryTree();
    
        /*Checking whether the binary tree creation failed or not*/
        if(BT.createBinaryTree())
        {
            System.out.println("Successfully created binary tree!");
            System.out.println("The preorder traversal of binary tree is:");
            BT.preorder(BT.root); System.out.println();
    
            /*Calling checkBST function to check whether the binary tree is BST or not*/
            boolean[] isBST=new boolean[1]; isBST[0]=true;
            BT.checkBST(BT.root, isBST); if(isBST[0]) System.out.println("Given binary tree is a valid binary search tree");
            else System.out.println("Given binary tree is not a valid binary search tree");
        }
        else System.out.println("Binary tree creation failed!");
    }
}