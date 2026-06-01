/*Java program to implement a binary search tree by allocating memory dynamically from the heap,
that means we are going to create a binary search tree using queue data structure and an array
and print the preorder traversal of binary search tree using the depth first search algorithm*/

/*Importing all classes from java.util for taking the input from user*/
import java.util.*;

/*Declaring a class to implement the binary search tree*/
class BinarySearchTree{
    /*Defining some class variables: capacity variable of int type for the capacity of binary search tree, front and
    rear variables of int type for the front and rear indices of the queue, a root pointer to store the address
    of the root node of the binary search tree, a ptr pointer to traverse the binary search tree for it's creation and a queue
    pointer to store the address of the first cell that will created to implement the queue data structure*/
    int capacity, front=-1, rear=-1;

    /*Defining a class for binary search tree node that contains data, left and right child pointers
    and defining a function that will create a new node for the binary search tree when called*/
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

    /*Member function of class: to create a new node for the binary search tree and returning it*/
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
            System.out.println("Memory allocation failed for node of binary search tree!");
            return null;
        }
    }

    /*Member function of class: to implement circular queue data structure that will be used to create a complete
    binary search tree this function is going to take no arguments since we can directly access the capacity global variable*/
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

    /*Member function of class: to implement the binary search tree using the array elements (after sorting it), by
    choosing the middle element as the root element of the BST and doing it recursively for left and right subtrees*/
    TreeNode implementBinarySearchTree(int[] arr, int low, int high)
    {
        /*Declaring base case for recursion: when low is greater than high then we can't create a BST*/
        if(low<=high)
        {
            /*Getting the middle element of the array using low and high iterators, creating root node with this
            element and then calling implementBinarySearchTree function recursively for left and right subtrees*/
            int mid=low+(high-low)/2;
            TreeNode rootNode=createTreeNode(arr[mid]);
            rootNode.left=implementBinarySearchTree(arr, low, mid-1);
            rootNode.right=implementBinarySearchTree(arr, mid+1, high);

            /*Returning root node of the created binary search subtree*/
            return rootNode;
        }
        else return null;
    }

    /*Member function of class: to create a complete binary search tree using queue data structure*/
    boolean createBinarySearchTree()
    {
        /*Creating object of Scanner class to take input from user*/
        Scanner sc=new Scanner(System.in);
        
        /*Getting the input for capacity variable from user*/
        System.out.print("Enter the capacity of binary search tree:");
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
        if(capacity==0) {System.out.println("binary search tree is empty!"); return false;}

        /*Declaring an array to store the elements of the binary search tree
        and taking the user input for the node values of the binary search tree*/
        int []arr=new int[capacity];

        /*Running a loop to get the elements of binary search tree from user*/
        System.out.println("Enter the elements of binary search tree:");
        for(int i=0; i<capacity; i++)
        {
            System.out.print("Enter element "+i+" of binary search tree:");
            arr[i]=sc.nextInt();
        }

        /*Calling standard sort function with the array as argument to sort the elements of array in ascending order
        and then implementBinarySearchTree function with the sorted array as argument to construct binary search tree
        and assigning the root node of the BST created by implementBinarySearchTree function to root global variable*/
        Arrays.sort(arr); root=implementBinarySearchTree(arr, 0, capacity-1);

        /*Returning true for successful creation of binary search tree*/
        return true;
    }

    /*Member function of class: to print the preorder traversal of the binary search tree by taking the root node*/
    void preorder(TreeNode root_add)
    {
        /*Declaring base case for recursion: when the binary search tree is/becomes empty*/
        if(root_add!=null)
        {
            /*Printing the value of current node to console, calling preorder function
            recursively for left subtree and then calling it recursively for right subtree*/
            System.out.print(root_add.val+" ");
            preorder(root_add.left);
            preorder(root_add.right);
        }
    }

    /*Member function of class: to print the inorder traversal of the binary search tree by taking the address of root node*/
    void inorder(TreeNode root_add)
    {
        /*Declaring base case for recursion: when the binary search tree is/becomes empty*/
        if(root_add!=null)
        {
            /*Calling inorder function recursively for left subtree, printing the value of
            current node to console, and then calling it recursively for right subtree*/
            inorder(root_add.left);
            System.out.println(root_add.val);
            inorder(root_add.right);
        }
    }

    /*Member function of class: to populate an array (vector) from the inorder traversal of the BST*/
    void inorderPopulate(TreeNode root_add, List<TreeNode> arr)
    {
        /*Declaring base case for recursion: when binary search tree is/becomes empty*/
        if(root_add!=null)
        {
            /*Calling the inorderPopulate function recursively for left subtree, then
            pushing the address of current node into array (vector) and then calling
            inorderPopulate function recursively for the right subtree of current node*/
            inorderPopulate(root_add.left, arr);
            arr.add(root_add);
            inorderPopulate(root_add.right, arr);
        }
    }

    /*Member function of class: to recover binary search tree from given binary tree*/
    void recoverBST(TreeNode root_add, TreeNode[] arr)
    {
        /*Declaring base case for recursion: when binary search tree is/becomes empty*/
        if(root_add!=null)
        {
            /*Calling recoverBST function recursively for the left subtree of current node, proecessing the
            current node and then calling recoverBST function recursively fo right subtree of current node*/
            recoverBST(root_add.left, arr);
            if(arr[1]==null) arr[1]=root_add;
            else
            {
                /*Setting the values of arr[0], arr[1] and checking whether there is any offchart element or not*/
                arr[0]=arr[1]; arr[1]=root_add;
                if(arr[2]==null && arr[0].val>arr[1].val){arr[2]=arr[0]; arr[4]=arr[1];}
                else if(arr[2]!=null && arr[3]==null && arr[0].val>arr[1].val){arr[3]=arr[1];}
            }
            recoverBST(root_add.right, arr);
        }
    }
};

