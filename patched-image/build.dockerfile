FROM us-central1-docker.pkg.dev/deeplearning-images/reproducibility/pytorch-gpu-nemo:latest

# Move to the source code directory, then copy and apply the patch.
WORKDIR /opt/NeMo
COPY nemo.patch nemo.patch
RUN git apply --reject --whitespace=fix nemo.patch
