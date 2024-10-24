#!/usr/bin/env python3
"""
This module contains the Cache class to interact with a Redis database.
"""
import redis
import uuid
from typing import Union

class Cache:
    def __init__(self):

    self._redis = redis.Redis()
    self._redis.flushdb()

    def store(self, data: Union[str, bytes, int, float]) => str:
                """
        Stores data in Redis with a randomly generated key.
        
        Args:
            data: Data to be stored in Redis.
        
        Returns:
            str: The generated key.
        """
        key = str(uuid.uuid4())
        self._redis.set(key, data)
        return key

