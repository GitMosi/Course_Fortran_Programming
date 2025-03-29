PROGRAM Equation_Solver_Fortran
! This program calculates the real roots of a second-order equation

IMPLICIT NONE
! Explicitly declare variables without initialization

REAL :: a, b, c
! Declare real variables for coefficients a, b, c

REAL :: Delta, x1, x2
! Declare real variables for discriminant and roots

CHARACTER :: end_key
! Declare character variable for program termination

! Main Program

WRITE(*,*) 'Please enter the equation coefficients a*x^2+b*x+c'
WRITE(*,*) 'a: ?'
READ(*,*) a
WRITE(*,*) 'b: ?'
READ(*,*) b
WRITE(*,*) 'c: ?'
READ(*,*) c

! Calculate the discriminant
Delta = b**2 - 4*a*c

IF (Delta >= 0) THEN
    ! If discriminant is non-negative, calculate real roots
    x1 = (b + SQRT(Delta)) / (2 * a)
    x2 = (b - SQRT(Delta)) / (2 * a)
    WRITE(*,*) 'The real roots are:', x1, x2
ELSE
    ! If discriminant is negative, there are no real roots
    WRITE(*,*) 'This equation has no real root!'
ENDIF

READ(*,*) end_key
END PROGRAM Equation_Solver_Fortran
