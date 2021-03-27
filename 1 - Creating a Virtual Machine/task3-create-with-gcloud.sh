#Task 3: Create a new instance with gcloud
#open cloud shell
gcloud compute instances create gcelab2 --machine-type n1-standard-2 --zone us-centrall-c #created vm
gcloud compute ssh gcelab2 --zone us-central-c #use SSH to connect instance