CLS
COLOR 10
PRINT "INITIALIZING SYSTEM..."
SLEEP 1  'Waits 1 second
PRINT "DECRYPTING LAYERS..."
SLEEP 1
PRINT "ACCESSING: THE 100TH CIPHER OF [PORCHES]"
PRINT "------------------------------------------"
PRINT " MISSION: Locate the hidden frequency."
PRINT " RANGE  : 1 to 100"
PRINT "------------------------------------------"

RANDOMIZE TIMER
secretNumber = INT(RND * 100) + 1
guesses = 0
guess = 0

WHILE guess <> secretNumber
    COLOR 10  'Hacker Green
    PRINT
    INPUT " ENTER CIPHER KEY: ", guess
    guesses = guesses + 1

    IF guess < secretNumber THEN
        COLOR 12  'Light Red for error
        PLAY "O2 L32 E"
        PRINT " >> STATUS: FREQUENCY TOO LOW"
    ELSEIF guess > secretNumber THEN
        COLOR 12  'Light Red for error
        PLAY "O2 L32 C"
        PRINT " >> STATUS: FREQUENCY TOO HIGH"
    ELSE
        '--- VICTORY SECTION ---
        COLOR 14  'Gold/Yellow
        PRINT "------------------------------------------"
        PRINT " [!] SUCCESS: CIPHER BROKEN [!]"
        PRINT " SYSTEM UNLOCKED IN"; guesses; "ATTEMPTS."
        PRINT "------------------------------------------"
        'Cool Victory Sound (Fanfare)
        PLAY "O3 L16 C E G O4 L8 C O3 L16 G O4 L2 C"
    END IF
WEND

PRINT
PRINT "Press any key to exit the terminal..."
SLEEP
END
