PACKAGES = \
	ruby1.8 \
	rubygems1.8 \
	ruby1.8-hiera \
	ruby1.8-hiera-json \
	ruby1.8-hiera-puppet \
	ruby1.8-json \
	ruby1.8-shadow \
	facter \
	puppet \
	puppet-lint \

all: install

install:
	for package in $(PACKAGES); do \
		(cd $$package && makepkg -iscf) \
	done

clean:
	for package in $(PACKAGES); do \
		(cd $$package && rm -fr *.pkg.tar.xz *.tar.gz *.tar.bz2 *.tgz *.gem pkg/ src/) \
	done
