#!/usr/bin/env python3
'''Task 9's module.
'''


def insert_school(mongo_collection, **kwargs):
    '''Inserts a new document in a collection.
    '''
    new_document = kwargs
    result = mongo_collection.insert_one(new_document)
    return result.inserted_id
