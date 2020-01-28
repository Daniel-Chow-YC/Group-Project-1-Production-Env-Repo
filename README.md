# This is the repo linked to Jenkins for the CI pipeline
- This contains the python environment cookbook, Berksfile and packer.json
- When a change is made to this repo (on the dev2_ci_branch) Jenkins will listen in due to the webhook link between Jenkins and this repo
- Jenkins will then run some tests
- If all the tests pass it will then merge the dev2_ci_branch to the master branch


## How to launch the app to the production environment
- cd to the dev_env directory
- Then run `packer build packer.json`
- This will create an image on AWS with the app and the python environment which allows the app to run
- From AWS you can then launch this image to deploy an instance on AWS into the production environment

- Test 2
