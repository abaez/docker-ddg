FROM abaez/duckpan

RUN yum install -y mpfr-devel

RUN duckpan DDG::GoodieBundle::OpenSourceDuckDuckGo
RUN duckpan DDG::SpiceBundle::OpenSourceDuckDuckGo
RUN duckpan DDG::FatheadBundle::OpenSourceDuckDuckGo
RUN duckpan DDG::LongtailBundle::OpenSourceDuckDuckGo

# make Instant Answer directory
VOLUME /ia
WORKDIR /ia

EXPOSE 5000

