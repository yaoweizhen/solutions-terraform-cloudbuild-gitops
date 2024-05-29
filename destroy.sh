#! /bin/sh

sa=build-learn-iac@delta-pagoda-386920.iam.gserviceaccount.com

gcloud beta builds submit ./ \
       --config cloudbuild.destroy.yaml \
       --service-account projects/delta-pagoda-386920/serviceAccounts/$sa \
       --substitutions BRANCH_NAME=dev \
			 --region us-central1 \
