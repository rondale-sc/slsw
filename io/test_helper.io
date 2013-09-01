Object assert_equal := method(expected,actual,
  if(expected == actual,
    write("."),
    writeln("Expected #{expected} to be #{actual}" interpolate)
  )
)
