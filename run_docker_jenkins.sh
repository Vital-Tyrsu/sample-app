# DEVASC COURSE 
docker run --rm -u root -p 8080:8080 -v jenkins-data:/var/jenkins_home \
-v $(which docker):/usr/bin/docker -v /var/run/docker.sock:/var/run/docker.sock \
-v "$HOME":/home --name jenkins_server jenkins/jenkins:lts 
#docker run --rm --privileged -p 8080:8080 -p 50000:50000 -v jenkins-data:/var/jenkins_home -v $(which docker):/usr/bin/docker -v "$HOME":/home --name jenkins_server jenkins/jenkins:lts
# DOCKER HUB
#docker run --rm --privileged -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
# ADDED SPECIFIC DOCKER POINTER
# docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home -v docker:/usr/bin/docker jenkins/jenkins:lts
# docker run --rm --privileged -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home -v $(which docker):/usr/bin/docker jenkins/jenkins:lts
# docker exec -it -u 0 {containername} bash
# docker exec -it -u 0 jenkins_server bash
# apt-get update && apt-get install -y docker.io 
# jenkins password: 34341124e9d84f4fb1ce909cf20a65ff
# Github PAT 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

