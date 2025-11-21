


module Angle: Ocaml_stuff.Angle.ANGLE = struct
  type t = float 
  let add = (+.) 
  let pi_over_180 = atan Ocaml_stuff.Ttr.v /. 45. 
  let of_degrees d = d *. pi_over_180 
  let cos = Stdlib.cos 
  let sin = Stdlib.sin
end

module T = Ocaml_stuff.Trutle.Turtle(Angle)
let square d = 
  for _ = 1 to 4 do
    T.advance d; T.rotate_left 90. 
  done 

  let squares d a = 
    for _ = 1 to truncate (360. /. a) do 
      square d; T.rotate_left a 
    done

let () = squares 100. 20.; ignore (read_line ())
