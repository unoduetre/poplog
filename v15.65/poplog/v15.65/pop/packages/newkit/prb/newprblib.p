/* --- Copyright University of Birmingham 1996. All rights reserved. ------
 > File:            $poplocal/local/prb/newprblib.p
 > Purpose:			Set up access to Poprulebase library (new version)
 > Author:          Aaron Sloman, Oct 30 1994 (see revisions)
 > Documentation:	HELP * POPRULEBASE
 > Related Files:	LIB * POPRULEBASE, and related files
 */

global constant prblib;

section;

unless isundef(prblib) then [endsection;] -> proglist endunless;

;;; Use pop-11 global variable if it exists
global vars popprbdir;
;;;global vars popprbdir = sysfileok('~axs/cogaff/newprb') ;

;;; or use environment variable if it exists
lconstant PRB_VAR = systranslate('prb');


lconstant
	prb_dir =
		if isstring(popprbdir) then popprbdir
		elseif isstring(PRB_VAR) then PRB_VAR
		else '$poplocal/local/newprb/'
		endif;

lconstant prb_auto =    prb_dir dir_>< 'auto/';
lconstant prb_lib =     prb_dir dir_>< 'lib/';
lconstant prb_include = prb_dir dir_>< 'include/';

;;; Load and show from prb_ directory
extend_searchlist(prb_auto, popautolist) -> popautolist;
extend_searchlist(prb_lib, popuseslist) -> popuseslist;
extend_searchlist(prb_include, popincludelist) -> popincludelist;

;;; And extend ved's teach and help and ref lists
lconstant
	prb_teach = [% prb_dir dir_>< 'teach/' % teach],
	prb_help = [% prb_dir dir_>< 'help/' % help],
	prb_ref = [% prb_dir dir_>< 'ref/' % help],
	prb_teachlist = [^prb_teach],
	prb_helplist = [^prb_help],
	prb_reflist = [^prb_ref];

extend_searchlist([^prb_help], vedhelplist) -> vedhelplist;
extend_searchlist(prb_teachlist, vedteachlist) -> vedteachlist;
extend_searchlist(prb_helplist, vedteachlist,true) -> vedteachlist;
;;; extend_searchlist(prb_reflist, vedreflist) -> vedreflist;
extend_searchlist(prb_helplist, vedreflist, true) -> vedreflist;

global constant prblib = true;
global constant newprblib = true;
endsection;

/* --- Revision History ---------------------------------------------------
--- Aaron Sloman, Apr 28 1996
	added include directory
--- Aaron Sloman, Mar 24 1996
	Further alterations to search lists
--- Aaron Sloman, Jun 30 1995
	Slightly altered some of the searchlists
 */
