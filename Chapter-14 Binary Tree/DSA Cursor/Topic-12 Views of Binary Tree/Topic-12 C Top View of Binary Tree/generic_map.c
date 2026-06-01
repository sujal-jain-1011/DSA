/*C program to implement the unordered map along with all the functions that are declared in the corresponding header file
for this we will be using the uthash library of the C and we are also going to include the generic_map.h header file*/

/*Including generic_map.h to include all the forward declarations of the functions defined earlier, stdlib.h header file for using the functions for
dynamically allocating memory, string.h header file for using the standard string functions and uthash.h header file for unordered map implementation*/
#include "generic_map.h"
#include<stdlib.h>
#include<string.h>
#include "uthash.h"

/*Defining a structure to implement GenericMap*/
struct GenericMap
{
    /*Defining data members of the structure which are: pointer to key, pointer to
    value, size of the key, size of the value for copying purposes and a variable for hash table handler*/
    void *key; void *value;
    size_t key_size; size_t value_size;
    UT_hash_handle hh;
};

/*Defining the map_create function: function for creating the unordered_map*/
GenericMap* map_create(void){return NULL;}

/*Defining the map_put function: function for inserting items in the unordered_map*/
void map_put(GenericMap **map, void *key, size_t key_size, void *value, size_t value_size)
{
    /*Declaring a pointer to a variable of type GenericMap*/
    GenericMap *entry;

    /*Checking whether the current key already exists in the map or not*/
    HASH_FIND(hh, *map, key, key_size, entry);
    if(!entry)
    {
        /*Dynamically allocating memory to the entry variable and to key and value membersand copying the data into them*/
        entry=malloc(sizeof(*entry));
        entry->key=malloc(key_size); memcpy(entry->key, key, key_size); entry->key_size=key_size;
        entry->value=malloc(value_size); memcpy(entry->value, value, value_size); entry->value_size=value_size;

        /*Inserting key value pair into the unordered_map*/
        HASH_ADD_KEYPTR(hh, *map, entry->key, key_size, entry);
    }
    else
    {
        /*Overwriting the existing value safely*/
        free(entry->value);
        entry->value=malloc(value_size); memcpy(entry->value, value, value_size); entry->value_size=value_size;
    }
}

/*Defining the map_get function: function for checking existence of key*/
int map_get(GenericMap *map, void *key, size_t key_size, void **out)
{
    /*Declaring a pointer to a variable of type GenericMap*/
    GenericMap *entry;

    /*Checking whether current key exists in unordered map or not*/
    HASH_FIND(hh, map, key, key_size, entry);
    if(!entry) return 0;
    *out=entry->value;
    return 1;
}

/*Defining the map_contains function: function to check whether a key exists in map or not*/
int map_contains(GenericMap *map, void *key, size_t key_size)
{
    /*Returning 0 if entry equals NULL else 1*/
    GenericMap *entry;
    HASH_FIND(hh, map, key, key_size, entry);
    return entry!=NULL;
}

/*Defining the map_free function: function for deallocating the assigned memory*/
void map_free(GenericMap *map)
{
    /*Declaring pointers to variables of type GenericMap*/
    GenericMap *curr,*tmp;
    
    /*Iterating unordered_map and deallocating the assigned memory*/
    HASH_ITER(hh, map, curr, tmp)
    {
        HASH_DEL(map,curr);
        free(curr->key); free(curr->value); free(curr);
    }
}
