# https://school.programmers.co.kr/learn/courses/30/lessons/17680

from collections import deque

def solution(cacheSize, cities):
    answer = 0
    buffer = deque()

    if cacheSize == 0:
        return len(cities) * 5
    else:
        for i in cities:
            i = i.lower()
            # hit
            if i in buffer:
                buffer.remove(i)
                answer += 1
            # miss
            else:
                if len(buffer) >= cacheSize:
                    buffer.popleft()
                answer += 5
            buffer.append(i)
    return answer