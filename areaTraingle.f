! cerner_2tothe5th_2022
program area

    implicit none
    real :: A, B, C, S

    ! finding area of triangle
    read *, A, B, C
    S = (A + B + C)/2
    A = sqrt(S*(S-A)*(S-B)*(S-C))
    print *,"area =",A
    stop
end program area
