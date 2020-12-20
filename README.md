# NGINX Unit research
* this issue is sooooooo shitty https://github.com/nginx/unit/issues/137  
**I DON'T WANT TO USE THIS PRODUCT.**

# Apps
* `failed` failed because it does not have `application`
* `success` working good because it has `application`
+ `hack` working good because it hacked

# hacks
It wraps Flask and serve http endpoint.  
Addition to it, it also need to hack `config.json`(for setting up unitd)  
Application port is `2222` but you can't use `2222` in your `config.json`.  
I wonder why such a unbelievable behavior occurs!

# Usage
```
make srun # success
make frun # failed
make hrun # hacked

make clean # clean all images
```