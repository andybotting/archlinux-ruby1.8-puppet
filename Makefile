SKIP = \

PACKAGES = \
	ruby1.8 \
	rubygems1.8 \
	ruby1.8-hiera \
	ruby1.8-hiera-json \
	ruby1.8-hiera-puppet \
	ruby1.8-highline \
	ruby1.8-trollop \
	ruby1.8-gpgme \
	ruby1.8-hiera-eyaml \
	ruby1.8-hiera-eyaml-gpg \
	ruby1.8-json \
	ruby1.8-shadow \
	ruby1.8-facter \
	ruby1.8-puppet \
	ruby1.8-puppet-lint \
	ruby1.8-bson \
	ruby1.8-mongo \

all: install

install:
	for package in $(PACKAGES); do \
		(cd $$package && makepkg --noconfirm -iscf) \
	done

clean:
	for package in $(PACKAGES); do \
		(cd $$package && rm -fr *.pkg.tar.xz *.tar.gz *.tar.bz2 *.tgz *.gem *.part .MTREE .PKGINFO pkg/ src/) \
	done
