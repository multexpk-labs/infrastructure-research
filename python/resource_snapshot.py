#!/usr/bin/env python3
import json
import os
import platform
import shutil
import socket
import time

root = shutil.disk_usage('/')
result = {
    'timestamp_utc': time.strftime('%Y-%m-%dT%H:%M:%SZ', time.gmtime()),
    'hostname': socket.gethostname(),
    'platform': platform.platform(),
    'kernel': platform.release(),
    'cpu_count': os.cpu_count(),
    'root_disk': {
        'total_bytes': root.total,
        'used_bytes': root.used,
        'free_bytes': root.free,
    },
}
print(json.dumps(result, indent=2))
