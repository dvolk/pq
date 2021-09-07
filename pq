#!/usr/bin/env python3

import json
import statistics
import sys

import argh
import bs4


def pq(cmd="data", html=False):
    data = sys.stdin.read().strip()
    if html:
        data = bs4.BeautifulSoup(data, "html.parser")
    else:
        data = json.loads(data)
    print(json.dumps(eval(cmd), indent=4))


if __name__ == "__main__":
    argh.dispatch_command(pq)
