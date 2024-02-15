#let coffee_list = (
  "stain_A.svg", 
  "stain_B.svg", 
  "stain_C.svg", 
  "stain_D.svg",
)

#let stain_list = (
  coffee: coffee_list,
)


#let stain(
  type: "coffee",
  index: 0, 
  x:0em, 
  y:0em,  
  scale:100%, 
  rotation: 0deg, 
  //opacity: 100%, TODO not yet supported in Typst
  ) = {

  let stain_path = type+"/"+stain_list.at(type).at(index)
  layout(size => {}) // this changes the behavior of the lower code
  place(
    center+horizon,
    dx: x,
    dy: y,
    rotate(rotation)[#image(stain_path, width: scale)]
  )
}

