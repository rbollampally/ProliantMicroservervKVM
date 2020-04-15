# ProliantMicroservervKVM
vKVM client for Windows 10
This is a vKVM for Proliant microservers N40L, N54l etc
The JNLP downloaded by web-console does not work directly nor the browsers these days support Java directly. So, I extracted files from Java runtime for Windows and got batch file from various sources on internet which works for me.

1. To make this work, first download JNLP file from server which auto creates a temporary username and password.
2. Open in text editor to see this temporary username and password
3. Run kvm.bat
4. KVM.bat should ask for username and password. Enter these from step 2
If all goes well, you should see remote screen.

Note: the IP address of the server is hardcoded into the BAT file. Change this accordingly.

This can be further automated by maybe automatically downloading the JNLP file from server and/or extracting credentials from JNLP. I leave it here as a reference for others looking for solution. I no longer use the vKVM. So, I don't plan on enhancing this repo.
