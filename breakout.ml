
let bounce (x, y) (xv, yv) xp =
  let xv' = if x <= Draw.left || x >= Draw.right then  -. xv else xv in
  let xy' = if y <= float Draw.paddel && x >= xp &&
                x <= xp +. float Draw.paddel || y >= Draw.up then -. yv else yv in
  (xv',xy')

let new_position (x,y) (xv,yv) = x +. xv, y +. yv

let rec play (x,y) (xv,yv) =
  if y <= Draw.down then begin
    Printf.printf "Game over\n";
    exit 0
  end;
  let xp = Draw.game x y in
  let xv', yv' = bounce (x,y) (xv,yv) (float xp) in
  let x',y' = new_position (x,y) (xv',yv') in
  play (x',y') (xv',yv')


let run () = 
  Draw.init ();
  let speed = 0.1 in
  let xv = speed *. Random.float 1. in
  let yv = speed *. Random.float 1. in
  play (Draw.right /. 2., float Draw.thick) (xv,yv)

