program Character_Inspector
    implicit none
    integer :: i, m(2,26), f, b
    character(3) :: a
    character(5) :: ch1
    character (len=1) :: asghar

    ! Open input file 'asghar.txt' for reading
    open(1, file='asghar.txt')

    ! Print prompt message
    print*, "dear dude, please type 'yes' if it is the original."

    ! Read user input
    read*, a

    ! Open output file '1.txt' for reading
    open(200, file='1.txt')

    ! Read array m from file
    read(200, *) m(2,26)

    ! Convert string 'asghar' to ASCII value
    b = iachar(asghar(1,10000))

    ! Check if user input is 'yes'
    if (a=='yes') then
        ! Read string 'asghar' from file
        read(1, *) asghar(1, f)
        
        ! Print entire string
        write(*,'(1000a1)') asghar

        ! Loop through characters in 'asghar'
        do f=1,10000
            do i=1,26
                ! Check if character matches any letter in array m
                if (asghar(1,f)==m(1,i)) then
                    ! Print corresponding ASCII value
                    write(*,*) m(2,i)
                end if
            end do
        end do
    end if
end program Character_Inspector


PROGRAM ANALYSE_TEXT
    IMPLICIT NONE
    INTEGER :: IO = 0, k=1 ! holds i/o status
    INTEGER :: NLETTERS = 0    ! number of letters read
    INTEGER :: NWORDS = 0 ! number of words read
    CHARACTER CH, LAST_CH, t, m(1000) ! successive characters
    CHARACTER (LEN=*), PARAMETER :: ALPHABET = &
        'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
    CHARACTER, PARAMETER :: SPACE=' '

    LAST_CH = SPACE

    ! Open input file 'text.txt' for reading
    OPEN ( 10, FILE = 'text.txt')

    ! Open output file 'text2.txt' for writing
    open(20,file='text2.txt')

    ! Read characters one-by-one until end of file is reached
    DO WHILE ( IO /= -1 ) ! IO=-1 means EOF
        ! Read one character
        READ ( 10, '( A1 )', IOSTAT = IO, ADVANCE = 'NO' ) CH
        
        IF ( IO == 0 ) THEN ! a character has been read
            k=k+1
            call abc(ch,t)
            print*, t
            m(k) = t

            ! Is it a new word?
            IF (LAST_CH == SPACE .AND. CH /= SPACE ) NWORDS = NWORDS + 1
            
            ! Is it a letter of the alphabet or something else?
            IF ( INDEX( ALPHABET, CH ) /= 0 ) NLETTERS = NLETTERS + 1
            
            LAST_CH = CH ! update last character
        ELSE ! end of line or end of file
            LAST_CH = SPACE
        END IF
    END DO
    
    ! Write array m to output file
    write(20,'(30a1)') m

    ! Close input file
    CLOSE (10)

    ! Output the analysis
END PROGRAM ANALYSE_TEXT

! Subroutine abc
subroutine abc(x,y)
    character, intent(in) :: x
    character, intent(out) :: y
    character :: a
    integer :: i
    
    ! Convert input character to ASCII value
    i=ichar(x)
    
    ! Perform case conversion
    select case(i)
        case(97)
            i=122
        case(98)
            i=121
        case(99)
            i=120
        case(100)
            i=119
        case(101)
            i=118
        case(102)
            i=117
    end select
    
    ! Convert ASCII value back to character
    y=achar(i)

end subroutine abc
