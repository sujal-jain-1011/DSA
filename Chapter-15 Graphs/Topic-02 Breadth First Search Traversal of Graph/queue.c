/*C program to implement the queue along with all the functions that are declared in the corresponding header file*/

/*Including queue.h to include all the forward declarations of the functions defined earlier, stdlib.h header file for
using the functions for dynamically allocating memory, string.h header file for using the standard string functionsn*/
#include "queue.h"
#include<stdlib.h>
#include<string.h>

/*Defining queueInit function: function to initialize the queue, which will take two arguments
pointer to structure GenericQueue and the size of the data item that we are going to store in queue*/
void queueInit(GenericQueue* que, size_t elmntSize)
{
    /*Initializing the length of the queue with zero, capacity with 2, elmSize with
    the received argument and dynamically allocating the memory using malloc function*/
    que->Qlength=0; que->Qcap=2; que->elmnSize=elmntSize;
    que->data=malloc(que->Qcap*que->elmnSize);
}

/*Defining empty function: function to check whether queue is empty or not, which will take
only one argument pointer to structure GenericQueue to access the length field of queue*/
short unsigned int empty(GenericQueue* que)
{
    /*Returning one if length field of queue structure is greater than zero*/
    return (que->Qlength>0?0:1);
}

/*Defining queuePush function: function to push/insert data into queue, which will take two arguments
pointer to structure GenericQueue and pointer to the data item that we are going to store in queue*/
void queuePush(GenericQueue* que, void* value)
{
    /*Checking whether the current length of queue equals the capacity of queue or not
    if yes then we need to reallocate the memory with double the capacity otherwise insert*/
    if(que->Qlength==que->Qcap)
    {
        /*Doubling the capacity and reallocating the memory to copy the old contents*/
        que->Qcap*=2; que->data=realloc(que->data, que->Qcap*que->elmnSize);
    }

    /*Calculating the effective address where we need to insert the value and incrementing the length after insertion*/
    void* target=(char*)(que->data)+que->Qlength*que->elmnSize;
    memcpy(target, value, que->elmnSize);
    que->Qlength+=1;
}

/*Defining queueFront function: function to get the front element of queue
which will take only one argument pointer to structure GenericQueue*/
void* queueFront(GenericQueue* que)
{
    /*Returning NULL if queue is empty otherwise returning
    pointer to the first element stored in queue*/
    if(que->Qlength==0) return NULL; return que->data;
}

/*Defining queuePop function: function to remove the front element from
queue, which will take only one argument pointer to structure GenericQueue*/
void queuePop(GenericQueue* que)
{
    /*Returning immediately if queue is empty*/
    if(que->Qlength==0) return;

    /*Shifting all the remaining elements one position tow-
    ards left and decrementing the current length of queue*/
    memmove(que->data, (char*)(que->data)+que->elmnSize, (que->Qlength-1)*que->elmnSize);
    que->Qlength-=1;
}

/*Defining queueFree function: function to free the dynamically allocated memory
to queue, which will take only one argument pointer to structure GenericQueue*/
void queFree(GenericQueue* que)
{
    /*Deallocating the dynamically allocated memory and resetting the contents*/
    free(que->data);
    que->data=NULL; que->Qlength=0; que->Qcap=0;
}