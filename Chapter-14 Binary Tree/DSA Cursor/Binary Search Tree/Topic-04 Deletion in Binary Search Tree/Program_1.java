/*Java program to implement a binary search tree by allocating memory dynamically from the heap,
that means we are going to create a binary search tree using queue data structure and an array
and delete an element from the binary search tree from the given user input using recursion*/

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

    /*Member function of class: to get the inorder predecessor or inorder successor of a node*/
    List<TreeNode> getNext(TreeNode currentNode)
    {
        /*If this function is called then that means the node to be deleted is not a leaf node
        so we need to find the inorder predecessor or inorder successor of the current node and
        declaring a list of treenode which will contain successor and parent node of that successor*/
        List<TreeNode> tn=new ArrayList<>();
        
        /*First we are trying to find the inorder predecessor of the current node then we will try to get
        the inorder successor of the current node if the inorder predecessor is not possible to find*/
        if(currentNode.left!=null)
        {
            /*Running a while loop to get the right most node of binary search subtree rooted at current node
            and we are going to use parentNode and childNode pointers to keep track of parent and children*/
            TreeNode parentNode=currentNode, childNode=currentNode.left;
            while(childNode.right!=null){parentNode=childNode; childNode=childNode.right;}

            /*Checking whether childNode is leaf node or not, if yes then we are going to return this along
            with it's parent node otherwise we are going to find the predecessor or successor of this node*/
            if(childNode.left==null && childNode.right==null){tn.add(parentNode); tn.add(childNode);}
            else{tn=getNext(childNode);}
        }
        else if(currentNode.right!=null)
        {
            /*Running a while loop to get the left most node of binary search subtree rooted at current node
            and we are going to use parentNode and childNode pointers to keep track of parent and children*/
            TreeNode parentNode=currentNode, childNode=currentNode.right;
            while(childNode.left!=null){parentNode=childNode; childNode=childNode.left;}

            /*Checking whether childNode is leaf node or not, if yes then we are going to return this along
            with it's parent node otherwise we are going to find the predecessor or successor of this node*/
            if(childNode.left==null && childNode.right==null){tn.add(parentNode); tn.add(childNode);}
            else{tn=getNext(childNode);}
        }

        /*Retuning the list containing the parentNode (reference to the parent of the successor or predecessor)
        and childNode which is either the inorder predecessor or inorder successor and also a leaf node*/
        return tn;
    }

    /*Member function of class: to delete an element from the binary search tree given by user as input*/
    void deleteFromBST(TreeNode root_add, int element)
    {
        /*Handling corner cases: when either the BST is empty or there is only one element in it*/
        if(root_add==null) System.out.println("Can't delete "+element+" from binary search tree since BST is empty");
        else if(root_add.left==null && root_add.right==null)
        {
            /*In this case we are going to have two subcases: when the element is root node's value
            then we are going to delete that root node and set member root node to null else return*/
            if(root_add.val==element) this.root=null;
            else System.out.println("Can't delete "+element+" from binary search tree");
        }
        
        /*If we are in this else block then the binary search tree definitely contains more than one node*/
        else
        {
            /*Declaring two pointers (parent and child pointer) to iterate the binary search
            tree for finding the element to be deleted from the given binary search tree and
            a boolean variable to check whether the user given element is found in BST or not*/
            TreeNode parentNode=null, childNode=root_add; boolean isFound=false;

            /*Iterating the given binary search tree to find the user given element*/
            while(childNode!=null)
            {
                /*If current node element is greater than the element to be deleted then we will be
                moving to the left subtree else if current node element is lesser than the element
                then we will be moving to the right subtree else if element is found then we are
                going to swap it with either it's inorder predecessor or successor and then we'll delete*/
                if(childNode.val>element){parentNode=childNode; childNode=childNode.left;}
                else if(childNode.val<element){parentNode=childNode; childNode=childNode.right;}
                else
                {
                    /*Element is found in the binary search tree therefore we are setting isFound variable
                    to true and breaking the loop to transfer the control outside of the while loop*/
                    isFound=true; break;
                }
            }

            /*On the basis of isFound variable we are going to call getNext function to get the inorder
            predecessor or inorder successor of the node to be deleted if isFound is true else return*/
            if(isFound)
            {
                /*Checking if the current node which we need to delete is a leaf node or not if it is then delete it other
                wise we are going to call the getNext function to get the inorder predecessor or inorder successor of node*/
                if(childNode.left==null && childNode.right==null)
                {
                    /*Checking which child is childNode of the parentNode and then deleting
                    it by assigning null reference to that particular field of the parentNode*/
                    if(parentNode.left==childNode) parentNode.left=null;
                    else parentNode.right=null;
                }
                else
                {
                    /*Calling the getNext function to get the reference to parent node of the inorder predecessor or
                    inorder successor along with the reference to the inorder predecessor or inorder successor*/
                    List<TreeNode> nextNode=new ArrayList<>(getNext(childNode));
                    
                    /*Swapping the value of the node to be deleted with that of successor or predecessor*/
                    int temp=childNode.val; childNode.val=nextNode.get(1).val; nextNode.get(1).val=temp;
                    if(nextNode.get(0).left==nextNode.get(1)) nextNode.get(0).left=null;
                    else nextNode.get(0).right=null;
                }
            }
            else System.out.println(element+" not found in binary search tree");
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
        if(BST.createBinarySearchTree())
        {
            /*Printing the message for successful creation of BST, then taking
            user input for the element to be inserted in BST and calling
            insert function to insert the desired element in the BST*/
            System.out.println("Successfully created binary search tree!"); int elm;
            System.out.print("Enter element to be deleted from binary search tree:");
            Scanner sc=new Scanner(System.in); elm=sc.nextInt();
            BST.deleteFromBST(BST.root, elm);
            System.out.println("The preorder traversal of binary search tree after deletion:");
            BST.preorder(BST.root); System.out.println();
        }
        else
        System.out.println("Binary search tree creation failed!");
    }
}