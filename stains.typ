#let stain(index: 0, scale:100%, rotation: 0deg, pos_x:0em, pos_y:0em) = {

  let stain_list = (
    "coffee/stain_A.svg", 
    "coffee/stain_B.svg", 
    "coffee/stain_C.svg", 
    "coffee/stain_D.svg",
    )

  layout(size => {}) // this changes the behavior of the lower code
  place(
    center+horizon,
    dx: pos_x,
    dy: pos_y,
    rotate(rotation)[#image(stain_list.at(index),width: 50%*scale)]
  )
}

