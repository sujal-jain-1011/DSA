/*Java program to implement a binary tree by allocating memory dynamically from the heap,
that means we are going to create a complete binary tree using queue data structure and
we are going to convert the binary tree into a doubly linked list with same structure*/

/*Importing Scanner class for taking the input from user from java.util*/
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
            this.first = first;
            this.second = second;
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

    /*Member function of class: to print the preorder traversal the binary tree by taking the address of root node*/
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

    /*Member function of class: to traverse the doubly linked list that means printing the node value and previous and next addresses*/
    void DLLTraversal(TreeNode headPtr)
    {
        /*Printing the value and address of current node and addresses of previous and next nodes*/
        while(headPtr!=null)
        {
            /*Printing the value and address of current node*/
            System.out.println("The value of current node is:"+headPtr.val);
            System.out.println("The address of current node is:"+headPtr);

            /*Printing the addresses of previous node and next node*/
            System.out.println("The address of previous node is:"+headPtr.left);
            System.out.println("The address of next node is:"+headPtr.right);
            System.out.println();

            /*Updating the value of headPtr*/
            headPtr=headPtr.right;
        }
    }

    /*Member function of class: to convert a binary tree to a doubly linked list using recursive approach*/
    pair<TreeNode, TreeNode> btToDLL(TreeNode root_add)
    {
        /*Declaring base case for recursion: when binary tree is/becomes empty*/
        if(root_add!=null)
        {
            /*Calling the function recursively for left subtree of current node and getting the output returned
            by left call into a pointer to a custom pair and extracting it's contents into two pointers*/
            pair<TreeNode, TreeNode> leftPair=btToDLL(root_add.left);
            TreeNode leftHead=leftPair.first;
            TreeNode leftTail=leftPair.second;

            /*Checking whether the extracted pointers require modifications or not
            and then linking them to the current node to form linked list structure*/
            if(leftHead==null) leftHead=root_add; root_add.left=leftTail;
            if(leftTail!=null) leftTail.right=root_add; else leftTail=root_add;

            /*Calling the function recursively for right subtree of current node and getting the output returned
            by left call into a pointer to a custom pair and extracting it's contents into two pointers*/
            pair<TreeNode, TreeNode> rightPair=btToDLL(root_add.right);
            TreeNode rightHead=rightPair.first;
            TreeNode rightTail=rightPair.second;

            /*Checking whether the extracted pointers require modifications or not
            and then linking them to the current node to form linked list structure*/
            if(rightTail==null) rightTail=root_add; root_add.right=rightHead;
            if(rightHead!=null) rightHead.left=root_add; else rightHead=root_add;

            /*Returning the pair containing the head and tail of doubly linked list of current subtree*/
            pair<TreeNode, TreeNode> retValue=new pair<>(leftHead, rightTail);
            return retValue;
        }
        else
            /*Returning a pair of NULL pointers if the current node does not exist*/
            return new pair<>(null, null);
    }
};

/*Defining Program_1 class(driver code)*/
public class Program_1
{
    /*Defining main function*/
    public static void main(String[] args)
    {
        /*Declaring object of class BinaryTree*/
        BinaryTree BT=new BinaryTree();
    
        /*Checking whether the binary tree creation failed or not*/
        if(BT.createBinaryTree())
            {
                /*Printing the success message and calling preorder
                function to print the preorder traversal of binary tree*/
                System.out.println("Successfully created binary tree!");
                System.out.println("The preorder traversal of binary tree before conversion is:");
                BT.preorder(BT.root); System.out.println();
                
                /*Calling btToDLL function to convert binary tree to doubly linked list and
                then calling DLLTraversal function to print the traversal of linked list*/
                BinaryTree.pair<BinaryTree.TreeNode, BinaryTree.TreeNode> headPair=BT.btToDLL(BT.root); BT.root=headPair.first;
                System.out.println("The traversal of doubly linked list is:");
                BT.DLLTraversal(BT.root);
            }
        else System.out.println("Binary trees creation failed!");
    }
}
