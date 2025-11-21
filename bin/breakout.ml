
let bounce (x, y) (xv, yv) xp =
  let xv' = if x <= Ocaml_stuff.Draw.left || x >= Ocaml_stuff.Draw.right then  -. xv else xv in
  let xy' = if y <= float Ocaml_stuff.Draw.paddel && x >= xp &&
                x <= xp +. float Ocaml_stuff.Draw.paddel || y >= Ocaml_stuff.Draw.up then -. yv else yv in
  (xv',xy')

let new_position (x,y) (xv,yv) = x +. xv, y +. yv

let rec play (x,y) (xv,yv) =
  if y <= Ocaml_stuff.Draw.down then begin
    Printf.printf "Game over\n";
    exit 0
  end;
  let xp = Ocaml_stuff.Draw.game x y in
  let xv', yv' = bounce (x,y) (xv,yv) (float xp) in
  let x',y' = new_position (x,y) (xv',yv') in
  play (x',y') (xv',yv')


let run () = 
  Ocaml_stuff.Draw.init ();
  let speed = 0.1 in
  let xv = speed *. Random.float 1. in
  let yv = speed *. Random.float 1. in
  play (Ocaml_stuff.Draw.right /. 2., float Ocaml_stuff.Draw.thick) (xv,yv)


let () = run ()
