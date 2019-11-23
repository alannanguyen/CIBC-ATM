REM Alanna Nguyen's CIBC ATM: gr.11 com-sci [June 17, 2013]

_TITLE "CIBC ATM"

DIM username AS STRING
DIM password AS STRING
DIM pin AS LONG
DIM action AS INTEGER
DIM actionString AS STRING
DIM balance AS INTEGER
DIM deposit AS INTEGER
DIM withdraw AS INTEGER

CLS
1
SCREEN 9:
COLOR , 4: CLS
username = ""
password = ""
actionString = ""

PRINT
COLOR 15: PRINT "    ------"
PRINT "   |";
COLOR 14: PRINT " CIBC";
COLOR 15: PRINT " |"
PRINT "   |";
COLOR 14: PRINT " ====";
COLOR 15: PRINT " |                                        CIBC. For What Matters."
PRINT "   |______|"
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
PRINT "   |";
COLOR 14: PRINT " CIBC";
COLOR 15: PRINT " |"
PRINT "   |";
COLOR 14: PRINT " ====";
COLOR 15: PRINT " |                                        CIBC. For What Matters."
PRINT "   |______|"
PRINT
PRINT "________________________________________________________________________________"
PRINT
PRINT
PRINT
PRINT
PRINT
COLOR 14: PRINT "         Log-in"
COLOR 15: PRINT "         ******"
PRINT
PRINT "         Enter Name: ";
COLOR 14: INPUT "", username

IF UCASE$(username) = "CANCEL" THEN GOTO 1

CLS

LET choice = 0
DO UNTIL password = "SeCrEt!" OR choice = 3
    choice = choice + 1
    PRINT
    COLOR 15: PRINT "    ------"
    PRINT "   |";
    COLOR 14: PRINT " CIBC";
    COLOR 15: PRINT " |"
    PRINT "   |";
    COLOR 14: PRINT " ====";
    COLOR 15: PRINT " |                                        CIBC. For What Matters."
    PRINT "   |______|"
    PRINT
    PRINT "________________________________________________________________________________"
    PRINT
    PRINT
    PRINT
    PRINT
    PRINT
    COLOR 14: PRINT "         Log-in"
    COLOR 15: PRINT "         ******"
    PRINT
    PRINT "         User Name: "; 
    COLOR 14: PRINT username
    PRINT
    COLOR 15: PRINT "         Enter Password: ";
    COLOR 4: INPUT "", password
    COLOR 14:
    IF UCASE$(password) = "CANCEL" THEN GOTO 1

    PRINT
    PRINT
    PRINT
    PRINT
    COLOR 15: PRINT ,"One moment please";
    SLEEP 1
    PRINT ".";
    SLEEP 1
    PRINT ".";
    SLEEP 1
    PRINT ".";
    IF password <> "SeCrEt!" THEN
        PRINT "   Incorrect password. Please Try Again."
        SLEEP 2
        CLS
    END IF
LOOP

IF choice = 3 AND password <> "SeCrEt!" THEN
    PRINT ,"Password entered incorrectly three times. Returning to Welcome Screen."
    SLEEP 4
    GOTO 1
END IF

IF password = "SeCrEt!" THEN
    PRINT ,,"Log-in Successful."
    SLEEP 2
    GOTO 2
END IF

2
COLOR , 4: CLS
PRINT
COLOR 15: PRINT "    ------"
PRINT "   |";
COLOR 14: PRINT " CIBC";
COLOR 15: PRINT " |"
PRINT "   |";
COLOR 14: PRINT " ====";
COLOR 15: PRINT " |                                        CIBC. For What Matters."
PRINT "   |______|"
PRINT
PRINT "________________________________________________________________________________"
PRINT
PRINT "    Hello, "; username
PRINT
PRINT
PRINT
COLOR 14: PRINT "         Account Selection"
COLOR 15: PRINT "         *****************"
PRINT
PRINT "         Please enter your account number(4-digit): ";
COLOR 14: INPUT "", pin



