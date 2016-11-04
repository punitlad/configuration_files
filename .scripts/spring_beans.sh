#!/bin/bash

grep -EIir '@Component|@RestController|@Service|@ControllerAdvice|@Configuration' $1 | awk '{split($0,a,":"); print a[1]}’
