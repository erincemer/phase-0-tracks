#RELEASE 0

arr = [33, 12, 5, 10]

def search(arr, int)

	ind = 0
	while ind < arr.length
		if arr.include?(int) == false
			p nil
			break


		elsif arr[ind] == int
			return ind
		else

		end
		ind +=1

	end
end

search(arr, 7)

#RELEASE 1

def fib(n)
	arr= [0,1]

  (n-2). times do
    new = arr.last + arr[arr.length - 2]
		arr.push(new)
	end

	p arr
end

fib(100)

# RELEASE 2

#assign array variable with unsorted integers
arr = [33, 2, 44, 10, 1]
#call the method and get the sorted array
arr.sort { |x,y| y <=> x }
