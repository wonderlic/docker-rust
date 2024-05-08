FROM gcr.io/distroless/base-debian11
LABEL maintainer="Wonderlic DevOps <DevOps@wonderlic.com>"

# Distroless doesn't have a package manager so we have to manually pull over the dependencies.
# Which lib files are needed can be determined with `ldd`.
COPY --from=wonderlic/rust:1.75-builder [\
    "/lib/x86_64-linux-gnu/libexpat.so.1", \
    "/usr/lib/x86_64-linux-gnu/libuuid.so.1", \
    "/usr/lib/x86_64-linux-gnu/libpng16.so.16", \
    "/lib/x86_64-linux-gnu/libz.so.1", \
    "/usr/lib/x86_64-linux-gnu/libbrotlidec.so.1", \
    "/usr/lib/x86_64-linux-gnu/libbrotlicommon.so.1", \
    "/usr/lib/x86_64-linux-gnu/libstdc++.so.6", \
    "/lib/x86_64-linux-gnu/libgcc_s.so.1", \
    "/usr/lib/" ]
