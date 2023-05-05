# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
ARG JUPYTERHUB_VERSION
FROM jupyterhub/jupyterhub:$JUPYTERHUB_VERSION

# Install dockerspawner, nativeauthenticator
RUN python3 -m pip install --no-cache-dir \
    dockerspawner \
    jupyterhub-nativeauthenticator \
    docker \
    oauthenticator \
    jupyter_client
# Set command
CMD ["jupyterhub", "-f", "/jupyterhub_config.py"]