PROGRAM Triangle
    IMPLICIT NONE

    real :: start, finish
    character*10 b(3)
    INTEGER*8   :: index
    INTEGER*8   :: add

    call date_and_time(b(1), b(2), b(3))
    call cpu_time(start)

        DO index = 0, 100000000, 1
            add = add + index
        END DO

    call cpu_time(finish)

    print *, '=========================='
    print *, 'fortran 테스트'
    print *,  add
    print *,  finish - start

END PROGRAM Triangle