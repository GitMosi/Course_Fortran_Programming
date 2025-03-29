PROGRAM Analyse_Text
! This is the main program declaration

IMPLICIT NONE
! Explicitly declare variables without initialization

integer :: j, i
! Declare integer variables j and i

character :: shit
! Declare a character variable shit

INTEGER :: IO = 0
! Holds I/O status (initially set to 0, indicating successful operation)

INTEGER :: NLETTERS = 0
! Number of letters read

INTEGER :: NWORDS = 0
! Number of words read

CHARACTER CH, LAST_CH
! Declare character variables CH and LAST_CH

CHARACTER (LEN=*), PARAMETER :: ALPHABET =
'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
! Define an alphabet string as a parameter

CHARACTER, PARAMETER :: SPACE = ' '
! Define space character as a parameter

LAST_CH = SPACE
! Initialize LAST_CH with space character

! Open the text file
OPEN (10, FILE = 'text.txt')

! Read characters one-by-one until end of file is reached
DO WHILE (IO /= -1)
! IO=-1 means EOF (End of File)

    ! Read one character
    READ (10, '(A1)', IOSTAT = IO, ADVANCE = 'NO') CH

    i = ichar(ch)
    i = i + 3
    shit = achar(i)
! Increment ASCII value of each character by 3

    IF (IO == 0) THEN
! A character has been read successfully
        PRINT *, 'Character = ', CH
! Is it a new word?
        IF (LAST_CH == SPACE .AND. CH /= SPACE) NWORDS = NWORDS + 1
! Is it a letter of the alphabet or something else?
        IF (INDEX(ALPHABET, CH) /= 0) NLETTERS = NLETTERS + 1
        LAST_CH = CH ! Update last character
    ELSE
! End of line or end of file
        PRINT *, shit, ch
        LAST_CH = SPACE
    END IF
END DO

! Close the text file
CLOSE(10)

! Output the analysis
PRINT *, 'Number of letters = ', NLETTERS
PRINT *, 'Number of words = ', NWORDS
END PROGRAM Analyse_Text
