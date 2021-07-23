FROM pytorch/pytorch:1.9.0-cuda11.1-cudnn8-runtime

ENV DISPLAY=:0
ENV CUDA_VISIBLE_DEVICES=0
RUN apt-get update && apt-get install -y libfontconfig1-dev wget ffmpeg libsm6 libxext6 libxrender-dev mesa-utils-extra libegl1-mesa-dev libgles2-mesa-dev xvfb git python3-pyqt5 libegl1-mesa libglfw3-dev
RUN git clone https://github.com/vt-vl-lab/3d-photo-inpainting.git /3d-photo-inpainting && cd /3d-photo-inpainting && git checkout de0446740a3726f3de76c32e78b43bd985d987f9
WORKDIR /3d-photo-inpainting
RUN pip install Cython==3.0a5 && pip install -r requirements.txt && pip install scipy matplotlib scikit-image
RUN chmod a+x download.sh && ./download.sh