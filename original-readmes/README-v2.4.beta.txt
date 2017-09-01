Beta version of Linklint with HTTPS Support
-------------------------------------------
22:06 PST, June 23, 2001

Usage:  
------
Use the -https flag instead of the -http flag for site checking.
Remote https:// links will be checked just like http:// links.

Contents of download/linklint-2.4.beta directory for linklint
-------------------------------------------------------------
linklint-2.4.beta               beta version of linklint w/ HTTPS support
Net-SSLeay-Handle-0.50.tar.gz   required module for above
Net_SSLeay.pm-1.07.tar.gz       required module for above
openssl-0.9.6a.tar.gz           required software for above


Installation
------------
1) Install OpenSSL program
2) Install Net::SSLeay module
3) Install Net::SSLeay::Handle module
4) Run the linklint-2.4.beta program

The Net::SSLeay module and the OpenSSL package are include in this
subdirectory as a minor convenience.  I suggest that you go to CPAN
and the OpenSSL site to get the latest versions.

This README file, the beta of Linklint, and the Net::SSLeay::Handle
module are combined in a *.tar.gz file in the download/ directory.  If
you want to grab Net::SSLeay module and the OpenSSL software from
here, you will have to download them separately.

Note: The Net::SSLeay::Handle module is a simple wrapper around the
Net::SSLeay module (by Sampo Kellomak) which does all the work.

-- Jim Bowlin jbowlin@linklint.org
