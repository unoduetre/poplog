http://www.cs.bham.ac.uk/research/poplog/v15.63/AREADME.txt
Updated: 29 Jun 2009; 26 Dec 2011

32-BIT LINUX POPLOG VERSION 15.65

This file is part of the Free Poplog System, described here:

    http://www.cs.bham.ac.uk/research/poplog/freepoplog.html

For the latest versions of Poplog see that file.

For 32 bit linux poplog it will point you to

    http://www.cs.bham.ac.uk/research/projects/poplog/latest-poplog/

Recent versions of linux poplog use a way of bundling poplog begun in
version 15.6.

The downloadable poplog system now includes most of what was previously
included as Bham 'extras'. What used to be installed in the $poplocal
directory is now included in a new sub-directory:

    $usepop/pop/packages


leaving the $poplocal directory free for local use.

Installation is now much easier than before 15.6.
For details see

    http://www.cs.bham.ac.uk/research/projects/poplog/latest-poplog/#installing

That includes pre-requisites for Fedora and Ubuntu users. It is hoped that
other users of debian based linux can follow the instructions for Ubuntu.
Arch linux users can modify the package fetching commands.

Users who use 'rpm'- based packages should be able to follow the instructions
for Fedora users.

The rest of this file explains some the steps involved in installation, which
are now done by 'get-and-install-scripts', described in the 'latest-poplog'
web page, mentioned above.

So most users can ignore the rest of this file.

-- NEWS AND NOTES -----------------------------------------------------
MOST RECENT NEWS IS IN THIS FILE:

    http://www.cs.bham.ac.uk/research/projects/poplog/latest-poplog

===================================================================
26 Dec 2011
Started V15.65 in new directory
Main change: Ved no longer optimises scrolling. Now works in more
console applications, not just xterm.
===================================================================
29 Jun 2009
Started V15.63 in new directory
Stripping all poplog documentation.
===================================================================
5 Nov 2008
Started V15.62 in new directory
Built poplog without need for use of 'setarch'

===================================================================
8 Jun 2008
Altered to give better format for creating install.log file.

=======================================================================
3 Apr 2007: Note on reorganisation of the X window facilities in Linux

As a result of recent changes in the X window facilities, causing
files that used to be in the /usr/X11R6/lib/ to be moved to /usr/lib
the scripts had to be revised for Poplog Version 15.6a

If you have problems email A.Sloman@cs.bham.ac.uk

=======================================================================
17 Apr 2006: Getting round problems caused by security measures in
Fedora Core

If you are using RedHat linux or one of its recent derivatives, such as
Fedora Core version 4 or later, please see the note about overcoming
problems caused by security measures, in:

http://www.cs.bham.ac.uk/research/poplog/freepoplog.html#fedoraprob

======================================================================
18 Mar 2006: NOTE FOR USES OF DEBIAN/UBUNTU

