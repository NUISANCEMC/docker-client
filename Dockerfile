# Start with CENTOS7
FROM centos:7
MAINTAINER Patrick Stowell<p.stowell@sheffield.ac.uk>
	
# Get Prereqs
RUN yum install -y \
    wget \
    git \
    cmake \
    gcc-c++ \
    gcc binutils \
    libX11-devel \
    libXpm-devel \
    libXft-devel \
    libXext-devel \
    gcc-gfortran \
    openssl-devel \
    pcre-devel \
    mesa-libGL-devel \
    mesa-libGLU-devel \
    glew-devel \
    ftgl-devel \
    mysql-devel \
    fftw-devel \
    cfitsio-devel \
    graphviz-devel \
    avahi-compat-libdns_sd-devel \
    libldap-dev python-devel \
    libxml2-devel \
    gsl-static \
    which \
    make \
    cvs \
    imake \
    autoconf \
    automake \
    libXt-devel \
    lesstif-devel \
    lesstif-dev \
    gmp-devel \
    open-motif-devel \
    gcc-gfortran \
    openssl-devel \
    pcre-devel \
    mesa-libGL-devel \
    mesa-libGLU-devel \
    glew-devel \
    ftgl-devel \
    mysql-devel \
    fftw-devel \
    cfitsio-devel \
    graphviz-devel \
    avahi-compat-libdns_sd-devel \
    libldap-dev \
    python-devel \
    libxml2-devel \
    libtool \
    gsl-static \
    subversion \
    emacs \
    gcc \
    procmail \
    patch \
    make \
    binutils \
    libX11-devel \
    libXpm-devel \
    libXft-devel \
    libXext-devel \
    gcc-gfortran \
    mysql-devel \
    fftw2 \
    graphviz-devel \
    avahi-devel \
    python-devel \
    libxml2-devel \
    openssl-devel \
    libdrm-devel \
    mesa-libGLU-devel \
    mesa-libGL-devel \
    glew-devel \
    ncurses-devel \
    openmotif && \
    echo "http-timeout = 259200" >> /etc/subversion/servers
    
RUN mkdir NUISANCEMC && \
    cd NUISANCEMC && \ 
    wget --no-verbose https://www.dropbox.com/s/7eg059730ayzsrk/nuisance-docker-externallibs.tar.gz?dl=0 && \
    tar -zxf nuisance-docker-externallibs.tar.gz?dl=0 && \
    rm nuisance-docker-externallibs.tar.gz?dl=0 && \
    echo "source /NUISANCEMC/external/setupexternal.sh" >> /root/.bashrc

RUN cd NUISANCEMC && \
    wget --no-verbose https://www.dropbox.com/s/gb8oykmpzj0cpmg/nuisance-docker-geniebuilds.tar.gz?dl=0 && \
    tar -zxf nuisance-docker-geniebuilds.tar.gz?dl=0 && \
    rm nuisance-docker-geniebuilds.tar.gz?dl=0 && \
    source genie/R-2_12_6/*/setup.sh && \
    echo "source /NUISANCEMC/genie/R-2_12_6/*/setup.sh"  >> /root/.bashrc

RUN cd NUISANCEMC && \
    wget --no-verbose https://www.dropbox.com/s/l6k7alokd4pniun/nuisance-docker-nuwrobuilds.tar.gz?dl=0 && \
    tar -zxf nuisance-docker-nuwrobuilds.tar.gz?dl=0 && \
    rm nuisance-docker-nuwrobuilds.tar.gz?dl=0 && \
    source nuwro/v11q*/*/build/Linux/setup.sh && \
    echo "source /NUISANCEMC/nuwro/v11q*/*/build/Linux/setup.sh" >> /root/.bashrc

RUN cd NUISANCEMC && \
    wget --no-verbose https://www.dropbox.com/s/pqt15c2t0wk3u4t/nuisance-docker-nuisancebuilds.tar.gz?dl=0 && \
    tar -zxf nuisance-docker-nuisancebuilds.tar.gz?dl=0 && \
    rm nuisance-docker-nuisancebuilds.tar.gz?dl=0 && \
    source nuisance/v2r6/build/Linux/setup.sh && \
    echo "source /NUISANCEMC/nuisance/v2r6/build/Linux/setup.sh" >> /root/.bashrc