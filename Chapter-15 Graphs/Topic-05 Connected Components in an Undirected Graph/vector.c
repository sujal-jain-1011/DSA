/*C program to implement the vector data structure along with all the functions that are declared
in the corresponding header file for this we are going to include the vector.h header file
and we are also going to print all the root to leaf paths in the constructed binary tree*/

/*Including stdio.h header file for standard input output functions, stdlib.h file
for memory allocation functions and string.h file for using string functions*/
#include<stdio.h>
#include<stdlib.h>
#include<string.h>

/*Declaring a structure to store the actual data and related information and typedefining it to vector*/
typedef struct Vector
{
    /*Defining the members of the structure: pointer to the data, current length of
    the vector, capacity of the vector and size of the data type stored in vector*/
    void* data; size_t length, vecCap, elmSize;
} vector;

/*Defining vecInit function: function to initialize the vector, which will take two arguments
pointer to structure Vector and the size of the data item that we are going to store in vector*/
void vecInit(vector* vec, size_t elmntSize)
{
    /*Initializing the length of the vector with zero, capacity with 2, elmSize with
    the received argument and dynamically allocating the memory using malloc function*/
    vec->length=0; vec->vecCap=2; vec->elmSize=elmntSize;
    vec->data=malloc(vec->vecCap*vec->elmSize);
}

/*Defining vecPush function: function to push/insert data into vector, which will take two arguments
pointer to structure Vector and pointer to the data item that we are going to store in vector*/
void vecPush(vector* vec, void* value)
{
    /*Checking whether the current length of vector equals the capacity of vector or not
    if yes then we need to reallocate the memory with double the capacity otherwise insert*/
    if(vec->length==vec->vecCap)
    {
        /*Doubling the capacity and reallocating the memory to copy the old contents*/
        vec->vecCap*=2;
        vec->data=realloc(vec->data, vec->vecCap*vec->elmSize);
    }

    /*Calculating the effective address where we need to insert the value and incrementing the length after insertion*/
    void* target=(char*)vec->data+vec->length*vec->elmSize;
    memcpy(target, value, vec->elmSize);
    vec->length+=1;
}

/*Defining vecGet function: function to get the data from the vector on the basis of index, which will take
two arguments pointer to structure Vector and index within the vector from where we want to access the data*/
void *vecGet(vector* vec, size_t index)
{
    /*Checking for bounds of index, if it is greater than current length of vector
    then it is an invalied index and in that case we are going to return NULL*/
    return (index<vec->length)?((char*)vec->data+index*vec->elmSize):NULL;
}

/*Defining vecPop function: function to remove the last data from the
vector, which will take only one argument pointer to structure Vector*/
void vecPop(vector* vec)
{
    /*Checking if the vector is empty or not*/
    if(vec->length==0) return;
    else vec->length-=1;
}

/*Defining vecFree function: function to free the dynamically allocated memory
to vector, which will take only one argument pointer to structure Vector*/
void vecFree(vector *vec)
{
    /*Deallocating the dynamically allocated memory and resetting the contents*/
    free(vec->data);
    vec->data=NULL; vec->length=0; vec->vecCap=0;
}