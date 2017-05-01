#!/bin/bash
#This script is used to start the hadoop server
# take the filename input from the user 
# move the file (name entered from the user) to HDFS

echo "please login to your hadoop admin user to start Hadoop server"
echo "Starting Hadoop server..."
start-all.sh
echo "Testing the presence of Nodes"
jps
echo -n "Please enter filename with extension(example: sample.txt) or the relative Path of the file(Example: /usr/tmp/sample.txt to be moved to HDFS"
echo "Make sure you are in the directory if you are giving only the file name***"
read fileName

echo "Moving the file to HDFS..."
hadoop fs -copyFromLocal $fileName hdfs://localhost:54310
echo "The $fileName file has been successfully moved"
echo "Opening the HDFS directory to see the file that has been moved"
hadoop fs -ls
echo "Stopping Hadoop server..."
stop-all.sh




