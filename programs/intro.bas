REM ------------------------------------------------
REM KHALOMILYOS INTRODUCTION 1.0
REM Official System Startup Sequence
REM ------------------------------------------------

REM VARS:
REM $1 = System Name

$1 = "KhalomilyOS"

OSLOGO:
  CLS
  PRINT "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= "
  PRINT "                                                                                     "
  PRINT "                                                                                     "
  PRINT "    _  __  _   _      _       _        ___     _    _   ____    _    __    __        "
  PRINT "   | |/ / | | | |   / _ \    | |     /     \  | \  / | |__ __| | |   \ \  / /        "
  PRINT "   | ' /  | |_| |  / ___ \   | |    |       | | |\/| |   | |   | |    \    /         "   
  PRINT "   | . \  | |_| | /_/   \_\  | |___ |       | | |  | |   | |   | |___  |  |          "
  PRINT "   |_|\_\ |_| |_|/_/     \_\ |_____| \ ___ /  |_|  |_| |_____| |_____| |_ |          "
  PRINT "                                                                                     "
  PRINT "                                                                                     "
  PRINT "                                                                                     "      
  PRINT "                                                                                     "
  PRINT "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=-="
  PRINT ""
  GOSUB PRESSAKEY

OSHISTORY:
  PRINT " Origin Story of ";
  PRINT $1;
  PRINT ":"
  PRINT ""
  PRINT " This OS was created as a project for the CSYE6230 course offered in Northeastern University.";
  PRINT ""
  PRINT " Group Members: Shige Wang, Khatantuul Batbold, Shalom Daniel ";
  PRINT ""
  PRINT " Language: Assembly";
  PRINT ""
  PRINT " This OS is a simple command line interface that allows users to interact with the system.";
  PRINT ""
  PRINT ""
  PRINT " Date: 12/8/2024 ";
  PRINT " Version: 1.0.0 ";

PRESSAKEY:
  PRINT ""
  PRINT " -- Press any key to continue. --"
  WAITKEY X
  PRINT ""
  RETURN