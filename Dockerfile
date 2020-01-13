FROM bitriseio/android-ndk

RUN apt-get update && \
	apt-get install -y \
		libpcre3 \
		libpcre3-dev && \
	rm -rf /var/lib/apt/lists/*

RUN wget -O swig.tar.gz http://prdownloads.sourceforge.net/swig/swig-4.0.1.tar.gz && \
    tar -zxf swig.tar.gz && \
    cd swig-4.0.1 && \
    ./configure --prefix=/usr && \
    make && \
    make install && \
    cd .. && \
    rm swig.tar.gz

RUN sdkmanager --install "cmake;3.10.2.4988404"
