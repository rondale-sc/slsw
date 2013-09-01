doFile("test_helper.io")

MyList := Object clone do(
  sum := method(two_dimensional_array,
    two_dimensional_array flatten reduce(+)
  )
)

lst := list(list(1,2,3),list(1,2,3),list(1,2,3))
assert_equal(MyList sum(lst), 18)
