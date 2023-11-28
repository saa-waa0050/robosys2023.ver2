#!/bin/bash

out=$(seq 5|./calculator.py)

[ "${out}" = 15.0 ]
