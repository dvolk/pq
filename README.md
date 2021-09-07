# pq

jq for Python programmers.

Process JSON and HTML on the command-line with familiar syntax.

Extremely simple and easy to extend.

## Installation

    pip3 install -r requests argh bs4
    wget https://raw.githubusercontent.com/dvolk/pq/master/pq
    sudo cp pq /usr/bin
    sudo chmod a+x /usr/bin/pq

## Examples

Find average link score on HN front page:

    $ curl -s https://news.ycombinator.com | pq --html -c "statistics.mean([int(x.text.split(' ')[0]) for x in data.find_all('span', {'class': 'score'})])"
    133.17241379310346

Sum JSON values:

    $ echo '{ "US": 3, "China": 12, "UK": 1 }' | pq -c "sum(data.values())"
    16
