#!/usr/bin/env python3
'''Task 11's module.
'''


def schools_by_topic(mongo_collection, topic):
    '''Returns the list of school having a specific topic.
    '''
    filter_query = {"topics": topic}
    schools = mongo_collection.find(filter_query)
    return list(schools)
