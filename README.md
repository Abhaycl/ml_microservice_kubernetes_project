# Operationalize a Machine Learning Microservice API, Project Starter Code

[![CircleCI](https://circleci.com/gh/Abhaycl/ml_microservice_kubernetes_project.svg?style=svg)](https://circleci.com/gh/Abhaycl/ml_microservice_kubernetes_project)

<!--more-->

[//]: # (Image References)

[image0]: ./images/source0.jpg "code"
[image1]: ./images/source1.jpg "code"
[image2]: ./images/source2.jpg "code"
[image3]: ./images/source3.jpg "code"
[image4]: ./images/source4.jpg "code"
[image5]: ./images/source5.jpg "code"
[image6]: ./images/source6.jpg "code"
[image7]: ./images/source7.jpg "code"
[image8]: ./images/source8.jpg "code"
[image9]: ./images/source9_0.jpg "code"
[image10]: ./images/source9_1.jpg "code"
[image11]: ./images/source9_2.jpg "code"
[image12]: ./images/source9_3.jpg "code"
[image13]: ./images/source10.jpg "code"
[image14]: ./images/source11_0.jpg "code"
[image15]: ./images/source11_2.jpg "code"
[image16]: ./images/source12.jpg "code"
[image17]: ./images/source13_0.jpg "code"
[image18]: ./images/source13_1.jpg "code"
[image19]: ./images/source13_2.jpg "code"
[image20]: ./images/source14.jpg "code"
[image21]: ./images/source15.jpg "code"


---

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it in windows 10
```
py -m venv ~/.devops
source ~/.devops/Scripts/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py` via Docker and Kubernetes

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`
4. Upload the docker image to your Docker hub: `./upload_docker.sh`
5. Delete Kubernetes Pods `kubectl delete pods <PodName>`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

### CircleCI

Make sure to sign up on [circleci.com](https://www.circleci.com) with your github account.

* Add a folder `.circleci` and create a `config.yml` file from template YAML (provided in proejct)

---
## TASKS

### Create and Activate an Environment

Clone the project repository
![alt text][image0]

Create and activate a new environment
![alt text][image1]

Installing dependencies via project Makefile
![alt text][image2]

We can verify that we've successfully installed docker
![alt text][image3]

Install hadolint for checks the Dockerfile for errors
![alt text][image4]

Make lint to run lint checks on the project code but recipe for target 'lint' failed

```
#!/bin/bash -eo pipefail
. venv/bin/activate
make lint
# See local hadolint install instructions:   https://github.com/hadolint/hadolint
# This is linter for Dockerfiles
hadolint Dockerfile
# This is a linter for Python source code linter: https://www.pylint.org/
# This should be run from inside a virtualenv
pylint --disable=R,C,W1203 app.py
make: pylint: Command not found
Makefile:24: recipe for target 'lint' failed
make: *** [lint] Error 127
```

1. Add `pylint==2.6.0` to requirements.txt for its installation because pylint checks the app.py source code for errors
![alt text][image5]

In our terminal we run again make lint and a new error appears in the app file, which we correct
![alt text][image6]

After the correction we run again make lint
![alt text][image7]

### Task 1: Complete the Dockerfile

![alt text][image8]

### Task 2: Run a Container & Make a Prediction

![alt text][image9]

![alt text][image10]

![alt text][image11]

![alt text][image12]

### Task 3: Improve Logging & Save Output

![alt text][image13]

### Task 4: Upload the Docker Image

![alt text][image14]

![alt text][image15]

### Task 5: Configure Kubernetes to Run Locally

![alt text][image16]

### Task 6: Deploy with Kubernetes and Save Output Logs

![alt text][image17]

![alt text][image18]

![alt text][image19]

### Task 7: [Important] Delete Cluster

![alt text][image20]

### Task 8: CircleCI Integration

![alt text][image21]