default:
    podman build -t mumax3_64bits .
    podman run -it -v .:/a -w /a --device=nvidia.com/gpu=all -p 35364:35367 mumax3_64bits /mumax3_64bits
