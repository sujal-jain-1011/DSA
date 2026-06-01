/*Java program to implement a binary search tree by allocating memory dynamically from the heap,
that means we are going to create a binary search tree using queue data structure and an array
and we are also going to construct the binary search tree from the sorted linked list*/

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

    /*Defining a class for linked list node which we be using to create binary search tree
    from this class, it will contain data and a pointer to the next node of the linked list*/
    class ListNode{
        int val;
        ListNode next;

        /*Parameterized constructor to initialize the data members of this class*/
        ListNode(int data) {val=data; next=null;}
    };
    ListNode head=null;
    ListNode lptr=null;

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

    /*Member function of class: to create a new node for the binary search tree and returning it*/
    ListNode createListNode(int data)
    {
        /*Dynamically allocating memory for the new node and checking if the memory allocation was successful
        if it was, then populating the node with the data passed to function and returning it's address*/
        try
        {
            /*Invoking constructor of the TreeNode class and returning the newly created node*/
            ListNode newListNode=new ListNode(data);
            return newListNode;
        }
        catch(OutOfMemoryError e)
        {
            System.out.println("Memory allocation failed for node of linked list!");
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

    /*Member function of class: to create binary search tree from sorted linked list*/
    TreeNode createBST(ListNode newHead, ListNode newTail)
    {
        /*Declaring base case for recursion: when head's next is/becomes tail*/
        if(newHead==newTail)
        {
            /*Returning NULL pointer if newHead and newTail coincides*/
            return null;
        }
        else
        {
            /*Finding the middle node of the linked list using slow and fast pointer and then
            calling the function createBST recursively for creating left and right subtrees*/
            ListNode slow=newHead, fast=newHead;
            while(fast!=newTail && fast.next!=newTail){slow=slow.next; fast=fast.next.next;}

            /*Creating node for the middle element of the linked list and calling the function
            createBST recursively for creating left and right subtree of the current node*/
            TreeNode rootNode=createTreeNode(slow.val);
            rootNode.left=createBST(newHead, slow);
            rootNode.right=createBST(slow.next, newTail);

            /*Returning the root node of the created subtree*/
            return rootNode;
        }
    }

    /*Function to create a binary search tree from the sorted linked list, this function will
    first take the elements of linked list as user input, then will sort the linked list and
    then will call the other auxiliary function that will create the binary search tree*/
    boolean createLinkedList()
    {
        /*Getting the size and elements of linked list as user input and then sorting the
        linked list using naive approach here by putting the elements of linked list in
        an auxiliary array, then sorting that array and then assigning the elements back*/
        Scanner sc=new Scanner(System.in); int size;
        System.out.print("Enter the size of linked list:"); size=sc.nextInt();

        /*User is instructed to enter the capacity less than Integer.MAX_VALUE to avoid wrap around
        otherwise the result will not be as predicted because of the wrap around property,
        writing a basic check but it won't be evaluated because of the wrap around property*/
        if(size>Integer.MAX_VALUE || size<0)
        {
            System.out.println("Invalid user input for size!");
            return false;
        }

        /*Handling corner case: when capacity is zero*/
        if(size==0) {System.out.println("Linked list is empty!"); return false;}

        /*Running a loop to get the input from user for elements of linked list*/
        for(int iter=0; iter<size; iter++)
        {
            /*Getting the user input for iter+1 node and calling createListNode
            function to create a new node of linked list from the user given data*/
            int elm; System.out.print("Enter the value of node "+(iter+1)+":");
            elm=sc.nextInt(); ListNode temp=createListNode(elm);
            
            /*Checking whether the current node is first element of linked list or not*/
            if(head==null){head=lptr=temp;} else{lptr.next=temp; lptr=temp;}
        } lptr=head;

        /*Dynamically allocating memory to an array which is going to store the elements
        of linked list and then calling qsort function to sort the elements of linked list
        we are going to assume that memory allocation didn't fail for the array*/
        int []arr=new int[size]; int i=0;

        /*Copying the elements of linked list into the array, then sorting it and then
        again copying the sorted array to the linked list making it sorted as well*/
        while(lptr!=null){arr[i++]=lptr.val; lptr=lptr.next;} Arrays.sort(arr);
        i=0; lptr=head; while(lptr!=null){lptr.val=arr[i++]; lptr=lptr.next;} lptr=head;

        /*Calling createBST function to create a binary search tree from the sorted linked list*/
        root=createBST(lptr, null); return true;
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
};

/*Defining Program_1 class(driver code)*/
public class Program_1
{
    /*Defining main function*/
    public static void main(String[] args)
    {
        /*Declaring object of class BinarySearchTree*/
        BinarySearchTree BST=new BinarySearchTree();
    
        /*Checking whether the binary search tree creation failed or not*/
        if(BST.createLinkedList())
        {
            System.out.println("Successfully created binary search tree!");
            System.out.println("The preorder traversal of binary search tree is:");
            BST.preorder(BST.root);
            System.out.println();
        }
        else
        System.out.println("Binary search tree creation failed!");
    }
}