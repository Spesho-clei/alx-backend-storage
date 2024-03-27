#!/usr/bin/env python3
'''Task 12's module.
'''
from pymongo import MongoClient

def log_stats():
    ''' provide log stats '''
    # Connect to MongoDB
    client = MongoClient('mongodb://localhost:27017')
    db = client.logs
    collection = db.nginx

    # Total number of logs
    total_logs = collection.count_documents({})

    # Count of each method
    methods = ["GET", "POST", "PUT", "PATCH", "DELETE"]
    method_counts = {method: collection.count_documents({"method": method}) for method in methods}

    # Count of status check
    status_check_count = collection.count_documents({"method": "GET", "path": "/status"})

    # Display the results
    print(f"{total_logs} logs")
    print("Methods:")
    for method, count in method_counts.items():
        print(f"\tmethod {method}: {count}")
    print(f"{status_check_count} status check")

if __name__ == "__main__":
    log_stats()
