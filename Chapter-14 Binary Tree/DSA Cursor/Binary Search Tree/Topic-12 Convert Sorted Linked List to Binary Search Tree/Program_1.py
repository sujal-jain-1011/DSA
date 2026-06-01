"""Python program to implement a binary search tree by allocating memory dynamically from the heap,
that means we are going to create a binary search tree using queue data structure and an
array and we are also going to construct the binary search tree from the sorted linked list"""

#Declaring a class to implement the binary search tree
class BinarySearchTree:

        """Defining some class variables: capacity variable of long long unsigned int type for the capacity of binary search tree,
        front and rear variables of long long unsigned int type for the front and rear indices of the queue, a root pointer to
        store the address of the root node of the binary search tree, a ptr pointer to traverse the binary search tree for it's creation
        and a queue pointer to store the address of the first cell that will created to implement the queue data structure"""
        def __init__(self):
            self.capacity, self.front, self.rear=0, -1, -1
            self.root, self.ptr, self.que, self.head, self.lptr=None, None, None, None, None

        """Defining a class for binary search tree node that contains data, left and right child pointers
        and defining a function that will create a new node for the binary search tree when called"""
        class TreeNode:
            def __init__(self, data):
                self.val, self.left, self.right=data, None, None

        """Defining a class for linked list node that contains data, left and right child pointers
        and defining a function that will create a new node for the binary search tree when called"""
        class ListNode:
            def __init__(self, data):
                self.val, self.next=data, None

        #Member function of class: to create a new node for the binary search tree and returning it
        def createTreeNode(self, data):
            """Dynamically allocating memory for the new node and checking if the memory allocation was successful
            if it was, then populating the node with the data passed to function and returning it's address"""
            try:
                newTreeNode=self.TreeNode(data)
            except:
                print("Memory allocation failed for node of binary search tree!")
                return None
            
            #Returning the newly created node
            return newTreeNode;

        #Member function of class: to create a new node for the linked list and returning it
        def createListNode(self, data):
            """Dynamically allocating memory for the new node and checking if the memory allocation was successful
            if it was, then populating the node with the data passed to function and returning it's address"""
            try:
                newListNode=self.ListNode(data)
            except:
                print("Memory allocation failed for node of linked list!")
                return None
            
            #Returning the newly created node
            return newListNode;

        """Member function of class: to implement circular queue data structure that will be used to create a complete
        binary search tree this function is going to take no arguments since we can directly access the capacity global variable"""
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

        """Member function of class: to implement the binary search tree using the array elements (after sorting it), by
        choosing the middle element as the root element of the BST and doing it recursively for left and right subtrees"""
        def implementBinarySearchTree(self, arr, low, high):
            #Declaring base case for recursion: when low is greater than high then we can't create a BST
            if(low<=high):
                """Getting the middle element of the array using low and high iterators, creating root node with this
                element and then calling implementBinarySearchTree function recursively for left and right subtrees"""
                mid=low+(high-low)//2
                rootNode=self.createTreeNode(arr[mid]);
                rootNode.left=self.implementBinarySearchTree(arr, low, mid-1)
                rootNode.right=self.implementBinarySearchTree(arr, mid+1, high)

                #Returning root node of the created binary search subtree*/
                return rootNode
            else:
                return None

        #Member function of class: to create a complete binary search tree using queue data structure
        def createBinarySearchTree(self):
            #Getting the input for capacity variable from user
            self.capacity=int(input("Enter the capacity of binary search tree:"))
            
            """User is instructed to enter the capacity greater than or
            equal to zero otherwise the result will not be as predicted"""
            if(self.capacity<0):
                print("Invalid user input for capacity!");
                return False

            #Handling corner case: when capacity is zero
            if(self.capacity==0):
                print("binary search tree is empty!")
                return False

            """Declaring an array to store the elements of the binary search tree
            and taking the user input for the node values of the binary search tree"""
            try:
                arr=[None for iter in range(0, self.capacity)]
            except:
                print("Memory allocation failed for array of binary search tree!");
                return False

            #Running a loop to get the elements of binary search tree from user
            print("Enter the elements of binary search tree:");
            for iter in range(0, self.capacity):
                arr[iter]=int(input(f"Enter element {iter} of binary search tree:"))

            """Calling standard sort function with the array as argument to sort the elements of array in ascending order
            and then implementBinarySearchTree function with the sorted array as argument to construct binary search tree
            and assigning the root node of the BST created by implementBinarySearchTree function to root global variable"""
            arr.sort()
            self.root=self.implementBinarySearchTree(arr, 0, self.capacity-1);

            """Returning true for successful creation of binary search tree"""
            return True

        #Member function of class: to create biary search tree from sorted linked list
        def createBST(self, newHead, newTail):
            #Declaring base case for recursion: when head's next is/becomes tail
            if(newHead==newTail):
                #Returning NULL pointer if newHead and newTail coincides
                return None
            else:
                """Finding the middle node of the linked list using slow and fast pointer and then
                calling the function createBST recursively for creating left and right subtrees"""
                slow, fast=newHead, newHead
                while(fast!=newTail and fast.next!=newTail):
                    slow=slow.next
                    fast=fast.next.next

                """Creating node for the middle element of the linked list and calling the function
                createBST recursively for creating left and right subtree of the current node"""
                rootNode=self.createTreeNode(slow.val)
                rootNode.left=self.createBST(newHead, slow)
                rootNode.right=self.createBST(slow.next, newTail)

                #Returning the root node of the created subtree
                return rootNode

        """Function to create a binary search tree from the sorted linked list, this function will
        first take the elements of linked list as user input, then will sort the linked list and
        then will call the other auxiliary function that will create the binary search tree"""
        def createLinkedList(self):
            """Getting the size and elements of linked list as user input and then sorting the
            linked list using naive approach here by putting the elements of linked list in
            an auxiliary array, then sorting that array and then assigning the elements back"""
            size=int(input("Enter the size of linked list:"))

            """User is instructed to enter the capacity greater than or
            equal to zero otherwise the result will not be as predicted"""
            if(size<0):
                print("Invalid user input for size!");
                return False

            #Handling corner case: when capacity is zero
            if(size==0):
                print("Linked list is empty!")
                return False
            
            #Running a loop to get the input from user for elements of linked list
            for iter in range(size):
                """Getting the user input for iter+1 node and calling createListNode
                function to create a new node of linked list from the user given data"""
                elm=int(input(f"Enter the value of node {iter+1}:"))
                temp=self.createListNode(elm)
                
                #Checking whether the current node is first element of linked list or not
                if(not(self.head)):
                    self.head=self.lptr=temp
                else:
                    self.lptr.next=temp
                    self.lptr=temp
            self.lptr=self.head

            """Dynamically allocating memory to an array which is going to store the elements
            of linked list and then calling qsort function to sort the elements of linked list
            we are going to assume that memory allocation didn't fail for the array"""
            arr=[0 for it in range(size)]
            i=0

            """Copying the elements of linked list into the array, then sorting it and then
            again copying the sorted array to the linked list making it sorted as well"""
            while(self.lptr):
                arr[i]=self.lptr.val
                i+=1
                self.lptr=self.lptr.next
            arr.sort()
            lptr=self.head
            i=0
            self.lptr=self.head
            while(self.lptr):
                self.lptr.val=arr[i]
                i+=1
                self.lptr=self.lptr.next
            self.lptr=self.head

            #Calling createBST function to create a binary search tree from the sorted linked list
            self.root=self.createBST(lptr, None)
            return True

        #Member function of class: to print the preorder traversal of the binary search tree
        def preorder(self, root_add):
            #Declaring base case for recursion: when the binary search tree is/becomes empty
            if(root_add):
                """Printing the value of current node to console, calling preorder function
                recursively for left subtree and then calling it recursively for right subtree"""
                print(root_add.val, end=" ")
                self.preorder(root_add.left)
                self.preorder(root_add.right)

#Declaring object of class BinarySearchTree
BST=BinarySearchTree();

#Checking whether the binary search tree creation failed or not
if(BST.createLinkedList()):
    print("Successfully created binary search tree!")
    print("The preorder traversal of binary search tree is:")
    BST.preorder(BST.root)
    print()
else:
    print("Binary search tree creation failed!")
