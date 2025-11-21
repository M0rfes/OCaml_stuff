
  open Angle
module Turtle(A: ANGLE) = struct
  let draw = ref true
  let pen_down () = draw := true
  let pen_up () = draw := false 

  let angle = ref (A.of_degrees 0.)
  let rotate_left d = angle := A.add !angle (A.of_degrees d)
  let rotate_right d = rotate_left (-. d)

  open Graphics
  let tx = ref 400.
  let ty = ref 300.

  let () = open_graph " 800X600"; set_line_width 2; moveto (truncate !tx)(truncate !ty)

  let advance d =
    tx := !tx +. d *. A.cos !angle;
    ty := !ty +. d *. A.sin !angle;
    if !draw then lineto (truncate !tx) (truncate !ty)
              else moveto (truncate !tx) (truncate !ty)


end
