# How to Create an Ethereum Sandbox Environment

![alt text](https://github.com/karlpothast/EthSandbox/blob/master/Eth-NoVNC.gif) 

Prerequisites : 
	Linux Ubuntu Virtual Machine (versions 18.04-21.10)

1. SSH into your Ubuntu VM

	 $ ssh username@<ip address> (or however your VM host requires)

2. Install packages

	 You can either save the following text to a script file, add permissions and run or simply paste into your terminal

set -ex; \
apt-get update; \
apt-get install -y \
bash \
git \
subversion \
fluxbox \
net-tools \
novnc \
supervisor \
x11vnc \
xterm \
xvfb


3. Navigate to the VM root directory and run the svn export command to download the Ethereum Sandbox app directory
	
	$ cd /
	$ sudo svn export https://github.com/karlpothast/EthSandbox/trunk/app

4. Navigate to the app directory and run chmod +x on the bash (.sh) script files to make them executable.

	$ cd /app
	$ sudo chmod +x run.sh web.sh x11.sh

5. Execute the run.sh script

	$ sudo exec /app/run.sh
	
	If you see a VNC Desktop and PORT notificationmessage similar to screen shot below - the script ran successfully.
	
	 


6. Navigate to http://<your-VM-IPaddress>/vnc.html

	Browse to your VM's default http page by IP address.  
	For example if your server's IP address is 10.10.100.75 your URL would be :
  
   

	When the page loads you should see the splash screen for noVNC.  
   Hit the Connect button to proceed.
	
	* We will include SSL Certificate and DNS instructions in the next section.


7. Test your Ethereum Blockchain Sandbox

	 You should see the Ethereum splash screeen logo as you first login.
   
   	 

	 Right click the desktop to pull up the menu and choose GanacheUI to launch the application.
 
	  

8. Test GanacheUI  

    GanacheUI should launch after a few seconds of initialization.

    

	Click the Quickstart button to load the blockchain explorer. 

    

	You now have your own Ethereum blockchain ready to use for smart contract building, dApp development, NFTs etc...

	You can learn more about Ganache from their web site https://trufflesuite.com/ganache/

	* We will be adding Ganache CLI as well as other Eth tools in the near future.



