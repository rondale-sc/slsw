/* Add a slot called myAverage to a list that computes the average of all the numbers in a list. What happens if there are no numbers in a list? */
doFile("test_helper.io")

List myAverage := method(
  self reduce( + ) / (self size)
)

testList := list(1,2,3,4,5)
assert_equal(testList myAverage, 3)
