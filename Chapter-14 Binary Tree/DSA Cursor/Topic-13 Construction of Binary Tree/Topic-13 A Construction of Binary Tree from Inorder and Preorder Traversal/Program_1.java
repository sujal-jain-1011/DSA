/*Java program to implement a binary tree by allocating memory dynamically from the heap,
that means we are going to create a complete binary tree using queue data structure and we
are also going to construct a binary tree from given inorder and preorder traversal vectors*/

/*Importing HashMap class to implement Map class, Map class to implement
unordered_map and Scanner class for taking the input from user from java.util*/
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

/*Declaring a class to implement the binary tree*/
class BinaryTree{
    /*Defining some class variables: capacity variable of int type for the capacity of binary tree, front and
    rear variables of int type for the front and rear indices of the queue, a root pointer to store the address
    of the root node of the binary tree, a ptr pointer to traverse the binary tree for it's creation and a queue
    pointer to store the address of the first cell that will created to implement the queue data structure*/
    int capacity, front=-1, rear=-1, iter=0;

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

    /*Member function of class: to print the postorder traversal the binary tree by taking the address of root node*/
    void postorder(TreeNode root_add)
    {
        /*Declaring base case for recursion: when the binary tree is/becomes empty*/
        if(root_add!=null)
        {
            /*Calling postorder function recursively for left subtree, then calling it
            recursively for right subtree and printing the value of current node to console*/
            postorder(root_add.left);
            postorder(root_add.right);
            System.out.print(root_add.val+" ");
        }
    }

    /*Helper member function of class: to build binary tree recursively from inorder and preorder traversal vector*/
    TreeNode helperCreateBT(Map<Integer, Integer> hmap, int low, int high, int[] in, int[] pre)
    {
        /*Declaring base case for recursion: when low exceeds high*/
        if(low<=high && iter<capacity)
        {
            /*Getting the index of current element of preorder vector in inorder traversal vector and creating the root
            node for the current element and linking the root node with the corresponding left and right subtrees*/
            int idx=hmap.get(pre[iter]);
            TreeNode r=createTreeNode(pre[iter++]);

            /*Calling helperCreateBT for left and right subtrees after doing a safety
            check on idx variable to avoid wrapping around of the idx variable*/
            r.left=idx>0?helperCreateBT(hmap, low, idx-1, in, pre):null;
            r.right=helperCreateBT(hmap, idx+1, high, in, pre);

            /*Returning newly created root node*/
            return r;
        }
        else return null;
    }

    /*Member function of class: to create binary tree from given inorder and preorder traversal
    vector by taking input from user for the inorder and preorder traversal vectors*/
    TreeNode createBT()
    {
        /*Declaring object of Scanner class to take user input*/
        Scanner sc=new Scanner(System.in);
        
        /*Declaring two pointers to integer/arrays/list to store the inorder and preorder traversal vectors,
        allocating memory to these pointer variables dynamically and checking for memory allocation*/
        int []in;
        int []pre;
        
        /*Checking whether the memory allocation failed or not for in and pre pointers*/
        try {in=new int[capacity];}
        catch(OutOfMemoryError e)
        {
            /*Printing the error message and returning*/
            System.err.println("Memory allocation failed for inorder vector!");
            return null;
        }
        try {pre=new int[capacity];}
        catch(OutOfMemoryError e)
        {
            /*Printing the error message and returning*/
            System.err.println("Memory allocation failed for preorder vector!");
            return null;
        }

        /*Taking user input for inorder and preorder traversal vectors*/
        for(int i=0; i<capacity; i++) {System.out.print("Enter element "+i+" of inorder traversal vector:"); in[i]=sc.nextInt();}
        for(int i=0; i<capacity; i++) {System.out.print("Enter element "+i+" of preorder traversal vector:"); pre[i]=sc.nextInt();}

        /*Declaring and populating an unordered map(~GenericMap) to store the elements of inorder
        vector with the elements of vectors as keys and their indices as corresponding values*/
        Map<Integer, Integer> hmap=new HashMap<>();
        for(int i=0; i<capacity; i++) hmap.put(in[i], i);

        /*Calling a helper function that will recusively build the binary tree
        and will return the root node of the newly created binary tree*/
        return helperCreateBT(hmap, 0, capacity-1, in, pre);
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
        if(BT.createBinaryTree()) System.out.println("Successfully created binary tree!");
        else System.out.println("Binary tree creation failed!");

        /*Calling createBT function to create binary tree from inorder and preorder traversal vectors
        and then the postorder function to perform the postorder traversal of the binary tree*/
        BT.root=BT.createBT();
        System.out.println("The postorder traversal of the binary tree is:");
        BT.postorder(BT.root);
        System.out.println();
    }
}