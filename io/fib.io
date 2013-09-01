doFile("./test_helper.io")

Fib := Object clone do(
  recursive_solution := method(counter,first,second,
    if(first isNil, first = 1)
    if(second isNil, second = 1)

    if(counter == 2, return first) // defaulting the first two iterations


    recursive_solution(counter - 1,
      first + second,
      first
    )
  )

  loop_soluation := method(iterations,
  )

  next_generation := method(memo,first,second
    first + second
  )
)

assert_equal(Fib recursive_solution(4),3)
assert_equal(Fib loop_solution(4),3)
