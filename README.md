# This is the repo linked to Jenkins for the CI pipeline
- This contains the python env cookbook, Berksfile and packer.json

## How to launch the app to the production environment
- cd to the dev_env directory
- Then run `packer build packer.json`
- This will create an image on AWS with the app and the python environment which allows the app to run
- From AWS you can then launch this image to deploy an instance on AWS into the production environment

- Test 2
