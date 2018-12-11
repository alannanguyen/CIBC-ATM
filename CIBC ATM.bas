REM Alanna Nguyen's CIBC ATM: gr.11 com-sci [June 17, 2013]

DIM username AS STRING
DIM password AS STRING
DIM pin AS LONG
DIM action AS INTEGER
DIM balance AS INTEGER
DIM deposit AS INTEGER
DIM action2 AS STRING
DIM withdraw AS INTEGER

CLS
1
SCREEN 9:
COLOR , 4: CLS
PRINT
COLOR 15: PRINT "    ------"
COLOR 15: PRINT "   |";
COLOR 14: PRINT " CIBC";
COLOR 15: PRINT " |"
COLOR 15: PRINT "   |";
COLOR 14: PRINT " ----";
COLOR 15: PRINT " |";
COLOR 15: PRINT "                                        CIBC. For What Matters."
COLOR 15: PRINT "   |";
COLOR 15: PRINT "______";
COLOR 15: PRINT "|"
PRINT
PRINT "________________________________________________________________________________"
PRINT
PRINT
COLOR 14: PRINT "         Welcome To CIBC instant teller."
COLOR 15: PRINT "         *******************************"
SLEEP 2
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
INPUT "                                                 Press Enter to continue.", enter

CLS

PRINT
COLOR 15: PRINT "    ------"
COLOR 15: PRINT "   |";
COLOR 14: PRINT " CIBC";
COLOR 15: PRINT " |"
COLOR 15: PRINT "   |";
COLOR 14: PRINT " ----";
COLOR 15: PRINT " |";
COLOR 15: PRINT "                                        CIBC. For What Matters."
COLOR 15: PRINT "   |";
COLOR 15: PRINT "______";
COLOR 15: PRINT "|"
PRINT
PRINT "________________________________________________________________________________"
PRINT
PRINT
COLOR 14: PRINT "     Log-in"
COLOR 15: PRINT "     ******"
PRINT
PRINT "         Enter User Name: ";
COLOR 14: INPUT "", username

IF UCASE$(username) = "CANCEL" THEN GOTO 1

CLS

LET choice = 0
DO UNTIL password = "SeCrEt!" OR choice = 3
    LET choice = choice + 1
    PRINT
    COLOR 15: PRINT "    ------"
    COLOR 15: PRINT "   |";
    COLOR 14: PRINT " CIBC";
    COLOR 15: PRINT " |"
    COLOR 15: PRINT "   |";
    COLOR 14: PRINT " ----";
    COLOR 15: PRINT " |";
    COLOR 15: PRINT "                                        CIBC. For What Matters."
    COLOR 15: PRINT "   |";
    COLOR 15: PRINT "______";
    COLOR 15: PRINT "|"
    PRINT
    PRINT "________________________________________________________________________________"
    PRINT
    COLOR 14: PRINT "                                                 Hello, "; username
    COLOR 15: PRINT
    PRINT
    PRINT
    PRINT "         Enter Password: ";
    COLOR 4: INPUT "", password

    IF UCASE$(password) = "CANCEL" THEN GOTO 1

    PRINT
    PRINT
    PRINT
    PRINT
    PRINT
    PRINT
    PRINT
    COLOR 15: PRINT "         One moment please";
    SLEEP 1
    PRINT ".";
    SLEEP 1
    PRINT ".";
    SLEEP 1
    PRINT ".";
    IF password <> "SeCrEt!" THEN
        PRINT "         Incorrect password. Please Try Again."
        SLEEP 2
        CLS
    END IF
LOOP

IF choice = 3 AND password <> "SeCrEt!" THEN
    PRINT
    PRINT "     Password entered incorrectly three times. Returning to Welcome Screen."
    SLEEP 4
    GOTO 1
END IF

IF password = "SeCrEt!" THEN
    PRINT "         Log-in Successful."
    SLEEP 2
    GOTO 2
END IF

2
CLS

PRINT
COLOR 15: PRINT "    ------"
COLOR 15: PRINT "   |";
COLOR 14: PRINT " CIBC";
COLOR 15: PRINT " |"
COLOR 15: PRINT "   |";
COLOR 14: PRINT " ----";
COLOR 15: PRINT " |";
COLOR 15: PRINT "                                        CIBC. For What Matters."
COLOR 15: PRINT "   |";
COLOR 15: PRINT "______";
COLOR 15: PRINT "|"
PRINT
PRINT "________________________________________________________________________________"
PRINT
COLOR 14: PRINT "                                                 Hello, "; username
COLOR 15: PRINT
PRINT
PRINT
PRINT "         Please enter your account number(4-digit): ";
COLOR 14: INPUT "", pin



