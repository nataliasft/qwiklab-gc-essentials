# Compute Engine: Qwik Start - Windows

In this hands-on lab, you learn how to launch a Windows Server instance in Compute Engine and use Remote Desktop Protocol (RDP) to connect to it.

## Create a virtual machine instance

1. Navigation menu > Compute Engine > VM Instances > Create
1. Machine Configuration, Series > N1
1. Boot disk. Windows Server 2012 R2 Datacenter
1. Create

## Test status of Windows Startup

#In Cloud Shell

```console
gcloud compute instances get-serial-port-output instance-1 #check OS have initialized or not
gcloud compute reset-windows-password [instance] --zone us-central1-a --user [username] #set password for logging. username: admin
```

In browser, connect > RDP dropdown > Download the RDP file
