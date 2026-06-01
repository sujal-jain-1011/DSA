/*Java program to implement a binary tree by allocating memory dynamically from the heap,
that means we are going to create a complete binary tree using queue data structure and we
are also going to check whether two binary trees are identical(structure-wise and datawise)*/

/*Importing Scanner class from java.util for taking the input from user*/
import java.util.Scanner;

/*Declaring a class to implement the binary tree*/
class BinaryTree{
    /*Defining some class variables: capacity variable of int type for the capacity of binary tree, front and
    rear variables of int type for the front and rear indices of the queue, a root pointer to store the address
    of the root node of the binary tree, a ptr pointer to traverse the binary tree for it's creation and a queue
    pointer to store the address of the first cell that will be created to implement the queue data structure*/
    int []capacityArray, frontArray, rearArray;

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
    TreeNode []rootNodes;
    TreeNode ptr; 
    TreeNode [][]que;

    /*Member function of class: to allocate memory and initialize the
    data members of class: capacityArray, frontArray and rearArray*/
    void initialize()
    {
        /*Allocating memory to capacityArray, frontArray, rearArray and rootNodes and checking for memory allocation*/
        try{capacityArray=new int[2];} catch(OutOfMemoryError e){System.err.println("Memory allocation failed for capacity array!");}
        try{frontArray=new int[3];} catch(OutOfMemoryError e){System.err.println("Memory allocation failed for front array!");}
        try{rearArray=new int[3];} catch(OutOfMemoryError e){System.err.println("Memory allocation failed for rear array!");}
        try{rootNodes=new TreeNode[2];} catch(OutOfMemoryError e){System.out.println("Memory allocation failed for root node array!");}

        /*Initializing the elements of the frontArray and rearArray*/
        frontArray[0]=frontArray[1]=frontArray[2]=-1;
        rearArray[0]=rearArray[1]=rearArray[2]=-1;
    }

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
    boolean implementCircularQueue(int num, int capacity)
    {
        /*Allocating memory dynamically to create an array for implementing circular queue
        data structure and checking if the memory allocation was successful or not*/
        try{que=new TreeNode[2][];} catch(OutOfMemoryError e){System.out.println("Memory allocation failed for inner dimension of queue");}
        try {que[num]=new TreeNode[capacity];}
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
    boolean isFull(int num, int capacity) {return (((rearArray[num]+1)%capacity==frontArray[num])?true:false);}

    /*Member function of class: to check whether the circular queue is empty or
    not if both front and rear equals -1 then queue is empty otherwise not*/
    boolean isEmpty(int num) {return ((frontArray[num]==-1 && rearArray[num]==-1)?true:false);}

    /*Member function of class: to implement the enqueue function for circular queue data structure*/
    void enqueue(TreeNode root_add, int num, int capacity)
    {
        /*Checking whether the queue is full or not using the isFull function,
        if it is full then we can't insert and hence return without enqueuing*/
        if(isFull(num, capacity)) 
        {
            System.out.println("Can't insert "+root_add.val+" into queue, since queue is full!");
            return;
        }

        /*Checking for first insertion in the circular queue data structure*/
        if(isEmpty(num))
        {
            /*It is the first insertion in the queue data structure*/
            frontArray[num]+=1; rearArray[num]+=1;
            que[num][rearArray[num]]=root_add;
        }
        else {rearArray[num]=(rearArray[num]+1)%capacity; que[num][rearArray[num]]=root_add;}
    }

    /*Member function of class: to implement the dequeue function for circular queue data structure*/
    TreeNode dequeue(int num, int capacity)
    {
        /*Checking whether the queue is empty or not using the isEmpty function,
        if it is empty then we can't delete and hence return without dequeuing*/
        if(isEmpty(num)) 
        {
            System.out.println("Can't delete from queue, since queue is empty!");
            return null;
        }

        /*Getting the first element of queue and checking for
        last deletion from the circular queue data structure*/
        TreeNode start_elm=que[num][frontArray[num]];
        if(frontArray[num]==rearArray[num]) frontArray[num]=rearArray[num]=-1;
        else frontArray[num]=(frontArray[num]+1)%capacity;

        /*Returning the front element of queue*/
        return start_elm;
    }

    /*Member function of class: to create a complete binary tree using queue data structure*/
    boolean createBinaryTree(int num)
    {
        /*Creating object of Scanner class to take input from user*/
        Scanner sc=new Scanner(System.in);
        
        /*Getting the input for capacity variable from user*/
        System.out.print("Enter the capacity of binary tree "+num+":");
        capacityArray[num]=sc.nextInt();

        /*User is instructed to enter the capacity less than Integer.MAX_VALUE to avoid wrap around
        otherwise the result will not be as predicted because of the wrap around property,
        writing a basic check but it won't be evaluated because of the wrap around property*/
        if(capacityArray[num]>Integer.MAX_VALUE || capacityArray[num]<0)
        {
            System.out.println("Invalid user input for capacity!");
            return false;
        }

        /*Handling corner case: when capacity is zero*/
        if(capacityArray[num]==0) {System.out.println("Binary tree is empty!"); return false;}

        /*Declaring an array to store the elements of the binary tree
        and taking the user input for the node values of the binary tree*/
        int []arr=new int[capacityArray[num]];

        /*Running a loop to get the elements of binary tree from user*/
        System.out.println("Enter the elements of binary tree:");
        for(int i=0; i<capacityArray[num]; i++)
        {
            System.out.print("Enter element "+i+" of binary tree:");
            arr[i]=sc.nextInt();
        }

        /*Calling implementCircularQueue to initialize the circular queue data structure
        and inserting the root node into the newly created circular queue data structure*/
        if(!implementCircularQueue(num, capacityArray[num])) return false;
        TreeNode root_start=createTreeNode(arr[0]);
        enqueue(root_start, num, capacityArray[num]);

        /*Running a loop to create the binary tree from the user input elements*/
        int iter=1;
        while(iter<capacityArray[num])
        {
            /*Dequeuing the front element of queue and enqueuing it's child nodes into queue*/
            TreeNode currentTreeNode=dequeue(num, capacityArray[num]);

            /*Checking for insertion in left child pointer*/
            if(currentTreeNode.left==null)
            {
                /*Creating new TreeNode for left child pointer and inserting into queue*/
                TreeNode left_child=createTreeNode(arr[iter++]);
                currentTreeNode.left=left_child;
                enqueue(left_child, num, capacityArray[num]);
            }
            /*Checking for insertion in right child pointer*/
            if(iter<capacityArray[num] && currentTreeNode.right==null)
            {
                /*Creating new TreeNode for left child pointer and inserting into queue*/
                TreeNode right_child=createTreeNode(arr[iter++]);
                currentTreeNode.right=right_child;
                enqueue(right_child, num, capacityArray[num]);
            }
        }

        /*Assigning root_start to root global variable and returning one for successful creation of binary tree*/
        rootNodes[num]=root_start;
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

    /*Member function of class: to check whether two binary trees are identical or not*/
    boolean isIdentical(TreeNode root_add_1, TreeNode root_add_2)
    {
        /*We are going to have four cases: when both the binary trees become NULL or empty, in that case we are
        going to return one since both of them are identical, else if when exactly one of the binary trees
        become NULL or empty in that case we are going to return zero since the binary trees are not identical
        else when both of them are not NULL or non empty we are going to check for the remaining parts of tree*/
        if(root_add_1==null && root_add_2==null) return true;
        else if(root_add_1==null || root_add_2==null || root_add_1.val!=root_add_2.val) return false;
        else return isIdentical(root_add_1.left, root_add_2.left) && isIdentical(root_add_1.right, root_add_2.right);
    }

    /*Member function of class: to check whether second binary tree is subtree of first binary tree or not*/
    boolean isSubtree(TreeNode root_add_1, TreeNode root_add_2)
    {
        /*We are going to check whether the current node of second binary tree is null if yes
        then we are going to return one since empty binary tree is subtree of every binary tree,
        else if the current node of second binary tree is null then we are going to return zero
        else we are going to check for subtree condition calling function for subtrees*/
        if(root_add_2==null) return true;
        else if(root_add_1==null) return false;
        else
        {
            /*Checking whether the current node values match or not, if they do then we
            are going to call isSubtree function recursively for left and right subtrees*/
            if(root_add_1.val==root_add_2.val)
            {
                /*Calling isIdentical function to check whether the binary trees are identical or not if not then we are
                going to check whether the second binary tree is contained in left or right subtree of current node*/
                if(isIdentical(root_add_1, root_add_2)) return true;
                else
                return isSubtree(root_add_1.left, root_add_2) || isSubtree(root_add_1.right, root_add_2);
            }
            else return isSubtree(root_add_1.left, root_add_2) || isSubtree(root_add_1.right, root_add_2);
        }
    }
};

/*Defining Program_1 class(driver code)*/
public class Program_1
{
    /*Defining main function*/
    public static void main(String[] args)
    {
        /*Declaring object of class BinaryTree and calling
        initialize method to initialize data members*/
        BinaryTree BT=new BinaryTree();
        BT.initialize();
    
        /*Checking whether the binary tree creation failed or not*/
        if(BT.createBinaryTree(0) && BT.createBinaryTree(1))
            {
                /*Printing the success message and calling preorder
                function to print the preorder traversal of binary trees*/
                System.out.println("Successfully created both the binary trees!");
                System.out.println("The preorder traversal of binary tree 1 is:");
                BT.preorder(BT.rootNodes[0]); System.out.println();
                System.out.println("The preorder traversal of binary tree 1 is:");
                BT.preorder(BT.rootNodes[1]); System.out.println();
                
                /*Calling isSubtree function to check whether binary tree 2 is subtree of binary tree 1 or not*/
                if((BT.isSubtree(BT.rootNodes[0], BT.rootNodes[1]))) System.out.println("Binary tree 2 is subtree of binary tree 1!");
                else System.out.println("Binary tree 2 is not a subtree of binary tree 1!");
            }
        else System.out.println("Binary trees creation failed!");
    }
}