Thanks to help from members of the South Birmingham Linux Users Group
(SB-LUG http://www.sb.lug.org.uk/) there is now good news for users
of Debian and the popular Debian-based Ubuntu linux distribution.

In fact as I understand it now, all that is needed for the standard
linux poplog distribution and installation script to work is to follow
the instructions now included below in STEP 0.


======================================================================

REVISED:  20 Dec 2005

Fixed bug in installation script reported by Brian Logan, which
prevented installation of links in /usr/local/bin, etc.


REVISED: May 27 2005
Made third argument of installation script optional. Now defaults
    to ./pop

REVISED: 19 Feb 2005
New version of installation script allows 'links'/'nolinks' as
    optional fourth argument (with 'links' as default).

WARNING:
The recent reorganisation (between versions 15.53 and version 15.6)
has led to a lot of old files being moved to new sub-directories.
So many file-headers, which give the old directories, are misleading,
and will need to be changed, when I have time.
This should not affect functionality at all.

NOTE:
Three files listed below need to be downloaded. To avoid having to
copy and paste all the URLs you can simply use this one

    http://www.cs.bham.ac.uk/research/poplog/v15.63/

One file is a shell script to run to check that you have a suitable
environment in which to run linux poplog. The second file is the
installation shell script. The third file is the 18MB tar ball.

==========================================================================
INSTALLATION

CONTENTS

NOTE: Steps 1 to 5 are now out of date. The 'get-and-install'
scripts described in this web page

    http://www.cs.bham.ac.uk/research/projects/poplog/latest-poplog/

do the work described below. However Debian/Ubuntu users should
still read Step 0.

 -- NEWS AND NOTES
 -- STEP 0: For users of Debian/Ubuntu
 -- STEP 1: Fetch and run Checking file (optional: not necessary)
 -- STEP 2. Fetch main poplog tar bundle (optional: not necessary)
 -- STEP 3. Fetch istallation script (optional: not necessary)
 -- STEP 4. Run script to see instructions and options (optional: not necessary)
 -- STEP 5. Run install script with options specified (optional not necessary)
 -- STEP 6. Explore the contents of the bin/demos directory
 -- STEP 7. For regular poplog users

=======================================================================
INSTALLING LINUX POPLOG

-- STEP 0: For users of Debian/Ubuntu

(Users of non-debian linux systems can skip this step, e.g. RedHat,
Fedora Core, SuSe, Mandrake, etc. However they may need to take
equivalent steps to acquire missing libraries if they have installed
systems without development tools included.)

Use this command to ensure that you have all the required system
libraries.

     apt-get install build-essential gcc motif3 csh

     (or try lesstif if you can't find motif3)

Then do the same with the 'deve' versions, e.g. motif3-devel
lesstif-devel.


Then fetch the Poplog tar package and scripts as described here
and follow the instructions below.

The default installation instructions using the
INSTALL_BHAM_LINUX_POPLOG script, as explained below should work
after the above commands.

-- STEP 1: Fetch and run Checking file (optional: not necessary)

NB: The information here and in subsequent steps is unnecessary if
you use the get-and-install scripts described in

    http://www.cs.bham.ac.uk/research/projects/poplog/latest-poplog/

First fetch this small file.

    http://www.cs.bham.ac.uk/research/poplog/v15.63/CHECK_LINUX_FACILITIES

Make it executable

    chmod 755 CHECK_LINUX_FACILITIES

then run it on your computer.

    ./CHECK_LINUX_FACILITIES

It will report any problems that might interfere with use of
poplog. (See comment above in STEP 0, if you are using Debian or
Ubuntu).

-- STEP 2. Fetch main poplog tar bundle (optional: not necessary)

(Done by get-and-install scripts).

Fetch the main poplog tar bundle (about 19 Mbytes):

    http://www.cs.bham.ac.uk/research/poplog/bham-linux-poplog-v15.6a.tar.gz


-- STEP 3. Fetch istallation script (optional: not necessary)

(Done by get-and-install scripts).

Fetch this 5Kbyte file and install it in the same directory
as the tar bundle:

    http://www.cs.bham.ac.uk/research/poplog/v15.6a/INSTALL_BHAM_LINUX_POPLOG


-- STEP 4. Run script to see instructions and options (optional: not necessary)

(Done by get-and-install scripts).

Make it executable and run it

    chmod 755 INSTALL_BHAM_LINUX_POPLOG

    ./INSTALL_BHAM_LINUX_POPLOG

It will print out instructions as follows (this may change)

     Two, three or four arguments are required.

     The first should be either
         motif
            (recommended)
       or
         nomotif

     The second determines the saved image configuration and should be either
         bham
            (recommended)
     or
         original

     The third should be either an installation directory or just
         default
         (The default installation directory is /usr/local/poplog/)

     If no third argument is given then it defaults to ./pop
        i.e. it will create a new subdirectory called 'pop' in
        the current directory, and use that.

     The fourth argument is optional and may be 'links' or 'nolinks'
         If it is 'links' (the default if omitted) a link to an executable
         poplog file will be placed in /usr/local/bin and links to documentation
         will be placed in /usr/local/man/man1, so that 'man poplog' works
         NB: the links cannot be installed if you do not have write access
         to those directories, which normally requires this script to be run
         as root.
         If you don't have access, links will not be installed, even
         if requested, and a warning will be displayed.

   ======
     Examples:
         ./INSTALL_BHAM_LINUX_POPLOG motif   bham     default  links > install.log 2>&1

         ./INSTALL_BHAM_LINUX_POPLOG nomotif bham     ~/mypop  nolinks > install.log 2>&1

         ./INSTALL_BHAM_LINUX_POPLOG motif   original /usr/local/newpoplog > install.log 2>&1

     Recommended: run as root thus:
         ./INSTALL_BHAM_LINUX_POPLOG motif   bham     default  links > install.log 2>&1
     ====

     Use the format 'COMMAND > install.log 2>&1' to save output in file install.log


-- STEP 5. Run install script with options specified (optional not necessary)

(Done by get-and-install scripts).

Choose your preferred option then run the appropriate
command to install poplog.


Novice users should do this:

    ./INSTALL_BHAM_LINUX_POPLOG  motif bham default  links > install.log 2>&1

That will

o create a directory (/usr/local/poplog)

o untar the main bundle into /usr/local/poplog/current-poplog
    (that will be a link to the directory with version name).

o run some scripts in

    /usr/local/poplog/current-poplog/INSTALL

They will

o - link the basic poplog executable in the current-poplog/pop/pop
    directory,

o - create some system saved images in the current-poplog/pop/pop
    directory,

o - create a number of user saved images in
        current-poplog/pop/lib/psv
    using scripts in current-poplog/pop/com/
    (e.g. mkstartup and other scripts).

o - (if required) link the executable script

        current-poplog/bin/poplog.sh

    to

        /usr/local/bin/poplog

    (provided the installation script is run as root, or you have
    write access to the directory)

o - link files in current-poplog/man/man1 to the directory

        /usr/local/man/man1

    (provided the installation script is run as root, or you have
    write access to the directory)

NOTE: if you do not run the script as root or if the /usr/local/bin and
/usr/local/man/man1 directories do not exist you will get a warning
message when the script fails to install the links. These can be
ignored. If you provide the 'nolinks' option as fourth argument there
will be no warnings.

Instructions for proceeding after installation can be found in the
bin/demos directory in which poplog is installed, as explained below.


-- STEP 6. Explore the contents of the bin/demos directory

After installation is complete.
Make sure you you keep the installation log file in case you have to
email it to someone.

Look in:

    current-poplog/bin/demos/

There are four text files

    bash-users-default-dir
    bash-users-nondefault-dir
    tcsh-users-default-dir
    tcsh-users-nondefault-dir

explaining how to use poplog, depending on whether you
are a bash or a tcsh user, and depending on whether you
have installed poplog in the default directory

    /usr/local/poplog

or somewhere else.

Just read the script that is relevant to your case.

You can also read the file
    current-poplog/bin/demos/AREADME-DEMOS.txt

which shows you how to run some demonstration programs
that will test the installation. (pop11 only).

-- STEP 7. For regular poplog users

Two scripts for running poplog are created in current-poplog/bin

    poplog.sh
        for bash users

    poplog
        for tcsh or csh users

If the installation is done as root, a link will be made from poplog.sh
to
    /usr/local/bin/poplog

You can then run poplog as

    poplog pop11
    poplog xved
    poplog xved file.p
    poploc clisp

etc.

See the relevant introductory guide mentioned in Step 6, for
more details.

See also the userguide and man files in

    current-poplog/man/man1/userguide.html
    current-poplog/man/man1/poplog.1

Those provide more information on running poplog prolog,
poplog common lisp, poplog ML, ved and xved.

The man files will normally be copied to

    /usr/local/man/man1


-----------------------------------------------------------------------

Aaron Sloman
4 26 Dec 2011
http://www.cs.bham.ac.uk/~axs/
[end]
