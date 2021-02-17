module helper
	implicit none
	
	contains 
	!the functions
		function fit(func, temp, guess, M, volume, version) result(pressure)
			implicit none
			character(10), intent(in) :: func
			real, intent(in) :: temp, volume
			integer, intent(in) :: M, version
			real, intent(in) :: guess(M)
			real :: pressure
			real :: gasR = 8.31447
			integer :: i
			
			pressure = 0
			
			select case (func)
				case ('vdw')
					select case (version)
						case (0) !just the function
							pressure = ((gasR * temp)/(volume - guess(2))) - (guess(1)/(volume ** 2))
						case (1) !partial wrt param 1
							pressure = -1 / (volume ** 2)
						case (2) !partial wrt param 2
							pressure = (gasR * temp) / ((volume - guess(2))**2)
					end select
				case ('rk')
					select case (version)
						case (0) !just the function
							pressure = ((gasR * temp)/(volume - guess(2))) - (guess(1)/((temp**0.5) * volume * (volume + guess(2))))
						case (1) !partial wrt param 1
							pressure = -1 / ((temp ** 0.5) * volume * (volume + guess(2)))
						case (2) !partial wrt param 2
							pressure = ((gasR * temp)/((volume - guess(2))**2)) + (guess(1)/((temp**2) * volume * ((volume + guess(2))**2)))
					end select
				case ('dieterici')
					select case (version)
						case (0) !just the function
							pressure = (gasR * temp * exp((-1 * guess(1))/(gasR * temp * volume)))/(volume - guess(2))
						case (1) !partial wrt param 1
							pressure = (-1 * exp((-1 * guess(1))/(gasR * temp * volume))) / (volume * (volume - guess(2)))
						case (2) !partial wrt param 2
							pressure = (gasR * temp * exp((-1 * guess(1))/(gasR * temp * volume)))/((volume - guess(2))**2)
					end select
				case ('berthelot')
					select case (version)
						case (0) !just the function
							pressure = ((gasR * temp)/(volume - guess(2))) - (guess(1)/(temp * volume * volume))
						case (1) !partial wrt param 1
							pressure = -1 / (temp * volume * volume)
						case (2) !partial wrt param 2
							pressure = (gasR * temp) / ((volume - guess(2))**2)
					end select
				case ('virial')
					select case (version)
						case (0) !just the function
							pressure = (gasR * temp) / volume
							do i=1, M
								pressure = pressure + (gasR * temp * guess(i))/(volume**i)
							end do
						case (1:) !partial wrt param 1
							pressure = (gasR * temp) / (volume ** version)
					end select
			end select
		end function fit
	
	!the maths
		function findError(func, dataPoints, N, temp, guess, M) result(error)
			character(10), intent(in) :: func
			integer, intent(in) :: N, M
			real, intent(in) :: dataPoints(2,N), guess(M)
			real, intent(in) :: temp
			real :: error
			integer :: i
			error = 0
			
			do i=1, N
				error = error + (dataPoints(2,i) - fit(func, temp, guess, M, dataPoints(1,i), 0))**2
			end do
			
		end function findError
		
		function makeBeta(func, dataPoints, N, temp, guess, M) result(beta)
			character(10), intent(in) :: func
			integer, intent(in) :: N, M
			real, intent(in) :: dataPoints(2,N), guess(M)
			real, intent(in) :: temp
			real, dimension(M) :: beta
			integer :: i, j
			
			do i=1, M
				beta(i) = 0
				do j=0, N
					beta = beta + ((dataPoints((2,j) - fit(func, temp, guess, M, dataPoints(1,j), 0))) * fit(func, temp, guess, M, dataPoints(1,j), i))
				end do
			end do
			
			
			
		end function makeBeta
	
end module helper