! Copyright (c) 2019. Triad National Security, LLC. All rights reserved.
!
! This program was produced under U.S. Government contract 89233218CNA000001 for
! Los Alamos National Laboratory (LANL), which is operated by Triad National
! Security, LLC for the U.S. Department of Energy/National Nuclear Security
! Administration. All rights in the program are reserved by Triad National
! Security, LLC, and the U.S. Department of Energy/National Nuclear Security
! Administration. The Government is granted for itself and others acting on
! its behalf a nonexclusive, paid-up, irrevocable worldwide license in this
! material to reproduce, prepare derivative works, distribute copies to the
! public, perform publicly and display publicly, and to permit others to do so.
!
! This program is open source under the BSD-3 License.
!
! Redistribution and use in source and binary forms, with or without modification,
! are permitted provided that the following conditions are met:
!
! 1. Redistributions of source code must retain the above copyright
!   notice, this list of conditions and the following disclaimer.
! 2. Redistributions in binary form must reproduce the above copyright
!   notice, this list of conditions and the following disclaimer in the
!   documentation and/or other materials provided with the distribution.
! 3. Neither the name of the copyright holder nor the
!   names of its contributors may be used to endorse or promote products
!   derived from this software without specific prior written permission.
!
! THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
! ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
! WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
! DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
! DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
! (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
! LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
! ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
! (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
! SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

module flcl_view_mod
  use, intrinsic :: iso_c_binding
  use, intrinsic :: iso_fortran_env
  use flcl_util_strings_mod, only: char_add_null
  
  implicit none
  private
  
  public kokkos_allocate_view
  public kokkos_deallocate_view

  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! 1D Kokkos View types
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  type, bind(c) :: view_l_1d_t
    private
      type(c_ptr) :: handle
  end type view_l_1d_t

  type, bind(c) :: view_i32_1d_t
    private
      type(c_ptr) :: handle
  end type view_i32_1d_t

  type, bind(c) :: view_i64_1d_t
    private
      type(c_ptr) :: handle
  end type view_i64_1d_t

  type, bind(c) :: view_r32_1d_t
    private
      type(c_ptr) :: handle
  end type view_r32_1d_t

  type, bind(c) :: view_r64_1d_t
    private
      type(c_ptr) :: handle
  end type view_r64_1d_t
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! 2D Kokkos View types
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  type, bind(c) :: view_l_2d_t
    private
      type(c_ptr) :: handle
  end type view_l_2d_t

  type, bind(c) :: view_i32_2d_t
    private
      type(c_ptr) :: handle
  end type view_i32_2d_t

  type, bind(c) :: view_i64_2d_t
    private
      type(c_ptr) :: handle
  end type view_i64_2d_t

  type, bind(c) :: view_r32_2d_t
    private
      type(c_ptr) :: handle
  end type view_r32_2d_t

  type, bind(c) :: view_r64_2d_t
    private
      type(c_ptr) :: handle
  end type view_r64_2d_t
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! 3D Kokkos View types
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  type, bind(c) :: view_l_3d_t
    private
      type(c_ptr) :: handle
  end type view_l_3d_t

  type, bind(c) :: view_i32_3d_t
    private
      type(c_ptr) :: handle
  end type view_i32_3d_t

  type, bind(c) :: view_i64_3d_t
    private
      type(c_ptr) :: handle
  end type view_i64_3d_t

  type, bind(c) :: view_r32_3d_t
    private
      type(c_ptr) :: handle
  end type view_r32_3d_t

  type, bind(c) :: view_r64_3d_t
    private
      type(c_ptr) :: handle
  end type view_r64_3d_t
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! 4D Kokkos View types
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  type, bind(c) :: view_l_4d_t
    private
      type(c_ptr) :: handle
  end type view_l_4d_t

  type, bind(c) :: view_i32_4d_t
    private
      type(c_ptr) :: handle
  end type view_i32_4d_t

  type, bind(c) :: view_i64_4d_t
    private
      type(c_ptr) :: handle
  end type view_i64_4d_t

  type, bind(c) :: view_r32_4d_t
    private
      type(c_ptr) :: handle
  end type view_r32_4d_t

  type, bind(c) :: view_r64_4d_t
    private
      type(c_ptr) :: handle
  end type view_r64_4d_t
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! 5D Kokkos View types
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  type, bind(c) :: view_l_5d_t
    private
      type(c_ptr) :: handle
  end type view_l_5d_t

  type, bind(c) :: view_i32_5d_t
    private
      type(c_ptr) :: handle
  end type view_i32_5d_t

  type, bind(c) :: view_i64_5d_t
    private
      type(c_ptr) :: handle
  end type view_i64_5d_t

  type, bind(c) :: view_r32_5d_t
    private
      type(c_ptr) :: handle
  end type view_r32_5d_t

  type, bind(c) :: view_r64_5d_t
    private
      type(c_ptr) :: handle
  end type view_r64_5d_t
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! 6D Kokkos View types
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  type, bind(c) :: view_l_6d_t
    private
      type(c_ptr) :: handle
  end type view_l_6d_t

  type, bind(c) :: view_i32_6d_t
    private
      type(c_ptr) :: handle
  end type view_i32_6d_t

  type, bind(c) :: view_i64_6d_t
    private
      type(c_ptr) :: handle
  end type view_i64_6d_t

  type, bind(c) :: view_r32_6d_t
    private
      type(c_ptr) :: handle
  end type view_r32_6d_t

  type, bind(c) :: view_r64_6d_t
    private
      type(c_ptr) :: handle
  end type view_r64_6d_t
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! 7D Kokkos View types
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  type, bind(c) :: view_l_7d_t
    private
      type(c_ptr) :: handle
  end type view_l_7d_t

  type, bind(c) :: view_i32_7d_t
    private
      type(c_ptr) :: handle
  end type view_i32_7d_t

  type, bind(c) :: view_i64_7d_t
    private
      type(c_ptr) :: handle
  end type view_i64_7d_t

  type, bind(c) :: view_r32_7d_t
    private
      type(c_ptr) :: handle
  end type view_r32_7d_t

  type, bind(c) :: view_r64_7d_t
    private
      type(c_ptr) :: handle
  end type view_r64_7d_t
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! kokkos_allocate_view interface
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  
  interface kokkos_allocate_view
    ! 1D specializations
    module procedure kokkos_allocate_v_l_1d
    module procedure kokkos_allocate_v_i32_1d
    module procedure kokkos_allocate_v_i64_1d
    module procedure kokkos_allocate_v_r32_1d
    module procedure kokkos_allocate_v_r64_1d

    ! 2D specializations  
    module procedure kokkos_allocate_v_l_2d
    module procedure kokkos_allocate_v_i32_2d
    module procedure kokkos_allocate_v_i64_2d
    module procedure kokkos_allocate_v_r32_2d
    module procedure kokkos_allocate_v_r64_2d

    ! 3D specializations
    module procedure kokkos_allocate_v_l_3d
    module procedure kokkos_allocate_v_i32_3d
    module procedure kokkos_allocate_v_i64_3d
    module procedure kokkos_allocate_v_r32_3d
    module procedure kokkos_allocate_v_r64_3d
  end interface kokkos_allocate_view
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! kokkos_deallocate_view interface
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  
  interface kokkos_deallocate_view
    ! 1D specializations
    module procedure kokkos_deallocate_v_l_1d
    module procedure kokkos_deallocate_v_i32_1d
    module procedure kokkos_deallocate_v_i64_1d
    module procedure kokkos_deallocate_v_r32_1d
    module procedure kokkos_deallocate_v_r64_1d

    ! 2D specializations
    module procedure kokkos_deallocate_v_l_2d
    module procedure kokkos_deallocate_v_i32_2d
    module procedure kokkos_deallocate_v_i64_2d
    module procedure kokkos_deallocate_v_r32_2d
    module procedure kokkos_deallocate_v_r64_2d

    ! 3D specializations
    module procedure kokkos_deallocate_v_l_3d  
    module procedure kokkos_deallocate_v_i32_3d
    module procedure kokkos_deallocate_v_i64_3d
    module procedure kokkos_deallocate_v_r32_3d
    module procedure kokkos_deallocate_v_r64_3d
  end interface kokkos_deallocate_view
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! kokkos_allocate_view 1D interfaces
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  interface 
    subroutine f_kokkos_allocate_v_l_1d(c_A, v_A, n_A, e0) &
      & bind (c, name='c_kokkos_allocate_v_l_1d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: c_A
      type(c_ptr), intent(out) :: v_A
      character(kind=c_char), intent(in) :: n_A(*)
      integer(c_size_t), intent(in) :: e0      
    end subroutine f_kokkos_allocate_v_l_1d
  end interface

  interface 
    subroutine f_kokkos_allocate_v_i32_1d(c_A, v_A, n_A, e0) &
      & bind (c, name='c_kokkos_allocate_v_i32_1d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: c_A
      type(c_ptr), intent(out) :: v_A
      character(kind=c_char), intent(in) :: n_A(*)
      integer(c_size_t), intent(in) :: e0
    end subroutine f_kokkos_allocate_v_i32_1d
  end interface
  
  interface 
    subroutine f_kokkos_allocate_v_i64_1d(c_A, v_A, n_A, e0) &
      & bind (c, name='c_kokkos_allocate_v_i64_1d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: c_A
      type(c_ptr), intent(out) :: v_A
      character(kind=c_char), intent(in) :: n_A(*)
      integer(c_size_t), intent(in) :: e0
    end subroutine f_kokkos_allocate_v_i64_1d
  end interface

  interface 
    subroutine f_kokkos_allocate_v_r32_1d(c_A, v_A, n_A, e0) &
      & bind (c, name='c_kokkos_allocate_v_r32_1d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: c_A
      type(c_ptr), intent(out) :: v_A
      character(kind=c_char), intent(in) :: n_A(*)
      integer(c_size_t), intent(in) :: e0
    end subroutine f_kokkos_allocate_v_r32_1d
  end interface
  
  interface 
    subroutine f_kokkos_allocate_v_r64_1d(c_A, v_A, n_A, e0) &
      & bind (c, name='c_kokkos_allocate_v_r64_1d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: c_A
      type(c_ptr), intent(out) :: v_A
      character(kind=c_char), intent(in) :: n_A(*)
      integer(c_size_t), intent(in) :: e0
    end subroutine f_kokkos_allocate_v_r64_1d
  end interface

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! kokkos_allocate_view 2D interfaces
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  interface 
    subroutine f_kokkos_allocate_v_l_2d(c_A, v_A, n_A, e0, e1) &
      & bind (c, name='c_kokkos_allocate_v_l_2d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: c_A
      type(c_ptr), intent(out) :: v_A
      character(kind=c_char), intent(in) :: n_A(*)
      integer(c_size_t), intent(in) :: e0
      integer(c_size_t), intent(in) :: e1
    end subroutine f_kokkos_allocate_v_l_2d
  end interface
  
  interface 
    subroutine f_kokkos_allocate_v_i32_2d(c_A, v_A, n_A, e0, e1) &
      & bind (c, name='c_kokkos_allocate_v_i32_2d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: c_A
      type(c_ptr), intent(out) :: v_A
      character(kind=c_char), intent(in) :: n_A(*)
      integer(c_size_t), intent(in) :: e0
      integer(c_size_t), intent(in) :: e1
    end subroutine f_kokkos_allocate_v_i32_2d
  end interface

  interface 
    subroutine f_kokkos_allocate_v_i64_2d(c_A, v_A, n_A, e0, e1) &
      & bind (c, name='c_kokkos_allocate_v_i64_2d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: c_A
      type(c_ptr), intent(out) :: v_A
      character(kind=c_char), intent(in) :: n_A(*)
      integer(c_size_t), intent(in) :: e0
      integer(c_size_t), intent(in) :: e1
    end subroutine f_kokkos_allocate_v_i64_2d
  end interface
  
  interface 
    subroutine f_kokkos_allocate_v_r32_2d(c_A, v_A, n_A, e0, e1) &
      & bind (c, name='c_kokkos_allocate_v_r32_2d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: c_A
      type(c_ptr), intent(out) :: v_A
      character(kind=c_char), intent(in) :: n_A(*)
      integer(c_size_t), intent(in) :: e0
      integer(c_size_t), intent(in) :: e1
    end subroutine f_kokkos_allocate_v_r32_2d
  end interface

  interface 
    subroutine f_kokkos_allocate_v_r64_2d(c_A, v_A, n_A, e0, e1) &
      & bind (c, name='c_kokkos_allocate_v_r64_2d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: c_A
      type(c_ptr), intent(out) :: v_A
      character(kind=c_char), intent(in) :: n_A(*)
      integer(c_size_t), intent(in) :: e0
      integer(c_size_t), intent(in) :: e1
    end subroutine f_kokkos_allocate_v_r64_2d
  end interface  
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! kokkos_allocate_view 3D interfaces
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  interface 
    subroutine f_kokkos_allocate_v_l_3d(c_A, v_A, n_A, e0, e1, e2) &
      & bind (c, name='c_kokkos_allocate_v_l_3d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: c_A
      type(c_ptr), intent(out) :: v_A
      character(kind=c_char), intent(in) :: n_A(*)
      integer(c_size_t), intent(in) :: e0
      integer(c_size_t), intent(in) :: e1
      integer(c_size_t), intent(in) :: e2
    end subroutine f_kokkos_allocate_v_l_3d
  end interface

  interface 
    subroutine f_kokkos_allocate_v_i32_3d(c_A, v_A, n_A, e0, e1, e2) &
      & bind (c, name='c_kokkos_allocate_v_i32_3d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: c_A
      type(c_ptr), intent(out) :: v_A
      character(kind=c_char), intent(in) :: n_A(*)
      integer(c_size_t), intent(in) :: e0
      integer(c_size_t), intent(in) :: e1
      integer(c_size_t), intent(in) :: e2
    end subroutine f_kokkos_allocate_v_i32_3d
  end interface
  
  interface 
    subroutine f_kokkos_allocate_v_i64_3d(c_A, v_A, n_A, e0, e1, e2) &
      & bind (c, name='c_kokkos_allocate_v_i64_3d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: c_A
      type(c_ptr), intent(out) :: v_A
      character(kind=c_char), intent(in) :: n_A(*)
      integer(c_size_t), intent(in) :: e0
      integer(c_size_t), intent(in) :: e1
      integer(c_size_t), intent(in) :: e2
    end subroutine f_kokkos_allocate_v_i64_3d
  end interface

  interface 
    subroutine f_kokkos_allocate_v_r32_3d(c_A, v_A, n_A, e0, e1, e2) &
      & bind (c, name='c_kokkos_allocate_v_r32_3d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: c_A
      type(c_ptr), intent(out) :: v_A
      character(kind=c_char), intent(in) :: n_A(*)
      integer(c_size_t), intent(in) :: e0
      integer(c_size_t), intent(in) :: e1
      integer(c_size_t), intent(in) :: e2
    end subroutine f_kokkos_allocate_v_r32_3d
  end interface
  
  interface 
    subroutine f_kokkos_allocate_v_r64_3d(c_A, v_A, n_A, e0, e1, e2) &
      & bind (c, name='c_kokkos_allocate_v_r64_3d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: c_A
      type(c_ptr), intent(out) :: v_A
      character(kind=c_char), intent(in) :: n_A(*)
      integer(c_size_t), intent(in) :: e0
      integer(c_size_t), intent(in) :: e1
      integer(c_size_t), intent(in) :: e2
    end subroutine f_kokkos_allocate_v_r64_3d
  end interface
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! kokkos_deallocate_view 1D interfaces
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  interface 
    subroutine f_kokkos_deallocate_v_l_1d(v_A) &
      & bind (c, name='c_kokkos_deallocate_v_l_1d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: v_A
    end subroutine f_kokkos_deallocate_v_l_1d
  end interface

  interface 
    subroutine f_kokkos_deallocate_v_i32_1d(v_A) &
      & bind (c, name='c_kokkos_deallocate_v_i32_1d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: v_A
    end subroutine f_kokkos_deallocate_v_i32_1d
  end interface

  interface 
    subroutine f_kokkos_deallocate_v_i64_1d(v_A) &
      & bind (c, name='c_kokkos_deallocate_v_i64_1d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: v_A
    end subroutine f_kokkos_deallocate_v_i64_1d
  end interface

  interface 
    subroutine f_kokkos_deallocate_v_r32_1d(v_A) &
      & bind (c, name='c_kokkos_deallocate_v_r32_1d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: v_A
    end subroutine f_kokkos_deallocate_v_r32_1d
  end interface

  interface 
    subroutine f_kokkos_deallocate_v_r64_1d(v_A) &
      & bind (c, name='c_kokkos_deallocate_v_r64_1d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: v_A
    end subroutine f_kokkos_deallocate_v_r64_1d
  end interface
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! kokkos_deallocate_view 2D interfaces
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  interface 
    subroutine f_kokkos_deallocate_v_l_2d(v_A) &
      & bind (c, name='c_kokkos_deallocate_v_l_2d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: v_A
    end subroutine f_kokkos_deallocate_v_l_2d
  end interface

  interface 
    subroutine f_kokkos_deallocate_v_i32_2d(v_A) &
      & bind (c, name='c_kokkos_deallocate_v_i32_2d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: v_A
    end subroutine f_kokkos_deallocate_v_i32_2d
  end interface

  interface 
  subroutine f_kokkos_deallocate_v_i64_2d(v_A) &
    & bind (c, name='c_kokkos_deallocate_v_i64_2d')
    use, intrinsic :: iso_c_binding
    implicit none
    type(c_ptr), intent(out) :: v_A
  end subroutine f_kokkos_deallocate_v_i64_2d
  end interface

  interface 
    subroutine f_kokkos_deallocate_v_r32_2d(v_A) &
      & bind (c, name='c_kokkos_deallocate_v_r32_2d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: v_A
    end subroutine f_kokkos_deallocate_v_r32_2d
  end interface

  interface 
    subroutine f_kokkos_deallocate_v_r64_2d(v_A) &
      & bind (c, name='c_kokkos_deallocate_v_r64_2d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: v_A
    end subroutine f_kokkos_deallocate_v_r64_2d
  end interface
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! kokkos_deallocate_view 1D interfaces
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  interface 
    subroutine f_kokkos_deallocate_v_l_3d(v_A) &
      & bind (c, name='c_kokkos_deallocate_v_l_3d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: v_A
    end subroutine f_kokkos_deallocate_v_l_3d
  end interface

  interface 
    subroutine f_kokkos_deallocate_v_i32_3d(v_A) &
      & bind (c, name='c_kokkos_deallocate_v_i32_3d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: v_A
    end subroutine f_kokkos_deallocate_v_i32_3d
  end interface

  interface 
    subroutine f_kokkos_deallocate_v_i64_3d(v_A) &
      & bind (c, name='c_kokkos_deallocate_v_i64_3d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: v_A
    end subroutine f_kokkos_deallocate_v_i64_3d
  end interface

  interface 
    subroutine f_kokkos_deallocate_v_r32_3d(v_A) &
      & bind (c, name='c_kokkos_deallocate_v_r32_3d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: v_A
    end subroutine f_kokkos_deallocate_v_r32_3d
  end interface

  interface 
    subroutine f_kokkos_deallocate_v_r64_3d(v_A) &
      & bind (c, name='c_kokkos_deallocate_v_r64_3d')
      use, intrinsic :: iso_c_binding
      implicit none
      type(c_ptr), intent(out) :: v_A
    end subroutine f_kokkos_deallocate_v_r64_3d
  end interface
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  contains
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! kokkos allocate view 1D implementations
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    subroutine kokkos_allocate_v_l_1d(A, v_A, n_A, e0)
      use, intrinsic :: iso_c_binding
      use flcl_util_strings_mod, only: char_add_null
      implicit none
      logical(c_bool), pointer, dimension(:), intent(inout) :: A
      type(c_ptr), intent(out) :: v_A
      character(len=*), intent(in) :: n_A
      integer(c_size_t), intent(in) :: e0
      type(c_ptr) :: c_A
      
      character(len=:, kind=c_char), allocatable, target :: f_label
      
      call char_add_null( n_A, f_label )
      call f_kokkos_allocate_v_l_1d(c_A, v_A, f_label, e0)
      call c_f_pointer(c_A, A, shape=[e0])
    end subroutine kokkos_allocate_v_l_1d
  
    subroutine kokkos_allocate_v_i32_1d(A, v_A, n_A, e0)
      use, intrinsic :: iso_c_binding
      use flcl_util_strings_mod, only: char_add_null
      implicit none
      integer (INT32), pointer, dimension(:), intent(inout) :: A
      type(c_ptr), intent(out) :: v_A
      character(len=*), intent(in) :: n_A
      integer(c_size_t), intent(in) :: e0
      type(c_ptr) :: c_A
      
      character(len=:, kind=c_char), allocatable, target :: f_label
      
      call char_add_null( n_A, f_label )
      call f_kokkos_allocate_v_i32_1d(c_A, v_A, f_label, e0)
      call c_f_pointer(c_A, A, shape=[e0])
    end subroutine kokkos_allocate_v_i32_1d
  
    subroutine kokkos_allocate_v_i64_1d(A, v_A, n_A, e0)
      use, intrinsic :: iso_c_binding
      use flcl_util_strings_mod, only: char_add_null
      implicit none
      integer(INT64), pointer, dimension(:), intent(inout) :: A
      type(c_ptr), intent(out) :: v_A
      character(len=*), intent(in) :: n_A
      integer(c_size_t), intent(in) :: e0
      type(c_ptr) :: c_A
      
      character(len=:, kind=c_char), allocatable, target :: f_label
      
      call char_add_null( n_A, f_label )
      call f_kokkos_allocate_v_i64_1d(c_A, v_A, f_label, e0)
      call c_f_pointer(c_A, A, shape=[e0])
    end subroutine kokkos_allocate_v_i64_1d
  
    subroutine kokkos_allocate_v_r32_1d(A, v_A, n_A, e0)
      use, intrinsic :: iso_c_binding
      use flcl_util_strings_mod, only: char_add_null
      implicit none
      real(REAL32), pointer, dimension(:), intent(inout) :: A
      type(c_ptr), intent(out) :: v_A
      character(len=*), intent(in) :: n_A
      integer(c_size_t), intent(in) :: e0
      type(c_ptr) :: c_A

      character(len=:, kind=c_char), allocatable, target :: f_label
      
      call char_add_null( n_A, f_label )
      call f_kokkos_allocate_v_r32_1d(c_A, v_A, f_label, e0)
      call c_f_pointer(c_A, A, shape=[e0])
    end subroutine kokkos_allocate_v_r32_1d
  
    subroutine kokkos_allocate_v_r64_1d(A, v_A, n_A, e0)
      use, intrinsic :: iso_c_binding
      use flcl_util_strings_mod, only: char_add_null
      implicit none
      real(REAL64), pointer, dimension(:), intent(inout) :: A
      type(c_ptr), intent(out) :: v_A
      character(len=*), intent(in) :: n_A
      integer(c_size_t), intent(in) :: e0
      type(c_ptr) :: c_A

      character(len=:, kind=c_char), allocatable, target :: f_label
      
      call char_add_null( n_A, f_label )
      call f_kokkos_allocate_v_r64_1d(c_A, v_A, f_label, e0)
      call c_f_pointer(c_A, A, shape=[e0])
    end subroutine kokkos_allocate_v_r64_1d

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! kokkos allocate view 2D implementations
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    subroutine kokkos_allocate_v_l_2d(A, v_A, n_A, e0, e1)
      use, intrinsic :: iso_c_binding
      use flcl_util_strings_mod, only: char_add_null
      implicit none
      logical(c_bool), pointer, dimension(:,:), intent(inout) :: A
      type(c_ptr), intent(out) :: v_A
      character(len=*), intent(in) :: n_A
      integer(c_size_t), intent(in) :: e0
      integer(c_size_t), intent(in) :: e1
      type(c_ptr) :: c_A
  
      character(len=:, kind=c_char), allocatable, target :: f_label
      
      call char_add_null( n_A, f_label )
      call f_kokkos_allocate_v_l_2d(c_A, v_A, f_label, e0, e1)
      call c_f_pointer(c_A, A, shape=[e0,e1])
    end subroutine kokkos_allocate_v_l_2d
  
    subroutine kokkos_allocate_v_i32_2d(A, v_A, n_A, e0, e1)
      use, intrinsic :: iso_c_binding
      use flcl_util_strings_mod, only: char_add_null
      implicit none
      integer(INT32), pointer, dimension(:,:), intent(inout) :: A
      type(c_ptr), intent(out) :: v_A
      character(len=*), intent(in) :: n_A
      integer(c_size_t), intent(in) :: e0
      integer(c_size_t), intent(in) :: e1
      type(c_ptr) :: c_A
  
      character(len=:, kind=c_char), allocatable, target :: f_label
      
      call char_add_null( n_A, f_label )
      call f_kokkos_allocate_v_i32_2d(c_A, v_A, f_label, e0, e1)
      call c_f_pointer(c_A, A, shape=[e0,e1])
    end subroutine kokkos_allocate_v_i32_2d
  
    subroutine kokkos_allocate_v_i64_2d(A, v_A, n_A, e0, e1)
      use, intrinsic :: iso_c_binding
      use flcl_util_strings_mod, only: char_add_null
      implicit none
      integer (INT64), pointer, dimension(:,:), intent(inout) :: A
      type(c_ptr), intent(out) :: v_A
      character(len=*), intent(in) :: n_A
      integer(c_size_t), intent(in) :: e0
      integer(c_size_t), intent(in) :: e1
      type(c_ptr) :: c_A
  
      character(len=:, kind=c_char), allocatable, target :: f_label
      
      call char_add_null( n_A, f_label )
      call f_kokkos_allocate_v_i64_2d(c_A, v_A, f_label, e0, e1)
      call c_f_pointer(c_A, A, shape=[e0,e1])
    end subroutine kokkos_allocate_v_i64_2d
  
    subroutine kokkos_allocate_v_r32_2d(A, v_A, n_A, e0, e1)
      use, intrinsic :: iso_c_binding
      use flcl_util_strings_mod, only: char_add_null
      implicit none
      real(REAL32), pointer, dimension(:,:), intent(inout) :: A
      type(c_ptr), intent(out) :: v_A
      character(len=*), intent(in) :: n_A
      integer(c_size_t), intent(in) :: e0
      integer(c_size_t), intent(in) :: e1
      type(c_ptr) :: c_A
  
      character(len=:, kind=c_char), allocatable, target :: f_label
      
      call char_add_null( n_A, f_label )
      call f_kokkos_allocate_v_r32_2d(c_A, v_A, f_label, e0, e1)
      call c_f_pointer(c_A, A, shape=[e0,e1])
    end subroutine kokkos_allocate_v_r32_2d
  
    subroutine kokkos_allocate_v_r64_2d(A, v_A, n_A, e0, e1)
      use, intrinsic :: iso_c_binding
      use flcl_util_strings_mod, only: char_add_null
      implicit none
      real(REAL64), pointer, dimension(:,:), intent(inout) :: A
      type(c_ptr), intent(out) :: v_A
      character(len=*), intent(in) :: n_A
      integer(c_size_t), intent(in) :: e0
      integer(c_size_t), intent(in) :: e1
      type(c_ptr) :: c_A
  
      character(len=:, kind=c_char), allocatable, target :: f_label
      
      call char_add_null( n_A, f_label )
      call f_kokkos_allocate_v_r64_2d(c_A, v_A, f_label, e0, e1)
      call c_f_pointer(c_A, A, shape=[e0,e1])
    end subroutine kokkos_allocate_v_r64_2d
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! kokkos allocate view 3D implementations
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    subroutine kokkos_allocate_v_l_3d(A, v_A, n_A, e0, e1, e2)
      use, intrinsic :: iso_c_binding
      use flcl_util_strings_mod, only: char_add_null
      implicit none
      logical(c_bool), pointer, dimension(:,:,:), intent(inout) :: A
      type(c_ptr), intent(out) :: v_A
      character(len=*), intent(in) :: n_A
      integer(c_size_t), intent(in) :: e0
      integer(c_size_t), intent(in) :: e1
      integer(c_size_t), intent(in) :: e2
      type(c_ptr) :: c_A
  
      character(len=:, kind=c_char), allocatable, target :: f_label
      
      call char_add_null( n_A, f_label )
      call f_kokkos_allocate_v_l_3d(c_A, v_A, f_label, e0, e1, e2)
      call c_f_pointer(c_A, A, shape=[e0,e1,e2])
    end subroutine kokkos_allocate_v_l_3d
  
    subroutine kokkos_allocate_v_i32_3d(A, v_A, n_A, e0, e1, e2)
      use, intrinsic :: iso_c_binding
      use flcl_util_strings_mod, only: char_add_null
      implicit none
      integer(INT32), pointer, dimension(:,:,:), intent(inout) :: A
      type(c_ptr), intent(out) :: v_A
      character(len=*), intent(in) :: n_A
      integer(c_size_t), intent(in) :: e0
      integer(c_size_t), intent(in) :: e1
      integer(c_size_t), intent(in) :: e2
      type(c_ptr) :: c_A
  
      character(len=:, kind=c_char), allocatable, target :: f_label
      
      call char_add_null( n_A, f_label )
      call f_kokkos_allocate_v_i32_3d(c_A, v_A, f_label, e0, e1, e2)
      call c_f_pointer(c_A, A, shape=[e0,e1,e2])
    end subroutine kokkos_allocate_v_i32_3d
  
    subroutine kokkos_allocate_v_i64_3d(A, v_A, n_A, e0, e1, e2)
      use, intrinsic :: iso_c_binding
      use flcl_util_strings_mod, only: char_add_null
      implicit none
      integer(INT64), pointer, dimension(:,:,:), intent(inout) :: A
      type(c_ptr), intent(out) :: v_A
      character(len=*), intent(in) :: n_A
      integer(c_size_t), intent(in) :: e0
      integer(c_size_t), intent(in) :: e1
      integer(c_size_t), intent(in) :: e2
      type(c_ptr) :: c_A
  
      character(len=:, kind=c_char), allocatable, target :: f_label
      
      call char_add_null( n_A, f_label )
      call f_kokkos_allocate_v_i64_3d(c_A, v_A, f_label, e0, e1, e2)
      call c_f_pointer(c_A, A, shape=[e0,e1,e2])
    end subroutine kokkos_allocate_v_i64_3d
  
    subroutine kokkos_allocate_v_r32_3d(A, v_A, n_A, e0, e1, e2)
      use, intrinsic :: iso_c_binding
      use flcl_util_strings_mod, only: char_add_null
      implicit none
      real(REAL32), pointer, dimension(:,:,:), intent(inout) :: A
      type(c_ptr), intent(out) :: v_A
      character(len=*), intent(in) :: n_A
      integer(c_size_t), intent(in) :: e0
      integer(c_size_t), intent(in) :: e1
      integer(c_size_t), intent(in) :: e2
      type(c_ptr) :: c_A
  
      character(len=:, kind=c_char), allocatable, target :: f_label
  
      call char_add_null( n_A, f_label )
      call f_kokkos_allocate_v_r32_3d(c_A, v_A, f_label, e0, e1, e2)
      call c_f_pointer(c_A, A, shape=[e0,e1,e2])
    end subroutine kokkos_allocate_v_r32_3d
  
    subroutine kokkos_allocate_v_r64_3d(A, v_A, n_A, e0, e1, e2)
      use, intrinsic :: iso_c_binding
      use flcl_util_strings_mod, only: char_add_null
      implicit none
      real(REAL64), pointer, dimension(:,:,:), intent(inout) :: A
      type(c_ptr), intent(out) :: v_A
      character(len=*), intent(in) :: n_A
      integer(c_size_t), intent(in) :: e0
      integer(c_size_t), intent(in) :: e1
      integer(c_size_t), intent(in) :: e2
      type(c_ptr) :: c_A

      character(len=:, kind=c_char), allocatable, target :: f_label

      call char_add_null( n_A, f_label )
      call f_kokkos_allocate_v_r64_3d(c_A, v_A, f_label, e0, e1, e2)
      call c_f_pointer(c_A, A, shape=[e0,e1,e2])
    end subroutine kokkos_allocate_v_r64_3d
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! kokkos deallocate view 1D implementations
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    subroutine kokkos_deallocate_v_l_1d(A, v_A )
      use, intrinsic :: iso_c_binding
      implicit none
      logical(c_bool), pointer, dimension(:), intent(inout) :: A
      type(c_ptr), intent(inout) :: v_A
  
      A => NULL()
      call f_kokkos_deallocate_v_l_1d(v_A)
      v_A = c_null_ptr
  
    end subroutine kokkos_deallocate_v_l_1d
  
    subroutine kokkos_deallocate_v_i32_1d(A, v_A )
      use, intrinsic :: iso_c_binding
      implicit none
      integer(INT32), pointer, dimension(:), intent(inout) :: A
      type(c_ptr), intent(inout) :: v_A
  
      A => NULL()
      call f_kokkos_deallocate_v_i32_1d(v_A)
      v_A = c_null_ptr
  
    end subroutine kokkos_deallocate_v_i32_1d
  
    subroutine kokkos_deallocate_v_i64_1d(A, v_A )
      use, intrinsic :: iso_c_binding
      implicit none
      integer(INT64), pointer, dimension(:), intent(inout) :: A
      type(c_ptr), intent(inout) :: v_A
  
      A => NULL()
      call f_kokkos_deallocate_v_i64_1d(v_A)      
      v_A = c_null_ptr
  
    end subroutine kokkos_deallocate_v_i64_1d
  
    subroutine kokkos_deallocate_v_r32_1d(A, v_A )
      use, intrinsic :: iso_c_binding
      implicit none
      real(REAL32), pointer, dimension(:), intent(inout) :: A
      type(c_ptr), intent(inout) :: v_A
  
      A => NULL()
      call f_kokkos_deallocate_v_r32_1d(v_A)      
      v_A = c_null_ptr
  
    end subroutine kokkos_deallocate_v_r32_1d
  
    subroutine kokkos_deallocate_v_r64_1d(A, v_A )
      use, intrinsic :: iso_c_binding
      implicit none
      real(REAL64), pointer, dimension(:), intent(inout) :: A
      type(c_ptr), intent(inout) :: v_A
  
      A => NULL()
      call f_kokkos_deallocate_v_r64_1d(v_A)      
      v_A = c_null_ptr
  
    end subroutine kokkos_deallocate_v_r64_1d
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! kokkos deallocate view 2D implementations
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    subroutine kokkos_deallocate_v_l_2d(A, v_A )
      use, intrinsic :: iso_c_binding
      implicit none
      logical(c_bool), pointer, dimension(:,:), intent(inout) :: A
      type(c_ptr), intent(inout) :: v_A
  
      A => NULL()
      call f_kokkos_deallocate_v_l_2d(v_A)
      v_A = c_null_ptr
  
    end subroutine kokkos_deallocate_v_l_2d
  
    subroutine kokkos_deallocate_v_i32_2d(A, v_A )
      use, intrinsic :: iso_c_binding
      implicit none
      integer(INT32), pointer, dimension(:,:), intent(inout) :: A
      type(c_ptr), intent(inout) :: v_A
  
      A => NULL()
      call f_kokkos_deallocate_v_i32_2d(v_A)
      v_A = c_null_ptr
  
    end subroutine kokkos_deallocate_v_i32_2d
  
    subroutine kokkos_deallocate_v_i64_2d(A, v_A )
      use, intrinsic :: iso_c_binding
      implicit none
      integer(INT64), pointer, dimension(:,:), intent(inout) :: A
      type(c_ptr), intent(inout) :: v_A
  
      A => NULL()
      call f_kokkos_deallocate_v_i64_2d(v_A)
      v_A = c_null_ptr
  
    end subroutine kokkos_deallocate_v_i64_2d
  
    subroutine kokkos_deallocate_v_r32_2d(A, v_A )
      use, intrinsic :: iso_c_binding
      implicit none
      real(REAL32), pointer, dimension(:,:), intent(inout) :: A
      type(c_ptr), intent(inout) :: v_A
  
      A => NULL()
      call f_kokkos_deallocate_v_r32_2d(v_A)
      v_A = c_null_ptr
  
    end subroutine kokkos_deallocate_v_r32_2d
  
    subroutine kokkos_deallocate_v_r64_2d(A, v_A )
      use, intrinsic :: iso_c_binding
      implicit none
      real(REAL64), pointer, dimension(:,:), intent(inout) :: A
      type(c_ptr), intent(inout) :: v_A
  
      A => NULL()
      call f_kokkos_deallocate_v_r64_2d(v_A)
      v_A = c_null_ptr
  
    end subroutine kokkos_deallocate_v_r64_2d
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! kokkos deallocate view 3D implementations
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    subroutine kokkos_deallocate_v_l_3d(A, v_A )
      use, intrinsic :: iso_c_binding
      implicit none
      logical(c_bool), pointer, dimension(:,:,:), intent(inout) :: A
      type(c_ptr), intent(inout) :: v_A
  
      A => NULL()
      call f_kokkos_deallocate_v_l_3d(v_A)
      v_A = c_null_ptr
  
    end subroutine kokkos_deallocate_v_l_3d
  
    subroutine kokkos_deallocate_v_i32_3d(A, v_A )
      use, intrinsic :: iso_c_binding
      implicit none
      integer(INT32), pointer, dimension(:,:,:), intent(inout) :: A
      type(c_ptr), intent(inout) :: v_A
  
      A => NULL()
      call f_kokkos_deallocate_v_i32_3d(v_A)
      v_A = c_null_ptr
  
    end subroutine kokkos_deallocate_v_i32_3d
  
    subroutine kokkos_deallocate_v_i64_3d(A, v_A )
      use, intrinsic :: iso_c_binding
      implicit none
      integer(INT64), pointer, dimension(:,:,:), intent(inout) :: A
      type(c_ptr), intent(inout) :: v_A
  
      A => NULL()
      call f_kokkos_deallocate_v_i64_3d(v_A)
      v_A = c_null_ptr
  
    end subroutine kokkos_deallocate_v_i64_3d
  
    subroutine kokkos_deallocate_v_r32_3d(A, v_A )
      use, intrinsic :: iso_c_binding
      implicit none
      real(REAL32), pointer, dimension(:,:,:), intent(inout) :: A
      type(c_ptr), intent(inout) :: v_A
  
      A => NULL()
      call f_kokkos_deallocate_v_r32_3d(v_A)
      v_A = c_null_ptr
  
    end subroutine kokkos_deallocate_v_r32_3d
  
    subroutine kokkos_deallocate_v_r64_3d(A, v_A )
      use, intrinsic :: iso_c_binding
      implicit none
      real(REAL64), pointer, dimension(:,:,:), intent(inout) :: A
      type(c_ptr), intent(inout) :: v_A
  
      A => NULL()
      call f_kokkos_deallocate_v_r64_3d(v_A)
      v_A = c_null_ptr
  
    end subroutine kokkos_deallocate_v_r64_3d
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! fin
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
end module flcl_view_mod