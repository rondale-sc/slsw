Object assert_equal := method(expected,actual,
  if(expected == actual,
    writeln("."),
    writeln("Expected #{expected} to be #{actual}" interpolate)
  )
)
