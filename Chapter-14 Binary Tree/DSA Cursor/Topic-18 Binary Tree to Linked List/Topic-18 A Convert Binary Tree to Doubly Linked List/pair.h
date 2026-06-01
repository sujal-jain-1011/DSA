/*C program to define a header file that will contain the forward declarations of prototypes of all
the functions that we are going to use to create and access the elements of pair data structure*/

/*Checking whether PAIR_H is already defined or not using the macro conditional to
avoid duplicate definitions and it is not already defined then defining it using the macros*/
#ifndef PAIR_H
#define PAIR_H

/*Including stddef(standard definition) header file for using the size_t data
type and type defining the structure of name Pair from struct to Pair*/
#include<stddef.h>
typedef struct
{
    void *first; void *second;
    size_t first_size; size_t second_size;
}Pair;

/*Declaring the forward declarations or prototypes of the functions that we are going to use later to manipulate pair*/
/*Prototype of the function for creating the pair data structure and for freeing the allocated memory*/
Pair *pair_create(void *first, size_t first_size, void *second, size_t second_size);
void pair_free(Pair *p);

/*Ending the #define block*/
#endif
