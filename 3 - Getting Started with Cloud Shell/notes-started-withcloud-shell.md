## Task 1: Configure your environment

To see what your default region and zone settings are,

```bash
gcloud config get-value compute/zone
gcloud config get-value compute/region
```

### Identify default region and zone

In cloud shell

```bash
gcloud compute project-info describe --project <project ID>
```

### Set environment variables

1. Store Project ID

```bash
export PROJECT_ID=<project ID>
```

2. Store Zone

```bash
export ZONE=<zone>
```

### Create virtual machine with gcloud

```bash
gcloud compute instances create gcelab2 --machine-type n1-standard-2 --zone $ZONE
```

## Task 2: Install a new component

1. Install beta components

```bash
sudo apt-get install google-cloud-sdk
```

2. Enable gcloud interactive mode

````bash
gcloud beta interactive```
````

## Task 3: Connect to your VM instance with SSH

```bash
gcloud compute ssh gcelab2 --zone $ZONE
```
