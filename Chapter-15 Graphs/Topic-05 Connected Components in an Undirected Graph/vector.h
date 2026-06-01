/*C program to define a header file that will contain the forward declarations of prototypes of all
the functions that we are going to use to create and access the elements of vector data structure*/

/*Checking whether VECTOR_H is already defined or not using the macro conditional to
avoid duplicate definitions and it is not already defined then defining it using the macros*/
#ifndef VECTOR_H
#define VECTOR_H

/*Including standard header files required for size_t and memory related operations*/
#include<stddef.h>

/*Declaring a structure to store the actual data and related information and typedefining it to vector*/
typedef struct Vector
{
    /*Defining the members of the structure: pointer to the data, current length of
    the vector, capacity of the vector and size of the data type stored in vector*/
    void* data; size_t length, vecCap, elmSize;
} vector;

/*Declaring the forward declarations or prototypes of the functions that we are going to use later to manipulate vector*/
/*Function to initialize the vector by allocating initial memory and setting required fields, function to insert an element
at the end of the vector, unction to get the element present at a given index from the vector and to remove the last element*/
void vecInit(vector* vec, size_t elmntSize);
void vecPush(vector* vec, void* value);
void *vecGet(vector* vec, size_t index);
void vecPop(vector* vec);

/*Function to free the dynamically allocated memory using free function*/
void vecFree(vector* vec);

/*Ending the #define block*/
#endif