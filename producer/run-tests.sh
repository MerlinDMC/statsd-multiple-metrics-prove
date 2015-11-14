#!/usr/bin/bash

# wait for statsd startup
sleep 2

# send combined metrics to statsd1
echo "valid.multiple.duplicate:0|ms:1|ms:0|ms:1|ms" | nc -u -w1 statsd1 8125
echo "valid.multiple.duplicate:1|c:1|c:2|c:1|c" | nc -u -w1 statsd1 8125
echo "valid.multiple.duplicate:1|h:1|h:2|h:1|h" | nc -u -w1 statsd1 8125
echo "valid.multiple.duplicate:1|s:1|s:2|s:1|s" | nc -u -w1 statsd1 8125
echo "valid.multiple.duplicate:1|g:1|g:2|g:1|g" | nc -u -w1 statsd1 8125
echo "valid.multiple.duplicate:1|c:1|ms:2|s:1|g" | nc -u -w1 statsd1 8125

# send individual metrics to statsd2
echo "valid.multiple.duplicate:0|ms" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:1|ms" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:0|ms" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:1|ms" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:1|c" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:1|c" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:2|c" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:1|c" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:1|h" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:1|h" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:2|h" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:1|h" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:1|s" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:1|s" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:2|s" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:1|s" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:1|g" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:1|g" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:2|g" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:1|g" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:1|c" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:1|ms" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:2|s" | nc -u -w1 statsd2 8125
echo "valid.multiple.duplicate:1|g" | nc -u -w1 statsd2 8125

# exit and stop container
exit 0

