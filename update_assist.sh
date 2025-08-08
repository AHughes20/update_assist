#!/bin/bash

dnf history | grep -i "update" | awk '{print $5}' | head -2 
