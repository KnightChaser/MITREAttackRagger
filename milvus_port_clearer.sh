#!/bin/bash

# Function to check if a process is using port 9091 and shut it down
function shut_down_port_9091 {
    # Find the process ID (PID) of the process using port 9091
    PID=$(lsof -i :9091 -t)
    
    if [ -z "$PID" ]; then
        echo "No process is occupying port 9091."
    else
        echo "Process $PID is occupying port 9091. Shutting it down..."
        kill -9 $PID
        
        # Verify if the process was successfully killed
        if [ $? -eq 0 ]; then
            echo "Process $PID has been successfully shut down."
        else
            echo "Failed to shut down process $PID."
        fi
    fi
}

# Execute the function
shut_down_port_9091
