import socket
import sys

if len(sys.argv) != 2:
    print("Usage: python3 python_port_scanner.py <target-ip>")
    sys.exit(1)

target = sys.argv[1]

print(f"Scanning target: {target}")

for port in range(1, 1025):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.settimeout(0.5)

    try:
        result = s.connect_ex((target, port))
        if result == 0:
            print(f"[OPEN] Port {port}")
        s.close()
    except KeyboardInterrupt:
        print("Scan stopped.")
        sys.exit(0)
