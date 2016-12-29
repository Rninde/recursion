#through iteration

def fibs(n)
	i = 1
	x = 0
	ary = []
	n.times do
		i += x
		x = i - x
		ary << i
	end
	puts ary
end

def fib_rec(n, ary=[0,1])
	return ary if n == 0 || n == 1
	return ary if ary.length == n
	fib_rec(n, (ary << ary[-1] + ary[-2]))
end

