"""Python program to implement a binary tree by allocating memory dynamically from the heap,
that means we are going to create a complete binary tree using queue data structure and
we are going to check whether the created binary tree is a valid binary search tree"""

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

        #Member function of class: to populate an array with the inorder traversal of the binary tree
        def inorder(self, root_add, arr, iter):
            #Declaring base case for recursion: when the binary tree is/becomes empty
            if(root_add):
                """Calling inorder function recursively for left subtree, then pushing the curr-
                ent node value into array and then calling it recursively for right subtree"""
                self.inorder(root_add.left, arr, iter)
                arr[iter[0]]=root_add.val
                iter[0]+=1
                self.inorder(root_add.right, arr, iter)

        #Member function of class: to detect any off chart element in the given binary tree for checking whether given binary tree is BST
        def check(self, root_add, ptr, isfd):
            #Declaring base case for recursion: when binary tree is/becomes empty
            if(root_add and isfd[0]):
                """Calling check function recursively for the left subtree then checking whether any off
                chart element is found or not then calling check function recursively for right subtree"""
                self.check(root_add.left, ptr, isfd)
                if(ptr[0]):
                    if(ptr[0].val>=root_add.val):
                        isfd[0]=False 
                ptr[0]=root_add

                #Checking idfd variable before calling check function for right subtree
                if(isfd[0]):
                    self.check(root_add.right, ptr, isfd)

        """Member function of class: to check whether the given binary tree is a valid binary search tree or not,
        using the fact that inorder traversal of binary search tree is in strictly increasing order"""
        def checkBST(self, root_add):
            #Handling corner case when binary tree is empty in that case we are going to return one
            if(not(root_add)):
                return True 
            
            """Declaring a pointer variable to keep track of off chart elements in binary tree, declaring a boolean variable
            to keep track of BST property and calling helper function to detect whether any off chart element is found or not"""
            ptr, isFound=[None], [1]
            self.check(root_add, ptr, isFound)

            #Returning isFound variable
            return isFound[0]

#Declaring object of class BinaryTree
BT=BinaryTree();

#Checking whether the binary tree creation failed or not
if(BT.createBinaryTree()):
    print("Successfully created binary tree!")
    print("The preorder traversal of binary tree is:")
    BT.preorder(BT.root)
    print()

    #Calling checkBST function to check whether the binary tree is BST or not
    if(BT.checkBST(BT.root)):
        print("Given binary tree is a valid binary search tree")
    else:
        print("Given binary tree is not a valid binary search tree")
else:
    print("Binary tree creation failed!")
