# Kubernetes Engine

## Overview

Google Kubernetes Engine (GKE) clusters are powered by the Kubernetes open source cluster management system. Kubernetes provides the mechanisms through which you interact with your container cluster. You use Kubernetes commands and resources to deploy and manage your applications, perform administrative tasks, set policies, and monitor the health of your deployed workloads.

#### Benefits:

- Load balancing for Compute Engine instances
- Node pools to designate subsets of nodes within a cluster for additional flexibility
- Automatic scaling of cluster's node instance count
- Automatic upgrades for cluster's node software
- Node auto-repair to maintain node health and availability
- Logging and Monitoring with Cloud Monitoring for visibility

#### Set default compute zone

```bash
gcloud config set compute/zone us-central1-a
```

#### Create GKE cluster

```bash
gcloud container clusters create [cluster-name]
```

#### Get auth credentials for the cluster

```bash
gcloud container clusters get-credentials [cluster-name]
```

#### Deploy app to cluster

1. Create new deployment hello server from hello-app container image

```bash
kubectl create deployment hello-server --image=gcr.io/google-samples/hello-app:1.0
```

2. Create Kubernetes Service

```bash
kubectl expose deployment hello-server --type=LoadBalancer --port 8080
```

3. Inspect hello-server

```bash
kubectl get service
```

#### Delete the cluster

```bash
gcloud container clusters delete [cluster-name]
```
