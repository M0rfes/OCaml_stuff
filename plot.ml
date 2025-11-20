let n = read_int ()

let read_pairs () = 
  let x = read_int () in
  let y = read_int () in
  (x,y)

let data = Array.init n (fun _ -> read_pairs ())

let compare (x1, _) (x2, _) = x1 - x2

let () = Array.sort compare data

open Graphics

let run () = 
  open_graph " 200x200";
  set_line_width 3;
  let (x0,y0)= data.(0) in moveto x0 y0;
  for i = 0 to n-1 do
    let (x,y)  = data.(i) in
    lineto x y
  done;
  ignore (read_key ())