LET balance = 250
2.5
CLS
PRINT
COLOR 15: PRINT "    ------"
COLOR 15: PRINT "   |";
COLOR 14: PRINT " CIBC";
COLOR 15: PRINT " |"
COLOR 15: PRINT "   |";
COLOR 14: PRINT " ----";
COLOR 15: PRINT " |";
COLOR 15: PRINT "                                        CIBC. For What Matters."
COLOR 15: PRINT "   |";
COLOR 15: PRINT "______";
COLOR 15: PRINT "|"
PRINT
PRINT "________________________________________________________________________________"
PRINT
PRINT "   ___________________";
COLOR 14: PRINT "                           Hello, "; username
COLOR 15: PRINT "  |                   ";
PRINT "|"
PRINT "  |";
PRINT "      Deposit      ";
PRINT "|";
COLOR 14: PRINT "   Press '1'"
COLOR 15: PRINT "  |";
PRINT "___________________";
PRINT "|"
PRINT
PRINT "   ___________________"
PRINT "  |                   ";
PRINT "|"
PRINT "  |";
PRINT "     Withdraw      ";
PRINT "|";
COLOR 14: PRINT "   Press '2'"
COLOR 15: PRINT "  |";
PRINT "___________________";
PRINT "|"
PRINT
PRINT "   ___________________"
PRINT "  |                   ";
PRINT "|"

PRINT "  |";
PRINT "  Account Balance  ";
PRINT "|";
COLOR 14: PRINT "   Press '3'"
COLOR 15: PRINT "  |";
PRINT "___________________";
PRINT "|"
PRINT ;
COLOR 14: PRINT "                                           Enter what you would like to do: ";
COLOR 15: INPUT "", action

LET f$ = "$$###.##"

IF action = 1 THEN GOTO 3
IF action = 2 THEN GOTO 4
IF action = 3 THEN GOTO 5
IF action <> 1 OR 2 OR 3 THEN GOTO 2.5

3
CLS
PRINT
COLOR 15: PRINT "    ------"
COLOR 15: PRINT "   |";
COLOR 14: PRINT " CIBC";
COLOR 15: PRINT " |"
COLOR 15: PRINT "   |";
COLOR 14: PRINT " ----";
COLOR 15: PRINT " |";
COLOR 15: PRINT "                                        CIBC. For What Matters."
COLOR 15: PRINT "   |";
COLOR 15: PRINT "______";
COLOR 15: PRINT "|"
PRINT
PRINT "________________________________________________________________________________"
PRINT
COLOR 14: PRINT "                                                 Hello, "; username
COLOR 15: PRINT
PRINT
PRINT "         How much would you like to deposit?: ";
COLOR 14: INPUT "", deposit

LET total = balance + deposit
3.5
CLS
PRINT
PRINT
COLOR 15: PRINT "                 _______________________________________"
PRINT "                |                                       |"
PRINT "                |               Receipt                 |"
PRINT "                |_______________________________________|"
PRINT "                | ";
PRINT DATE$;
PRINT , , "|"
PRINT "                | ";
PRINT TIME$;
PRINT , , , "|"
PRINT "                |";
PRINT pin;
PRINT , , , "|"
PRINT "                |                                       |"
PRINT "                |                                       |"
PRINT "                |  ";
PRINT "Previous Balance: ";
PRINT USING f$; balance;
PRINT , "|"
PRINT "                |                                       |"
PRINT "                |  ";
PRINT "Deposited amount: ";
PRINT USING f$; deposit;
PRINT , "|"
PRINT "                |                                       |"
PRINT "                |  ";
PRINT "Final Balance: ";
PRINT USING f$; total;
PRINT , "|"
PRINT "                |_______________________________________|"
PRINT
PRINT
PRINT "             Would you like to make another transaction? (yes/no) ";
COLOR 14: INPUT "", action2

IF UCASE$(action2) = "YES" THEN
    LET balance = balance + deposit
    GOTO 2.5
END IF

IF UCASE$(action2) = "NO" THEN
    GOTO 6
ELSE PRINT "        Error."
    SLEEP 2
    GOTO 3.5
END IF

