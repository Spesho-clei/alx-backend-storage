#!/usr/bin/env python3
'''Task 10's module.
'''


def update_topics(mongo_collection, name, topics):
    '''Changes all topics of a collection's document based on the name.
    '''
    filter_query = {"name": name}
    update_query = {"$set": {"topics": topics}}
    mongo_collection.update_many(filter_query, update_query)