LET balance = 250
2.5
COLOR , 4: CLS
PRINT
COLOR 15: PRINT "    ------"
PRINT "   |";
COLOR 14: PRINT " CIBC";
COLOR 15: PRINT " |"
PRINT "   |";
COLOR 14: PRINT " ====";
COLOR 15: PRINT " |                                        CIBC. For What Matters."
PRINT "   |______|"
PRINT
PRINT "________________________________________________________________________________"
' PRINT "    To Exit: ";
' COLOR 14: PRINT "Press '0'"
COLOR 15: PRINT "                                                         ___________________"
PRINT "                                                        |                   |"
COLOR 14: PRINT "                                             Press '1'  ";                                 
COLOR 15: PRINT "|      Deposit      |"
PRINT "                                                        |___________________|"
PRINT
COLOR 15: PRINT "                                                         ___________________"
PRINT "                                                        |                   |"
COLOR 14: PRINT "                                             Press '2'  ";                                 
COLOR 15: PRINT "|      Withdraw     |"
PRINT "                                                        |___________________|"
PRINT
COLOR 15: PRINT "                                                         ___________________"
PRINT "                                                        |                   |"
COLOR 14: PRINT "                                             Press '3'  ";                                 
COLOR 15: PRINT "|  Account Balance  |"
PRINT "                                                        |___________________|"
PRINT
PRINT "    Enter what you would like to do: ";
COLOR 14: INPUT "", action

LET f$ = "$$###.##"

IF action = 0 THEN GOTO 1
IF action = 1 THEN GOTO 3
IF action = 2 THEN GOTO 4
IF action = 3 THEN GOTO 5
IF action <> 1 OR 2 OR 3 THEN GOTO 2.5

3
COLOR , 4: CLS
PRINT
COLOR 15: PRINT "    ------"
PRINT "   |";
COLOR 14: PRINT " CIBC";
COLOR 15: PRINT " |"
PRINT "   |";
COLOR 14: PRINT " ====";
COLOR 15: PRINT " |                                        CIBC. For What Matters."
PRINT "   |______|"
PRINT
PRINT "________________________________________________________________________________"
PRINT
PRINT "    Hello, "; username
PRINT
PRINT
PRINT
PRINT "         How much would you like to deposit?: ";
COLOR 14: INPUT "", deposit

LET totalD = balance + deposit
3.5
COLOR , 4: CLS
PRINT
PRINT
COLOR 15: PRINT "                       _________________________________"
PRINT "                      |                                 |"
PRINT "                      |             Receipt             |"
PRINT "                      |_________________________________|"
PRINT "                      | "; DATE$ ,, "|"
PRINT "                      | "; TIME$ ,, "|"
PRINT "                      |"; pin ,, "|"
PRINT "                      |                                 |"
PRINT "                      |                                 |"
PRINT "                      |  Previous Balance: ";
PRINT USING f$; balance;
PRINT, "|"
PRINT "                      |                                 |"
PRINT "                      |  Deposited amount: ";
PRINT USING f$; deposit;
PRINT , "|"
PRINT "                      |                                 |"
PRINT "                      |  Final Balance: ";
PRINT USING f$; totalD;
PRINT , "|"
PRINT "                      |_________________________________|"
PRINT
PRINT
PRINT "             Would you like to make another transaction? (yes/no) ";
COLOR 14: INPUT "", actionString

IF UCASE$(actionString) = "YES" THEN
    LET balance = balance + deposit
    GOTO 2.5
END IF

IF UCASE$(actionString) = "NO" THEN
    GOTO 6
ELSE PRINT
    PRINT ,,"Error: invalid input."
    SLEEP 2
    GOTO 3.5
END IF

4
COLOR , 4: CLS
PRINT
COLOR 15: PRINT "    ------"
PRINT "   |";
COLOR 14: PRINT " CIBC";
COLOR 15: PRINT " |"
PRINT "   |";
COLOR 14: PRINT " ====";
COLOR 15: PRINT " |                                        CIBC. For What Matters."
PRINT "   |______|"
PRINT
PRINT "________________________________________________________________________________"
PRINT
PRINT "    Hello, "; username
PRINT
PRINT
PRINT
PRINT "             How much would you like to withdraw? ";
COLOR 14: INPUT "", withdraw

IF withdraw > balance THEN
    PRINT
    PRINT "         Error, not enough funds. Enter a lower amount"
    SLEEP 2
    CLS
    GOTO 4
