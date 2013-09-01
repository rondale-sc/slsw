doFile("./test_helper.io")

Fib := Object clone do(
  recursive_solution := method(counter,first,second,
    if(first isNil, first = 1)
    if(second isNil, second = 1)
    if(counter == 2, return first)


    recursive_solution(counter - 1,
      first + second,
      first
    )
  )

  loop_solution := method(iterations,
    Range 2 to(iterations) asList reduce(
      memo,
      item,
      memo append(memo at(item-1) + memo at(item-2)),
      list(0,1)
    ) at(iterations)
  )
)

assert_equal(Fib recursive_solution(4),3)
assert_equal(Fib loop_solution(4),3)
