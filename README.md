# docker_3d-photo-inpainting

Dockerfile for [3d-photo-inpainting](https://github.com/vt-vl-lab/3d-photo-inpainting).
Automated build available on Docker Hub as [`powernic/3d-photo-inpainting`](https://hub.docker.com/r/powernic/3d-photo-inpainting).

**NOTE:**

You'll need CUDA 11.1 or greater for this container to work.

You'll also likely need to wrap your script invocation in xvfb-run, e.g.:

    xvfb-run python main.py --config argument.yml

If You run in WSL

    MKL_THREADING_LAYER=GNU xvfb-run python main.py --config argument.yml