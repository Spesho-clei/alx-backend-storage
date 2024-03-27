#!/usr/bin/env python3
'''Task 8's module.
'''


def list_all(mongo_collection):
    '''Lists all documents in a collection.
    '''
    documents = []
    cursor = mongo_collection.find({})
    for document in cursor:
        documents.append(document)
    return documents
