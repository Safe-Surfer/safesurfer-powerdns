- [Quick pattern](#sec-1)
- [Docs](#sec-2)


# Quick pattern<a id="sec-1"></a>

Tilt provides a quick development lifecycle - when a change occurs, a new container image is build and the Helm chart is redeployed

```tmate
tilt up --host 0.0.0.0 --hud
```

# Docs<a id="sec-2"></a>

```tmate
docker run --rm -it -p 8000:8000 -v ${PWD}:/docs:ro,Z squidfunk/mkdocs-material
```
