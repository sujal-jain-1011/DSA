"""Python program to implement a binary tree by allocating memory dynamically from the heap,
that means we are going to create a complete binary tree using queue data structure and
we are going to convert the binary tree into a doubly linked list with same structure"""

#Importing math module
import math

#Declaring a class to implement the binary tree
class BinaryTree:

        """Defining some class variables: capacity variable of long long unsigned int type for the capacity of binary tree,
        front and rear variables of long long unsigned int type for the front and rear indices of the queue, a root pointer to
        store the address of the root node of the binary tree, a ptr pointer to traverse the binary tree for it's creation
        and a queue pointer to store the address of the first cell that will created to implement the queue data structure"""
        def __init__(self):
            self.capacity, self.front, self.rear=0, -1, -1
            self.root, self.ptr, self.que=None, None, None

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
        def implementCircularQueue(self):
            """Allocating memory dynamically to create an array for implementing circular queue
            data structure and checking if the memory allocation was successful or not"""
            try:
                self.que=[None for iter in range(0, self.capacity)]
            except:
                print("Memory allocation failed for queue data structure!");
                return False;

            #Returning true if memory allocation was successful
            return True;

        """Member function of class: to check whether the circular queue is full or not
        if rear+1 mod capacity equals front then the queue is full otherwise it is not"""
        def isFull(self):
            return 1 if((self.rear+1)%self.capacity==self.front) else 0

        """Member function of class: to check whether the circular queue is empty or not
        if both front and rear equals negative one then queue is empty otherwise not"""
        def isEmpty(self):
            return 1 if(self.front==-1 and self.rear==-1) else 0

        #Member function of class: to implement the enqueue function for circular queue data structure
        def enqueue(self, root_add):
            """Checking whether the queue is full or not using the isFull function,
            if it is full then we can't insert and hence return without enqueuing"""
            if(self.isFull()):
                print(f"Can't insert {root_add.val} into queue, since queue is full!")
                return

            #Checking for first insertion in the circular queue data structure
            if(self.isEmpty()):
                #It is the first insertion in the queue data structure
                self.front+=1; self.rear+=1;
                self.que[self.rear]=root_add;
            else:
                self.rear=(self.rear+1)%self.capacity
                self.que[self.rear]=root_add

        #Member function of class: to implement the dequeue function for circular queue data structure
        def dequeue(self):
            """Checking whether the queue is empty or not using the isEmpty function,
            if it is empty then we can't delete and hence return without dequeuing"""
            if(self.isEmpty()):
                print("Can't delete from queue, since queue is empty!")
                return None

            """Getting the first element of queue and checking for
            last deletion from the circular queue data structure"""
            start_elm=self.que[self.front];
            if(self.front==self.rear):
                self.front=self.rear=-1
            else:
                self.front=(self.front+1)%self.capacity;

            #Returning the front element of queue
            return start_elm

        #Member function of class: to create a complete binary tree using queue data structure
        def createBinaryTree(self):
            #Getting the input for capacity variable from user
            self.capacity=int(input("Enter the capacity of binary tree:"))
            
            """User is instructed to enter the capacity greater than or
            equal to zero otherwise the result will not be as predicted"""
            if(self.capacity<0):
                print("Invalid user input for capacity!");
                return False

            #Handling corner case: when capacity is zero
            if(self.capacity==0):
                print("Binary tree is empty!")
                return False

            """Declaring an array to store the elements of the binary tree
            and taking the user input for the node values of the binary tree"""
            try:
                arr=[None for iter in range(0, self.capacity)]
            except:
                print("Memory allocation failed for array of binary tree!");
                return False

            #Running a loop to get the elements of binary tree from user
            print("Enter the elements of binary tree:");
            for iter in range(0, self.capacity):
                arr[iter]=int(input(f"Enter element {iter} of binary tree:"))

            """Calling implementCircularQueue to initialize the circular queue data structure
            and inserting the root node into the newly created circular queue data structure"""
            if(not(self.implementCircularQueue())):
                return False
            root_start=self.createTreeNode(arr[0]);
            self.enqueue(root_start);

            #Running a loop to create the binary tree from the user input elements
            iter=1;
            while(iter<self.capacity):
                #Dequeuing the front element of queue and enqueuing it's child nodes into queue
                currentTreeNode=self.dequeue()

                #Checking for insertion in left child pointer
                if(not(currentTreeNode.left)):
                    #Creating new TreeNode for left child pointer and inserting into queue
                    left_child=self.createTreeNode(arr[iter])
                    iter+=1
                    currentTreeNode.left=left_child;
                    self.enqueue(left_child);
                #Checking for insertion in right child pointer
                if(iter<self.capacity and not(currentTreeNode.right)):
                    #Creating new TreeNode for left child pointer and inserting into queue
                    right_child=self.createTreeNode(arr[iter])
                    iter+=1
                    currentTreeNode.right=right_child
                    self.enqueue(right_child)

            #Assigning root_start to root global variable and returning one for successful creation of binary tree
            self.root=root_start
            return True

        #Member function of class: to print the preorder traversal the binary tree by taking the root node
        def preorder(self, root_add):
            #Declaring base case for recursion: when the binary tree is/becomes empty
            if(root_add):
                """Printing the value of current node to console, calling preorder function
                recursively for left subtree and then calling it recursively for right subtree"""
                print(root_add.val, end=" ")
                self.preorder(root_add.left)
                self.preorder(root_add.right)

        #Member function of class: to traverse the doubly linked list that means printing the node value and previous and next addresses
        def DLLTraversal(self, headPtr):
            #Printing the value and address of current node and addresses of previous and next nodes
            while(headPtr):
                #Printing the value and address of current node
                print(f"The value of current node is:{headPtr.val}")
                print(f"The address of current node is:{headPtr}")

                #Printing the addresses of previous node and next node
                print(f"The address of previous node is:{headPtr.left}")
                print(f"The address of previous node is:{headPtr.right}")
                print()

                #Updating the value of headPtr
                headPtr=headPtr.right;

        #Member function of class: to convert a binary tree to a doubly linked list using recursive approach
        def btToDLL(self, root_add):
            #Declaring base case for recursion: when binary tree is/becomes empty
            if(root_add):
                """Calling the function recursively for left subtree of current node and getting the output returned
                by left call into a pointer to a custom pair and extracting it's contents into two pointers"""
                leftHead, leftTail=self.btToDLL(root_add.left)

                """Checking whether the extracted pointers require modifications or not
                and then linking them to the current node to form linked list structure"""
                if(not(leftHead)):
                    leftHead=root_add
                root_add.left=leftTail
                if(leftTail):
                    leftTail.right=root_add
                else:
                    leftTail=root_add

                """Calling the function recursively for right subtree of current node and getting the output returned
                by left call into a pointer to a custom pair and extracting it's contents into two pointers"""
                rightHead, rightTail=self.btToDLL(root_add.right)

                """Checking whether the extracted pointers require modifications or not
                and then linking them to the current node to form linked list structure"""
                if(not(rightTail)):
                    rightTail=root_add
                root_add.right=rightHead
                if(rightHead):
                    rightHead.left=root_add
                else:
                    rightHead=root_add

                #Returning the pair containing the head and tail of doubly linked list of current subtree
                retValue=[leftHead, rightTail]
                return retValue
            else:
                #Returning a pair of NULL pointers if the current node does not exist
                return [None, None]

#Declaring object of class BinaryTree
BT=BinaryTree();

#Checking whether the binary tree creation failed or not
if(BT.createBinaryTree()):
    """Printing the success message and calling preorder
    function to print the preorder traversal of binary tree"""
    print("Successfully created both the binary trees!")
    print("The preorder traversal of binary tree before conversion is:")
    BT.preorder(BT.root)
    print()
    
    """Calling btToDLL function to convert binary tree to doubly linked list and
    then calling DLLTraversal function to print the traversal of linked list"""
    headPair=BT.btToDLL(BT.root)
    BT.root=headPair[0]
    print("The traversal of doubly linked list is:")
    BT.DLLTraversal(BT.root)
else:
    print("Binary trees creation failed!")
