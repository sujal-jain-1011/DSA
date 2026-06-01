/*C program to implement the pair data structure along with all the functions that are declared
in the corresponding header file for this we are going to include the pair.h header file*/

/*Including pair.h to include all the forward declarations of the functions defined earlier, stdlib.h header file for
using the functions for dynamically allocating memory and string.h header file for using the standard string functions*/
#include "pair.h"
#include<stdlib.h>
#include<string.h>

/*Defining pair_create function: for creating pair data structure*/
Pair *pair_create(void *first, size_t first_size, void *second, size_t second_size)
{
    /*Dynamically allocating memory to pointer to Pair structure and
    checking for memory allocation if it fails then return NULL*/
    Pair *p=malloc(sizeof(*p));
    if(!p) return NULL;

    /*Dynamically allocating memory to first and second member of pair data structure*/
    p->first=malloc(first_size); memcpy(p->first, first, first_size); p->first_size=first_size;
    p->second=malloc(second_size); memcpy(p->second, second, second_size); p->second_size=second_size;

    /*Returning pointer to Pair structure*/
    return p;
}

/*Defining pair_free function: for deallocating the allocated memory*/
void pair_free(Pair *p)
{
    /*Checking whether p is NULL or not, if not then only freeing the memory*/
    if(!p) return;
    free(p->first); free(p->second); free(p);
}
