      program main
      include 'mpif.h'
      integer rank, size, ierror, tag, status(MPI_STATUS_SIZE)
      call MPI_INIT(ierror)
      call MPI_COMM_RANK(MPI_COMM_WORLD, rank, ierror)
      call MPI_COMM_SIZE(MPI_COMM_WORLD, size, ierror)
      write(*,*) "hello from node",rank,"of",size
      call MPI_FINALIZE(ierror)
      end program main
