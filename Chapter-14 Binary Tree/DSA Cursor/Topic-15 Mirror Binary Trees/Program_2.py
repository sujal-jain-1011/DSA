"""Python program to implement a binary tree by allocating memory dynamically from the heap,
that means we are going to create a complete binary tree using queue data structure and we
are also going to check whether two binary trees are mirror images of each other or not"""

#Importing deque from collections module to use queue data structure and from infinity from math module
from collections import deque
from math import inf

#Declaring a class to implement the binary tree
class BinaryTree:

        """Defining some class variables: capacity variable of long long unsigned int type for the capacity of binary tree,
        front and rear variables of long long unsigned int type for the front and rear indices of the queue, a root pointer to
        store the address of the root node of the binary tree, a ptr pointer to traverse the binary tree for it's creation
        and a queue pointer to store the address of the first cell that will created to implement the queue data structure"""
        def __init__(self):
            self.capacityArray, self.frontArray, self.rearArray=[0, 0], [-1, -1], [-1, -1]
            self.rootNodes, self.ptr, self.que=[None, None], None, [None, None]

        """Defining a class for binary tree node that contains data, left and right child pointers
        and defining a function that will create a new node for the binary tree when called"""
        class TreeNode:
            def __init__(self, data):
                self.val, self.left, self.right=data, None, None

        #Member function of class: to create a new node for the binary tree and returning it
        def createTreeNode(self, data):
            """Dynamically allocating memory for the new node and checking if the memory allocation was successful
            if it was, then populating the node with the data passed to function and returning it's address"""
            try:
                newTreeNode=self.TreeNode(data)
            except:
                print("Memory allocation failed for node of binary tree!")
                return None
            
            #Returning the newly created node
            return newTreeNode;

        """Member function of class: to implement circular queue data structure that will be used to create a complete
        binary tree this function is going to take no arguments since we can directly access the capacity global variable"""
        def implementCircularQueue(self, num):
            """Allocating memory dynamically to create an array for implementing circular queue
            data structure and checking if the memory allocation was successful or not"""
            try:
                self.que[num]=[None for iter in range(0, self.capacityArray[num])]
            except:
                print("Memory allocation failed for queue data structure!");
                return False;

            #Returning true if memory allocation was successful
            return True;

        """Member function of class: to check whether the circular queue is full or not
        if rear+1 mod capacity equals front then the queue is full otherwise it is not"""
        def isFull(self, num):
            return 1 if((self.rearArray[num]+1)%self.capacityArray[num]==self.frontArray[num]) else 0

        """Member function of class: to check whether the circular queue is empty or not
        if both front and rear equals negative one then queue is empty otherwise not"""
        def isEmpty(self, num):
            return 1 if(self.frontArray[num]==-1 and self.rearArray[num]==-1) else 0

        #Member function of class: to implement the enqueue function for circular queue data structure
        def enqueue(self, root_add, num):
            """Checking whether the queue is full or not using the isFull function,
            if it is full then we can't insert and hence return without enqueuing"""
            if(self.isFull(num)):
                print(f"Can't insert {root_add.val} into queue, since queue is full!")
                return

            #Checking for first insertion in the circular queue data structure
            if(self.isEmpty(num)):
                #It is the first insertion in the queue data structure
                self.frontArray[num]+=1; self.rearArray[num]+=1;
                self.que[num][self.rearArray[num]]=root_add;
            else:
                self.rearArray[num]=(self.rearArray[num]+1)%self.capacityArray[num]
                self.que[num][self.rearArray[num]]=root_add

        #Member function of class: to implement the dequeue function for circular queue data structure
        def dequeue(self, num):
            """Checking whether the queue is empty or not using the isEmpty function,
            if it is empty then we can't delete and hence return without dequeuing"""
            if(self.isEmpty(num)):
                print("Can't delete from queue, since queue is empty!")
                return None

            """Getting the first element of queue and checking for
            last deletion from the circular queue data structure"""
            start_elm=self.que[num][self.frontArray[num]];
            if(self.frontArray[num]==self.rearArray[num]):
                self.frontArray[num]=self.rearArray[num]=-1
            else:
                self.frontArray[num]=(self.frontArray[num]+1)%self.capacityArray[num];

            #Returning the front element of queue
            return start_elm

        #Member function of class: to create a complete binary tree using queue data structure
        def createBinaryTree(self, num):
            #Getting the input for capacity variable from user
            self.capacityArray[num]=int(input(f"Enter the capacity of binary tree {num}:"))
            
            """User is instructed to enter the capacity greater than or
            equal to zero otherwise the result will not be as predicted"""
            if(self.capacityArray[num]<0):
                print("Invalid user input for capacity!");
                return False

            #Handling corner case: when capacity is zero
            if(self.capacityArray[num]==0):
                print("Binary tree is empty!")
                return False

            """Declaring an array to store the elements of the binary tree
            and taking the user input for the node values of the binary tree"""
            try:
                arr=[None for iter in range(0, self.capacityArray[num])]
            except:
                print("Memory allocation failed for array of binary tree!");
                return False

            #Running a loop to get the elements of binary tree from user
            print("Enter the elements of binary tree:");
            for iter in range(0, self.capacityArray[num]):
                arr[iter]=int(input(f"Enter element {iter} of binary tree:"))

            """Calling implementCircularQueue to initialize the circular queue data structure
            and inserting the root node into the newly created circular queue data structure"""
            if(not(self.implementCircularQueue(num))):
                return False
            root_start=self.createTreeNode(arr[0]);
            self.enqueue(root_start, num);

            #Running a loop to create the binary tree from the user input elements
            iter=1;
            while(iter<self.capacityArray[num]):
                #Dequeuing the front element of queue and enqueuing it's child nodes into queue
                currentTreeNode=self.dequeue(num)

                #Checking for insertion in left child pointer
                if(not(currentTreeNode.left)):
                    #Creating new TreeNode for left child pointer and inserting into queue
                    left_child=self.createTreeNode(arr[iter])
                    iter+=1
                    currentTreeNode.left=left_child;
                    self.enqueue(left_child, num);
                #Checking for insertion in right child pointer
                if(iter<self.capacityArray[num] and not(currentTreeNode.right)):
                    #Creating new TreeNode for left child pointer and inserting into queue
                    right_child=self.createTreeNode(arr[iter])
                    iter+=1
                    currentTreeNode.right=right_child
                    self.enqueue(right_child, num)

            #Assigning root_start to root global variable and returning one for successful creation of binary tree
            self.rootNodes[num]=root_start
            return True

        #Member function of class: to pri:nt the preorder traversal the binary tree by taking the address of root node
        def preorder(self, root_add):
            #Declaring base case for recursion: when the binary tree is/becomes empty
            if(root_add):
                """Printing the value of current node to console, calling preorder function
                recursively for left subtree and then calling it recursively for right subtree"""
                print(root_add.val, end=" ")
                self.preorder(root_add.left)
                self.preorder(root_add.right)

        #Member function of class: to check whether two binary trees are mirror images of each other or not
        def isMirror(self, root_add_1, root_add_2):
            """Declaring pair to store the TreeNodes of the two received binary trees
            and inserting root nodes of binary trees into the pair data structure"""
            pr=[root_add_1, root_add_2]
            qu=deque()
            
            """Enqueuing pair containing root nodes of both binary trees into the created cir-
            cular queue and then iterating the binary tree to traverse all of it's nodes"""
            qu.append(pr)
            while(bool(qu)):
                """We are going to have four cases: when both the binary trees become NULL or empty, in that case we are
                going to return one since both of them are identical, else if when exactly one of the binary trees
                become NULL or empty in that case we are going to return zero since the binary trees are not identical
                else when both of them are not NULL or non empty we are going to check for the remaining parts of tree"""
                qr=qu.popleft()
                qptr_1, qptr_2=qr[0], qr[1];

                """Checking whether both the nodes are NULL or not, if yes then we are going to continue, else if exactly
                one of the nodes is NULL or they differ in values then we are going to return false at once otherwise
                we are going to enqueue child nodes of the current dequeued nodes to check for rest structure of tree"""
                if(not(qptr_1) and not(qptr_2)):
                    continue
                elif(not(qptr_1) or not(qptr_2) or qptr_1.val!=qptr_2.val):
                    return False
                else:
                    """Enqueuing child nodes of current nodes into queue data structure
                    by forming pair of left child of both nodes and right child"""
                    qu.append([qptr_1.left, qptr_2.right])
                    qu.append([qptr_1.right, qptr_2.left])

            #Returning true since the binary trees are identical
            return True
        
#Declaring object of class BinaryTree
BT=BinaryTree();

#Checking whether the binary tree creation failed or not
if(BT.createBinaryTree(0) and BT.createBinaryTree(1)):
    """Printing the success message and calling preorder
    function to print the preorder traversal of binary trees"""
    print("Successfully created both the binary trees!")
    print("The preorder traversal of binary tree 1 is:")
    BT.preorder(BT.rootNodes[0])
    print()
    print("The preorder traversal of binary tree 1 is:")
    BT.preorder(BT.rootNodes[1])
    print()
    
    #Calling isIdentical function to check whether binary trees are mirror images of each other or not
    if(BT.isMirror(BT.rootNodes[0], BT.rootNodes[1])):
        print("Binary trees are mirror images!")
    else:
        print("Binary trees are not mirror images!")
else:
    print("Binary trees creation failed!")
