/*C program to implement the unordered set along with all the functions that are declared in the corresponding header file
for this we will be using the uthash library of the C and we are also going to include the generic_set.h header file*/

/*Including generic_set.h to include all the forward declarations of the functions defined earlier, stdlib.h header file for using the functions for
dynamically allocating memory, string.h header file for using the standard string functions and uthash.h header file for unordered set implementation*/
#include "generic_set.h"
#include<stdlib.h>
#include<string.h>
#include "uthash.h"

/*Defining a structure to implement GenericSet*/
struct GenericSet
{
    /*Defining data members of the structure which are: pointer to key,
    size of key for copying purposes and a variable for hash table handler*/
    void *key;
    size_t key_size;
    UT_hash_handle hh;
};

/*Defining the set_create function: function for creating the unordered_set*/
GenericSet* set_create(void){return NULL;}

/*Defining the set_insert function: function for inserting items into the unordered_set*/
void set_insert(GenericSet **set, void *key, size_t key_size)
{
    /*Declaring a pointer to a variable of type GenericSet*/
    GenericSet *entry;

    /*Checking whether the current key already exists in the set or not*/
    HASH_FIND(hh,*set,key,key_size,entry);

    if(!entry)
    {
        /*Dynamically allocating memory to the entry variable and to key member and copying the data into it*/
        entry=malloc(sizeof(*entry));
        entry->key=malloc(key_size);

        memcpy(entry->key,key,key_size);
        entry->key_size=key_size;

        /*Inserting key into the unordered_set*/
        HASH_ADD_KEYPTR(hh,*set,entry->key,key_size,entry);
    }
}

/*Defining the set_contains function: function to check whether a key exists in set or not*/
int set_contains(GenericSet *set, void *key, size_t key_size)
{
    /*Declaring a pointer to a variable of type GenericSet*/
    GenericSet *entry;

    /*Checking whether current key exists in unordered set or not*/
    HASH_FIND(hh,set,key,key_size,entry);

    /*Returning 0 if entry equals NULL else 1*/
    return entry!=NULL;
}

/*Defining set_size function: function to get the size of set*/
size_t set_size(GenericSet *set){return HASH_COUNT(set);}

/*Defining the set_remove function: function for removing an element from unordered set*/
void set_remove(GenericSet **set,void *key,size_t key_size)
{
    /*Declaring a pointer to a variable of type GenericSet*/
    GenericSet *entry;

    /*Searching for the key in unordered set*/
    HASH_FIND(hh,*set,key,key_size,entry);

    /*Removing the element if it exists*/
    if(entry)
    {
        HASH_DEL(*set,entry);
        free(entry->key);
        free(entry);
    }
}

/*Defining the set_clear function: function for removing all the elements from unordered set*/
void set_clear(GenericSet **set)
{
    /*Declaring pointers to variables of type GenericSet*/
    GenericSet *curr,*tmp;

    /*Iterating unordered_set and deallocating the assigned memory*/
    HASH_ITER(hh,*set,curr,tmp)
    {
        HASH_DEL(*set,curr);
        free(curr->key);
        free(curr);
    }

    /*Making the set empty*/
    *set=NULL;
}

/*Defining the set_free function: function for deallocating the assigned memory*/
void set_free(GenericSet *set)
{
    /*Calling set_clear function to deallocate all the assigned memory*/
    set_clear(&set);
}