"""Python program to implement a binary tree by allocating memory dynamically from the heap,
that means we are going to create a complete binary tree using queue data structure and we
are also going to construct a binary tree from given inorder and preorder traversal vectors"""

#Importing deque from collections module to use queue data structure and math module
from collections import deque
import math

#Declaring a class to implement the binary tree
class BinaryTree:

        """Defining some class variables: capacity variable of long long unsigned int type for the capacity of binary tree,
        front and rear variables of long long unsigned int type for the front and rear indices of the queue, a root pointer to
        store the address of the root node of the binary tree, a ptr pointer to traverse the binary tree for it's creation
        and a queue pointer to store the address of the first cell that will created to implement the queue data structure"""
        def __init__(self):
            self.capacity, self.front, self.rear, self.it=0, -1, -1, 0
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

        #Member function of class: to print the postorder traversal the binary tree by taking the address of root node
        def postorder(self, root_add):
            #Declaring base case for recursion: when the binary tree is/becomes empty
            if(root_add):
                """Calling postorder function recursively for left subtree, then calling it
                recursively for right subtree and printing the value of current node to console"""
                self.postorder(root_add.left)
                self.postorder(root_add.right)
                print(root_add.val, end=" ")

        #Helper member function of class: to build binary tree recursively from inorder and preorder traversal vector
        def helperCreateBT(self, hmap, low, high, ino, pre):
            #Declaring base case for recursion: when low exceeds high
            if(low<=high and self.it<self.capacity):
                """Getting the index of current element of preorder vector in inorder traversal vector and creating the root
                node for the current element and linking the root node with the corresponding left and right subtrees"""
                idx=hmap[pre[self.it]]
                r=self.createTreeNode(pre[self.it])
                self.it+=1

                """Calling helperCreateBT for left and right subtrees after doing a safety
                check on idx variable to avoid wrapping around of the idx variable"""
                r.left=self.helperCreateBT(hmap, low, idx-1, ino, pre)
                r.right=self.helperCreateBT(hmap, idx+1, high, ino, pre)

                #Returning newly created root node
                return r
            else:
                return None

        """Member function of class: to create binary tree from given inorder and preorder traversal
        vector by taking input from user for the inorder and preorder traversal vectors"""
        def createBT(self):
            """Declaring two pointers to integer/arrays/list to store the inorder and preorder traversal
            vectors, allocating memory to these pointer variables dynamically and checking for memory
            allocation and taking user input for inorder and preorder traversal vectors"""
            ino=[input(f"Enter element {i} of inorder traversal vector:") for i in range(self.capacity)]
            pre=[input(f"Enter element {i} of preorder traversal vector:") for i in range(self.capacity)]

            """Declaring and populating an unordered map(~GenericMap) to store the elements of inorder
            vector with the elements of vectors as keys and their indices as corresponding values"""
            hmap=dict({})
            for i in range(self.capacity):
                hmap[ino[i]]=i

            """Calling a helper function that will recusively build the binary tree
            and will return the root node of the newly created binary tree"""
            return self.helperCreateBT(hmap, 0, self.capacity-1, ino, pre)

#Declaring object of class BinaryTree
BT=BinaryTree();

#Checking whether the binary tree creation failed or not
if(BT.createBinaryTree()):
    print("Successfully created binary tree!")
else:
    print("Binary tree creation failed!")

"""Calling createBT function to create binary tree from inorder and preorder traversal vectors
and then the postorder function to perform the postorder traversal of the binary tree"""
BT.root=BT.createBT()
print("The postorder traversal of the binary tree is:")
BT.postorder(BT.root)
print()
