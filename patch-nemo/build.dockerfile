FROM us-central1-docker.pkg.dev/deeplearning-images/reproducibility/pytorch-gpu-nemo:latest

# WORKDIR /opt
# RUN rm -rf megatron-lm
# RUN git clone https://github.com/lepan-google/Megatron-LM.git megatron-lm && \
# 	cd megatron-lm && \
# 	git checkout storage-next && \
# 	pip install .

# Move to the source code directory, then copy and apply the patch.
WORKDIR /opt/NeMo
COPY nemo.patch nemo.patch
RUN git apply nemo.patch
