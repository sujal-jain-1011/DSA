/*C program to define a header file that will contain the forward declarations of prototypes of all
the functions that we are going to use to create, insert and access the elements of unordered set*/

/*Checking whether GENERIC_SET_H is already defined or not using the macro conditional to
avoid duplicate definitions and it is not already defined then defining it using the macros*/
#ifndef GENERIC_SET_H
#define GENERIC_SET_H

/*Including stddef(standard definition) header file for using the size_t data type and
type defining the structure of name GenericSet from struct GenericSet to GenericSet*/
#include<stddef.h>
typedef struct GenericSet GenericSet;

/*Declaring the forward declarations or prototypes of the functions that we are going to use later to manipulate unordered set*/
/*Prototype of the function for creating an unordered set*/
GenericSet* set_create(void);

/*Prototype of the function for inserting an element into the unordered set*/
void set_insert(GenericSet **set,void *key,size_t key_size);

/*Prototype of the functions for checking existence of element in set, obtaining size of set,
removing an element from set, clearing all the elements from set and for freeing all the allocated memory*/
int set_contains(GenericSet *set,void *key,size_t key_size);
size_t set_size(GenericSet *set);
void set_remove(GenericSet **set,void *key,size_t key_size);
void set_clear(GenericSet **set);
void set_free(GenericSet *set);

/*Ending the #define block*/
#endif