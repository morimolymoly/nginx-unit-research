sbuild:
	cd success && \
	sudo docker build -t nginxunit-s .

srun: sbuild
	sudo docker run --rm -p 2222:2222 nginxunit-s

fbuild:
	cd failed && \
	sudo docker build -t nginxunit-f .

frun: fbuild
	sudo docker run --rm -p 2222:2222 nginxunit-f

hbuild:
	cd hack && \
	sudo docker build -t nginxunit-h .

hrun: hbuild
	sudo docker run --rm -p 2222:2222 nginxunit-h


clean:
	sudo docker rmi nginxunit-s
	sudo docker rmi nginxunit-f
	sudo docker rmi nginxunit-h