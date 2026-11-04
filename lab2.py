import redis

r = redis.Redis(host="db", port=6379, decode_responses=True)
count = r.incr("visits")
print(f"[v1] Hello from lab2! visits = {count}", flush=True)