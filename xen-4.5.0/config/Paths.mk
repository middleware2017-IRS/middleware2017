# Xen system configuration
# ========================
#
# Xen uses a set of variables for system configuration and at build time,
# because of this these variables are defined on one master input source file
# and is generated after running ./configure. The master source is located
# on the xen source tree at under config/Paths.mk.in and it is used to
# generate shell or header files by the build system upon demand through the
# use of the helper makefile helper buildmakevars2file().
#
# For more documentation you can refer to the wiki:
#
# http://wiki.xen.org/wiki/Category:Host_Configuration#System_wide_xen_configuration

PACKAGE_TARNAME          := xen
prefix                   := /usr/local
bindir                   := /usr/local/bin
sbindir                  := /usr/local/sbin
libdir                   := /usr/local/lib
libexecdir               := /usr/local/lib
datarootdir              := ${prefix}/share
mandir                   := ${datarootdir}/man
docdir                   := ${datarootdir}/doc/${PACKAGE_TARNAME}
dvidir                   := ${docdir}
htmldir                  := ${docdir}
pdfdir                   := ${docdir}
psdir                    := ${docdir}
includedir               := ${prefix}/include
localstatedir            := /var
sysconfdir               := /etc

PREFIX                   := $(prefix)

SBINDIR                  := $(sbindir)
BINDIR                   := $(bindir)
LIBEXEC                  := $(libexecdir)/$(PACKAGE_TARNAME)
LIBEXEC_BIN              := /usr/local/lib/xen/bin
LIBEXEC_LIB              := $(LIBEXEC)/lib
LIBEXEC_INC              := $(LIBEXEC)/include

INCLUDEDIR               := $(includedir)
SHAREDIR                 := /usr/local/share
MANDIR                   := $(mandir)
MAN1DIR                  := $(MANDIR)/man1
MAN8DIR                  := $(MANDIR)/man8
LIBDIR                   := $(libdir)
DOCDIR                   := $(docdir)

XEN_RUN_DIR              := /var/run/xen
XEN_LOG_DIR              := /var/log/xen
XEN_LIB_STORED           := /var/lib/xenstored

CONFIG_DIR               := /etc
INITD_DIR                := /etc/rc.d/init.d
CONFIG_LEAF_DIR          := sysconfig
BASH_COMPLETION_DIR      := $(CONFIG_DIR)/bash_completion.d
XEN_LOCK_DIR             := /var/lock
XEN_PAGING_DIR           := /var/lib/xen/xenpaging

XENFIRMWAREDIR           := $(LIBEXEC)/boot

XEN_CONFIG_DIR           := /etc/xen
XEN_SCRIPT_DIR           := /etc/xen/scripts