END IF

LET totalW = balance - withdraw

4.5
COLOR , 4: CLS
PRINT
PRINT
COLOR 15: PRINT "                       _________________________________"
PRINT "                      |                                 |"
PRINT "                      |             Receipt             |"
PRINT "                      |_________________________________|"
PRINT "                      | "; DATE$ ,, "|"
PRINT "                      | "; TIME$ ,, "|"
PRINT "                      |"; pin ,, "|"
PRINT "                      |                                 |"
PRINT "                      |                                 |"
PRINT "                      |  Previous Balance: ";
PRINT USING f$; balance;
PRINT, "|"
PRINT "                      |                                 |"
PRINT "                      |  Withdrawn amount: ";
PRINT USING f$; withdraw;
PRINT , "|"
PRINT "                      |                                 |"
PRINT "                      |  Final Balance: ";
PRINT USING f$; totalW;
PRINT , "|"
PRINT "                      |_________________________________|"
PRINT
PRINT
PRINT "             Would you like to make another transaction? (yes/no) ";
COLOR 14: INPUT "", actionString

IF UCASE$(actionString) = "YES" THEN
    LET balance = balance - withdraw
    GOTO 2.5
END IF

IF UCASE$(actionString) = "NO" THEN
    GOTO 6
ELSE PRINT
    PRINT ,,"Error: invalid input."
    SLEEP 2
    GOTO 4.5
END IF

5
COLOR , 4: CLS
PRINT
PRINT
COLOR 15: PRINT "                       _________________________________"
PRINT "                      |                                 |"
PRINT "                      |             Receipt             |"
PRINT "                      |_________________________________|"
PRINT "                      | "; DATE$ ,, "|"
PRINT "                      | "; TIME$ ,, "|"
PRINT "                      |"; pin ,, "|"
PRINT "                      |                                 |"
PRINT "                      |  Account Balance: ";
PRINT USING f$; balance;
PRINT , "|"
PRINT "                      |_________________________________|"
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
INPUT "               Press Enter to return to the transaction screen.", enter
GOTO 2.5

6
COLOR , 4: CLS
PRINT
COLOR 15: PRINT "    ------"
PRINT "   |";
COLOR 14: PRINT " CIBC";
COLOR 15: PRINT " |"
PRINT "   |";
COLOR 14: PRINT " ====";
COLOR 15: PRINT " |                                        CIBC. For What Matters."
PRINT "   |______|"
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

7
SCREEN 9:
COLOR , 4: CLS
PRINT
COLOR 14: PRINT "             ************  ********  **************        ************"
COLOR 14: PRINT "           ****       ***    ****      ****    ******    ****       ***"
COLOR 14: PRINT "         ****           *    ****      ****      ****  ****           *"
COLOR 14: PRINT "         ****                ****      ****      ****  ****"
COLOR 14: PRINT "         ****                ****      ****    *****   ****"
COLOR 14: PRINT "         ****                ****      ************    ****"
COLOR 14: PRINT "         ****                ****      ****    *****   ****"
COLOR 14: PRINT "         ****                ****      ****      ****  ****"
COLOR 14: PRINT "         ****                ****      ****      ****  ****"
COLOR 14: PRINT "         ****                ****      ****      ****  ****"
COLOR 14: PRINT "           ****      ****    ****      ****    ******    ****      ****"
COLOR 14: PRINT "             ***********   ********  **************        ***********"
PRINT
PRINT
COLOR 14: PRINT "                                         ********************************"
COLOR 14: PRINT "                        ******************"
COLOR 14: PRINT "             ************";
COLOR 15: PRINT "                    ****************************"
COLOR 14: PRINT "       **********";
COLOR 15: PRINT "           ******************"
COLOR 14: PRINT "       ******";
COLOR 15: PRINT "      **********"
COLOR 14: PRINT "       **";
COLOR 15: PRINT "      ******"
COLOR 15: PRINT "           ******"
COLOR 15: PRINT "       ******"
COLOR 15: PRINT "       **";
INPUT "                                      Press Enter to continue.", enter

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
SLEEP 1
GOTO 1