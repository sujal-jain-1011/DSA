"""Python program to implement a binary search tree by allocating memory dynamically from the heap,
that means we are going to create a binary search tree using queue data structure and an array
and delete an element from the binary search tree from the given user input using recursion"""

#Declaring a class to implement the binary search tree
class BinarySearchTree:

        """Defining some class variables: capacity variable of long long unsigned int type for the capacity of binary search tree,
        front and rear variables of long long unsigned int type for the front and rear indices of the queue, a root pointer to
        store the address of the root node of the binary search tree, a ptr pointer to traverse the binary search tree for it's creation
        and a queue pointer to store the address of the first cell that will created to implement the queue data structure"""
        def __init__(self):
            self.capacity, self.front, self.rear=0, -1, -1
            self.root, self.ptr, self.que=None, None, None

        """Defining a class for binary search tree node that contains data, left and right child pointers
        and defining a function that will create a new node for the binary search tree when called"""
        class TreeNode:
            def __init__(self, data):
                self.val, self.left, self.right=data, None, None

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

        #Member function of class: to get the inorder predecessor or inorder successor of a node
        def getNext(self, currentNode):
            """If this function is called then that means the node to be deleted is not a leaf node
            so we need to find the inorder predecessor or inorder successor of the current node and
            declaring a list of treenode which will contain successor and parent node of that successor"""
            tn=[]
            
            """First we are trying to find the inorder predecessor of the current node then we will try to get
            the inorder successor of the current node if the inorder predecessor is not possible to find"""
            if(currentNode.left):
                """Running a while loop to get the right most node of binary search subtree rooted at current node
                and we are going to use parentNode and childNode pointers to keep track of parent and children"""
                parentNode, childNode=currentNode, currentNode.left
                while(childNode.right):
                    parentNode, childNode=childNode, childNode.right

                """Checking whether childNode is leaf node or not, if yes then we are going to return this along
                with it's parent node otherwise we are going to find the predecessor or successor of this node"""
                if(not(childNode.left) and not(childNode.right)):
                    tn.append(parentNode)
                    tn.append(childNode);
                else:
                    tn=self.getNext(childNode)
            elif(currentNode.right):
                """Running a while loop to get the left most node of binary search subtree rooted at current node
                and we are going to use parentNode and childNode pointers to keep track of parent and children"""
                parentNode, childNode=currentNode, currentNode.right
                while(childNode.left):
                    parentNode, childNode=childNode, childNode.left

                """Checking whether childNode is leaf node or not, if yes then we are going to return this along
                with it's parent node otherwise we are going to find the predecessor or successor of this node"""
                if(not(childNode.left) and not(childNode.right)):
                    tn.append(parentNode)
                    tn.append(childNode)
                else:
                    tn=self.getNext(childNode)

            """Retuning the list containing the parentNode (reference to the parent of the successor or predecessor)
            and childNode which is either the inorder predecessor or inorder successor and also a leaf node"""
            return tn

        #Member function of class: to delete an element from the binary search tree given by user as input
        def deleteFromBST(self, root_add, element):
            #Handling corner cases: when either the BST is empty or there is only one element in it
            if(not(root_add)):
                print(f"Can't delete {element} from binary search tree since BST is empty")
            elif(not(root_add.left) and not(root_add.right)):
                """In this case we are going to have two subcases: when the element is root node's value
                then we are going to delete that root node and set member root node to null else return"""
                if(root_add.val==element):
                    self.root=None
                else:
                    print(f"Can't delete {element} from binary search tree");
            
            #If we are in this else block then the binary search tree definitely contains more than one node
            else:
                """Declaring two pointers (parent and child pointer) to iterate the binary search
                tree for finding the element to be deleted from the given binary search tree and
                a boolean variable to check whether the user given element is found in BST or not"""
                parentNode, childNode, isFound=None, root_add, False

                #Iterating the given binary search tree to find the user given element
                while(childNode):
                    """If current node element is greater than the element to be deleted then we will be
                    moving to the left subtree else if current node element is lesser than the element
                    then we will be moving to the right subtree else if element is found then we are
                    going to swap it with either it's inorder predecessor or successor and then we'll delete"""
                    if(childNode.val>element):
                        parentNode, childNode=childNode, childNode.left
                    elif(childNode.val<element):
                        parentNode, childNode=childNode, childNode.right
                    else:
                        """Element is found in the binary search tree therefore we are setting isFound variable
                        to true and breaking the loop to transfer the control outside of the while loop"""
                        isFound=True
                        break

                """On the basis of isFound variable we are going to call getNext function to get the inorder
                predecessor or inorder successor of the node to be deleted if isFound is true else return"""
                if(isFound):
                    """Checking if the current node which we need to delete is a leaf node or not if it is then delete it other
                    wise we are going to call the getNext function to get the inorder predecessor or inorder successor of node"""
                    if(not(childNode.left) and not(childNode.right)):
                        """Checking which child is childNode of the parentNode and then deleting
                        it by assigning null reference to that particular field of the parentNode"""
                        if(parentNode.left==childNode):
                            parentNode.left=None
                        else:
                            parentNode.right=None
                    else:
                        """Calling the getNext function to get the reference to parent node of the inorder predecessor or
                        inorder successor along with the reference to the inorder predecessor or inorder successor"""
                        nextNode=self.getNext(childNode)
                        
                        #Swapping the value of the node to be deleted with that of successor or predecessor
                        nextNode[1].val, childNode.val=childNode.val, nextNode[1].val
                        if(nextNode[0].left==nextNode[1]):
                            nextNode[0].left=None
                        else:
                            nextNode[0].right=None
                else:
                    print(f"{element} not found in binary search tree")

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
if(BST.createBinarySearchTree()):
    """Printing the message for successful creation of BST, then taking
    user input for the element to be inserted in BST and calling
    insert function to insert the desired element in the BST"""
    print("Successfully created binary search tree!")
    elm=int(input("Enter element to be deleted from binary search tree:"))
    BST.deleteFromBST(BST.root, elm)
    print("The preorder traversal of binary search tree after deletion:")
    BST.preorder(BST.root)
    print()
else:
    print("Binary search tree creation failed!")
