! Main program for text encryption/decryption
program Text_Encryption_Decryption_Utility
    IMPLICIT NONE
    
    ! Declare variables
    INTEGER :: IO = 0, k = 1, l
    REAL(4) :: ran
    CHARACTER :: CH, t, m(1000), check

    ! Open input/output files
    open(10, file='original1.txt')
    open(30, file='encrypted2.txt')
    open(40, file='original2.txt')

    ! Prompt user for action
    print*, "type 'y' if you want to encrypt your file."
    read*, check

    IF (check == 'y') THEN
        print*, 'encryption process'
        
        ! Encryption loop
        DO WHILE (IO /= -1) 
            read (10, '( A1 )', IOSTAT = IO, ADVANCE = 'NO' ) CH
            IF (IO == 0) THEN 
                k = k + 1
                CALL abc(CH, t)
                m(k) = t
            END IF
        END DO
        
        ! Print and write encrypted message
        write(*,'(<k>a1)') m
        open(20, file='encrypted1.txt')
        write(20,'(<k>a1)') m
        close (10)
    ELSE
        print*, 'decryption process'

        ! Decryption loop
        DO WHILE (IO /= -1) 
            read (30, '( A1 )', IOSTAT = IO, ADVANCE = 'NO' ) CH
            IF (IO == 0) THEN 
                k = k + 1
                CALL cba(CH, t)
                m(k) = t
            END IF
        END DO
        
        ! Write decrypted message
        write(40,'(<k>a1)') m
        close (30)
    END IF

END PROGRAM Text_Encryption_Decryption_Utility

! Subroutine for encryption
SUBROUTINE abc(x, y)
    CHARACTER, INTENT(IN) :: x
    CHARACTER, INTENT(OUT) :: y
    CHARACTER :: a, m(2,52)
    CHARACTER, PARAMETER :: space = ' '
    INTEGER :: i, j, k, n, io, l
    
    ! Open secret file
    open(1, file='encryption_secret.txt')
    
    DO i = 1, 2
        read(1,*, iostat=io) (m(i,j), j=1,52)
        IF (io /= 0) EXIT
    END DO
    
    IF (x == space) THEN
        y = ' '
    ELSE
        DO k = 1, 52
            IF (x == m(1,k)) THEN
                y = m(2,k)
            END IF
        END DO
    END IF
END SUBROUTINE abc

! Subroutine for decryption
SUBROUTINE cba(x, y)
    CHARACTER, INTENT(IN) :: x
    CHARACTER, INTENT(OUT) :: y
    CHARACTER :: a, m(2,52)
    CHARACTER, PARAMETER :: space = ' '
    INTEGER :: i, j, k, n, io, l
    
    ! Open secret file
    open(1, file='encryption_secret.txt')
    
    DO i = 1, 2
        read(1,*, iostat=io) (m(i,j), j=1,52)
        IF (io /= 0) EXIT
    END DO
    
    IF (x == space) THEN
        y = ' '
    ELSE
        DO k = 1, 52
            IF (x == m(2,k)) THEN
                y = m(1,k)
            END IF
        END DO
    END IF
END SUBROUTINE cba
