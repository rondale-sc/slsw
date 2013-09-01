Tree := Object clone do(
  init := method(name, children,
    self children := list()
  )

  setUp := method(name,children,
    (name == nil) ifFalse(self name := name)
    (children == nil) ifFalse(self children := children)
    self
  )

  visit := method(blk, blk call(self))

  visit_all := method(blk,
    visit(blk)
    children foreach(child,
      child visit_all(blk)
    )
  )
)

visitor := block(node, node name println)
tree := Tree clone setUp("IoSample", list(
    Tree clone setUp("Reia"),
    Tree clone setUp("Entmoot")
  )
)

tree visit_all(visitor)