/*Defining Program_1 class(driver code)*/
public class Program_1
{
    /*Defining main function*/
    public static void main(String[] args)
    {
        /*Creating object of class BinarySearchTree*/
        BinarySearchTree BST=new BinarySearchTree();
        
        /*Checking whether the binary search tree creation failed or not*/
        if(BST.createBinarySearchTree())
        {
            System.out.println("Successfully created binary search tree!");
            System.out.println("The preorder traversal of binary search tree is:");
            BST.preorder(BST.root);
            System.out.println();

            /*Calling inorderPopulate function to populate a vector from the inorder
            traversal of the binary search tree which will be used to swap exactly
            two node values of the binary search (taking input from the user)*/
            List<BinarySearchTree.TreeNode> arr=new ArrayList<>();
            int iter=0; BST.inorderPopulate(BST.root, arr);

            /*Taking input from the user to swap exactly two node values of BST for which
            user is requested to enter positive values (including zero) otherwise the result
            will not be as predicted because of the wrap around property of unsigned data type*/
            Scanner sc=new Scanner(System.in); int first, second;
            System.out.println("Enter the node indices of whose data you need to swap:");
            first=sc.nextInt(); second=sc.nextInt();

            /*Swapping the node values of the indices (nodes in the inorder traversal of BST) given by user*/
            int temp=arr.get(first).val; arr.get(first).val=arr.get(second).val; arr.get(second).val=temp; 

            /*Calling the inorder function after distorting the binary search tree to print
            inorder traversal of the distorted BST then calling recoverBST to recover the actual
            BST from the distorted BST and again calling inorder function to print the traversal*/
            System.out.println("The inorder traversal of BST after distortion is:");
            BST.inorder(BST.root); System.out.println();

            /*Declaring an arry of five pointer variables to keep track of out of order nodes
            in BST and calling recoverBST function to recover the BST from the distorted BST*/
            BinarySearchTree.TreeNode[] array=new BinarySearchTree.TreeNode[BST.capacity];
            for(int it=0; it<5; it++) array[it]=null;
            System.out.println("Recovering BST..."); BST.recoverBST(BST.root, array);
            if(array[3]==null){int temp1=array[2].val; array[2].val=array[4].val; array[4].val=temp1;}
            else{int temp2=array[2].val; array[2].val=array[4].val; array[4].val=temp2;}

            /*Calling inorder function to print the inorder traversal of the recovered BST*/
            System.out.println("The inorder traversal of recovered BST is:"); BST.inorder(BST.root); System.out.println();
        }
        else
        System.out.println("Binary search tree creation failed!");
    }
}