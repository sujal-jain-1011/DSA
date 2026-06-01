/*C program to define a header file that will contain the forward declarations of prototypes of all
the functions that we are going to use to create, insert and access the elements of queue data structure*/

/*Checking whether QUEUE_H is already defined or not using the macro conditional to avoid
duplicate definitions and it is not already defined then defining it using the macros*/
#ifndef QUEUE_H
#define QUEUE_H

/*Including stddef(standard definition) header file for using the size_t data type and
type defining the structure of name GenericQueue from struct GenericQueue to GenericQueue*/
#include<stddef.h>

/*Defining a structure to implement GenericQueue*/
typedef struct GenericQueue
{
    /*Defining data members of the structure which are: pointer to data, size of data and
    Qlength to store the current length of queue and Qcapacity to store the current capacity*/
    void* data; size_t elmnSize, Qlength, Qcap;
}GenericQueue;

/*Declaring the forward declarations or prototypes of the functions that we are going to use later to manipulate queue*/
/*Prototype of the function for creating a queue*/
void queueInit(GenericQueue*, size_t);

/*Prototype of functions for checking emptiness of queue, for performing insertion in queue,
for popping front element/data from the queue and for freeing the queue data structure*/
void queuePush(GenericQueue*, void*);
short unsigned int empty(GenericQueue*);
void queuePush(GenericQueue*, void*);
void* queueFront(GenericQueue*); 
void queuePop(GenericQueue*);
void queFree(GenericQueue* );

/*Ending the #define block*/
#endif