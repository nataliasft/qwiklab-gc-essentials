# Task 1: Configure your environment

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
