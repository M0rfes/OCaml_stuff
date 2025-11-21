open Graphics

let left = 0.
let right = 300.
let down = 0.
let up = 200.

let ball = 5
let paddel = 50
let thick = 8


let gray = rgb 220 220 220


let init () = 
  let s = Printf.sprintf " %dx%d" (truncate right) (truncate up) in
  open_graph s;
  auto_synchronize false

let clear () =
  set_color gray;
  fill_rect 0 0 (truncate right) (truncate up)

let get_paddel_pos () = 
  let x = fst (mouse_pos ()) in
  max 0 (min x (truncate right - paddel))

let game x y = 
  clear ();
  set_color black;
  fill_circle (truncate x) (truncate y) ball;
  let x = get_paddel_pos () in
  fill_rect x 0 paddel thick;
  synchronize ();
  x
