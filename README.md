# pipeline

Subir Container do jenkins

docker run -d --rm -u root -p 8080:8080 -v jenkins_home:/var/jenkins_home -v $(which docker):/usr/bin/docker -v /var/run/docker.sock:/var/run/docker.sock -v "$HOME":/home jenkinsci/blueocean

Pipeline para deploy de aplicação NodeJS


Docker

Instalar o plugin do docke no Jenkins
Expor o daemon do docker para ser possível executar comandos remotos atráves do do jenkins.



