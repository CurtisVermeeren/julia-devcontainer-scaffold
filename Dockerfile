ARG JULIA_VERSION=1.9.3

FROM julia:${JULIA_VERSION}

RUN julia --project=. -e 'using Pkg; Pkg.instantiate()'

# Uses "robbyrussell" theme (original Oh My Zsh theme), with no plugins
RUN sh -c "$(curl -fsSL https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)" -- \
    -t robbyrussell