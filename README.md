<h1> <em> Bash script for port scanning an IP </em> </h1>

This is a Bash script that allows you to perform port scanning of IP addresses.
This script uses the Nmap tool to do an intensive scan of the IP entered, using various options of the tool. 

<h2> <em> Requirements </em> </h2>

This script requires Bash version 4 or later to run. It has been tested on macOS and Linux, but it should work on any platform that supports Bash.

<h2> <em> Usage </em> </h2>

The script can be run with the following command: 

<pre>$ ./PortScan.sh [IP] </pre>

where: 

<pre>./PortScan.sh</pre> This is the script in question and before executing it you will have to give it the necessary permissions as follows: <pre> chmod +x PortScan.sh</pre>

Then
<pre>[IP]</pre> This is the IP you want to scan using the script.

<h2> <em> Example </em> </h2>

This is an example of how the program would be used to scan an IP of which we need to know a number of characteristics: 
<pre>$ ./PortScan.sh 10.129.36.90 </pre>

<h3> <em> Script Status </em> </h3>

![Badge in Development](https://img.shields.io/badge/STATUS-IN%20DEVELOPMENT-green)