4
CLS
PRINT
COLOR 15: PRINT "    ------"
COLOR 15: PRINT "   |";
COLOR 14: PRINT " CIBC";
COLOR 15: PRINT " |"
COLOR 15: PRINT "   |";
COLOR 14: PRINT " ----";
COLOR 15: PRINT " |";
COLOR 15: PRINT "                                        CIBC. For What Matters."
COLOR 15: PRINT "   |";
COLOR 15: PRINT "______";
COLOR 15: PRINT "|"
PRINT
PRINT "________________________________________________________________________________"
PRINT
COLOR 14: PRINT "                                                 Hello, "; username
COLOR 15: PRINT
PRINT
PRINT "             How much would you like to withdraw? ";
COLOR 14: INPUT "", withdraw

LET y = balance - withdraw

IF withdraw > balance THEN
    PRINT "        Error."
    SLEEP 2
    CLS
    GOTO 4
END IF

4.5
CLS
PRINT
PRINT
COLOR 15: PRINT "                 _______________________________________"
PRINT "                |                                       |"
PRINT "                |               Receipt                 |"
PRINT "                |_______________________________________|"
PRINT "                | ";
PRINT DATE$;
PRINT , , "|"
PRINT "                | ";
PRINT TIME$;
PRINT , , , "|"
PRINT "                |";
PRINT pin;
PRINT , , , "|"
PRINT "                |                                       |"
PRINT "                |                                       |"
PRINT "                |  ";
PRINT "Previous Balance: ";
PRINT USING f$; balance;
PRINT , "|"
PRINT "                |                                       |"
PRINT "                |  ";
PRINT "Withdrawn amount: ";
PRINT USING f$; withdraw;
PRINT , "|"
PRINT "                |                                       |"
PRINT "                |  ";
PRINT "Final Balance: ";
PRINT USING f$; y;
PRINT , "|"
PRINT "                |_______________________________________|"
PRINT
PRINT
PRINT "             Would you like to make another transaction? (yes/no) ";
COLOR 15: INPUT "", action2

IF UCASE$(action2) = "YES" THEN
    LET balance = balance - withdraw
    GOTO 2.5
END IF

IF UCASE$(action2) = "NO" THEN
    GOTO 6
ELSE PRINT "        Error."
    SLEEP 2
    GOTO 4.5
END IF

5
CLS
PRINT
PRINT
COLOR 15: PRINT "                 _______________________________________"
PRINT "                |                                       |"
PRINT "                |  ";
PRINT "Account Balance: ";
PRINT USING f$; balance;
PRINT , "|"
PRINT "                |_______________________________________|"
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
COLOR 14: INPUT "                Press Enter to return to the transaction screen.", enter
GOTO 2.5

6
CLS
PRINT
COLOR 15: PRINT "    ------"
COLOR 15: PRINT "   |";
COLOR 14: PRINT " CIBC";
COLOR 15: PRINT " |"
COLOR 15: PRINT "   |";
COLOR 14: PRINT " ----";
COLOR 15: PRINT " |";
COLOR 15: PRINT "                                        CIBC. For What Matters."
COLOR 15: PRINT "   |";
COLOR 15: PRINT "______";
COLOR 15: PRINT "|"
PRINT
PRINT "________________________________________________________________________________"
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
COLOR 14: PRINT "               Thank you for using CIBC."
SLEEP 2

SCREEN 7:
COLOR 4: PRINT "  ###################################"

COLOR 4: PRINT "  ####";
COLOR 14: PRINT "******";
COLOR 4: PRINT "#";
COLOR 14: PRINT "****";
COLOR 4: PRINT "#";
COLOR 14: PRINT "*******";
COLOR 4: PRINT "####";
COLOR 14: PRINT "******";
COLOR 4: PRINT "##"

COLOR 4: PRINT "  ###";
COLOR 14: PRINT "**";
COLOR 4: PRINT "###";
COLOR 14: PRINT "**";
COLOR 4: PRINT "##";
COLOR 14: PRINT "**";
COLOR 4: PRINT "###";
COLOR 14: PRINT "**";
COLOR 4: PRINT "##";
COLOR 14: PRINT "***";
COLOR 4: PRINT "##";
COLOR 14: PRINT "**";
COLOR 4: PRINT "###";
COLOR 14: PRINT "**";
COLOR 4: PRINT "##"

COLOR 4: PRINT "  ##";
COLOR 14: PRINT "**";
COLOR 4: PRINT "#####";
COLOR 14: PRINT "*";
COLOR 4: PRINT "##";
COLOR 14: PRINT "**";
COLOR 4: PRINT "###";
COLOR 14: PRINT "**";
COLOR 4: PRINT "###";
COLOR 14: PRINT "**";
COLOR 4: PRINT "#";
COLOR 14: PRINT "**";
COLOR 4: PRINT "#####";
COLOR 14: PRINT "*";
COLOR 4: PRINT "##"

COLOR 4: PRINT "  ##";
COLOR 14: PRINT "**";
COLOR 4: PRINT "########";
COLOR 14: PRINT "**";
COLOR 4: PRINT "###";
COLOR 14: PRINT "**";
COLOR 4: PRINT "###";
COLOR 14: PRINT "**";
COLOR 4: PRINT "#";
COLOR 14: PRINT "**";
COLOR 4: PRINT "########"

COLOR 4: PRINT "  ##";
COLOR 14: PRINT "**";
COLOR 4: PRINT "########";
COLOR 14: PRINT "**";
COLOR 4: PRINT "###";
COLOR 14: PRINT "******";
COLOR 4: PRINT "##";
COLOR 14: PRINT "**";
COLOR 4: PRINT "########"

COLOR 4: PRINT "  ##";
COLOR 14: PRINT "**";
COLOR 4: PRINT "########";
COLOR 14: PRINT "**";
COLOR 4: PRINT "###";
COLOR 14: PRINT "**";
COLOR 4: PRINT "##";
COLOR 14: PRINT "***";
COLOR 4: PRINT "#";
COLOR 14: PRINT "**";
COLOR 4: PRINT "########"

COLOR 4: PRINT "  ##";
COLOR 14: PRINT "**";
COLOR 4: PRINT "########";
COLOR 14: PRINT "**";
COLOR 4: PRINT "###";
COLOR 14: PRINT "**";
COLOR 4: PRINT "###";
COLOR 14: PRINT "**";
COLOR 4: PRINT "#";
COLOR 14: PRINT "**";
COLOR 4: PRINT "########"

COLOR 4: PRINT "  ##";
COLOR 14: PRINT "**";
COLOR 4: PRINT "########";
COLOR 14: PRINT "**";
COLOR 4: PRINT "###";
COLOR 14: PRINT "**";
COLOR 4: PRINT "###";
COLOR 14: PRINT "**";
COLOR 4: PRINT "#";
COLOR 14: PRINT "**";
COLOR 4: PRINT "########"

COLOR 4: PRINT "  ###";
COLOR 14: PRINT "**";
COLOR 4: PRINT "####";
COLOR 14: PRINT "*";
COLOR 4: PRINT "##";
COLOR 14: PRINT "**";
COLOR 4: PRINT "###";
COLOR 14: PRINT "**";
COLOR 4: PRINT "##";
COLOR 14: PRINT "***";
COLOR 4: PRINT "##";
COLOR 14: PRINT "**";
COLOR 4: PRINT "####";
COLOR 14: PRINT "*";
COLOR 4: PRINT "##"

COLOR 4: PRINT "  ####";
COLOR 14: PRINT "******";
COLOR 4: PRINT "#";
COLOR 14: PRINT "****";
COLOR 4: PRINT "#";
COLOR 14: PRINT "*******";
COLOR 4: PRINT "####";
COLOR 14: PRINT "******";
COLOR 4: PRINT "##"

COLOR 4: PRINT "  ###################################"
COLOR 4: PRINT "  ###################################"

COLOR 4: PRINT "  ##################";
COLOR 14: PRINT "****************";
COLOR 4: PRINT "#"

COLOR 4: PRINT "  ##########";
COLOR 14: PRINT "*********";
COLOR 4: PRINT "################"

COLOR 4: PRINT "  ####";
COLOR 14: PRINT "******";
COLOR 4: PRINT "##########";
COLOR 15: PRINT "**************";
COLOR 4: PRINT "#"

COLOR 4: PRINT "  #";
COLOR 14: PRINT "*****";
COLOR 4: PRINT "#####";
COLOR 15: PRINT "*********";
COLOR 4: PRINT "###############"

COLOR 4: PRINT "  #";
COLOR 14: PRINT "***";
COLOR 4: PRINT "###";
COLOR 15: PRINT "*****";
COLOR 4: PRINT "#######################"

COLOR 4: PRINT "  #";
COLOR 14: PRINT "*";
COLOR 4: PRINT "###";
COLOR 15: PRINT "***";
COLOR 4: PRINT "###########################"

COLOR 4: PRINT "  ###";
COLOR 15: PRINT "***";
COLOR 4: PRINT "#############################"

COLOR 4: PRINT "  #";
COLOR 15: PRINT "***";
COLOR 4: PRINT "###############################"

COLOR 4: PRINT "  #";
COLOR 15: PRINT "*";
COLOR 4: PRINT "#################################"

COLOR 4: PRINT "  ###################################"
SLEEP 5
GOTO 1

