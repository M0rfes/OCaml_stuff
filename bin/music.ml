type note = Do | Re | Mi | Fa | Sol | La | Si
type pitch = {note: note; octave: int}
type duration = Half | Qurter
type symbol = Note of pitch * duration| Rest of duration
type spurce = {symbols: symbol list; metronome: int}

let frequency {note = n; octave = o} =
  let f0 =
    match n with
      | Do -> 33
      | Re -> 37
      | Mi -> 41
      | Fa -> 44
      | Sol -> 49
      | La -> 55
      | Si -> 62
  in
  f0 * truncate(2. ** float o)

let milliscondes d t =
  let quarter= 6000 / t in
  match d with
    | Half -> quarter*2
    | Qurter -> quarter

let sound t s =
  match s with
    | Note (p,d) ->
      let f = frequency p in
      Graphics.sound f (milliscondes d t)
    | Rest r -> Graphics.sound 0 (milliscondes r t)

let play_sore {symbols= l; metronome = t} = List.iter(sound t) l; ignore (read_line ())

(* Simple scale - Do Re Mi Fa Sol La Si Do *)
let scale = {
  symbols = [
    Note ({note = Do; octave = 3}, Qurter);
    Note ({note = Re; octave = 3}, Qurter);
    Note ({note = Mi; octave = 3}, Qurter);
    Note ({note = Fa; octave = 3}, Qurter);
    Note ({note = Sol; octave = 3}, Qurter);
    Note ({note = La; octave = 3}, Qurter);
    Note ({note = Si; octave = 3}, Qurter);
    Note ({note = Do; octave = 4}, Half);
  ];
  metronome = 120;
}

(* Twinkle Twinkle Little Star *)
let twinkle = {
  symbols = [
    Note ({note = Do; octave = 3}, Qurter);
    Note ({note = Do; octave = 3}, Qurter);
    Note ({note = Sol; octave = 3}, Qurter);
    Note ({note = Sol; octave = 3}, Qurter);
    Note ({note = La; octave = 3}, Qurter);
    Note ({note = La; octave = 3}, Qurter);
    Note ({note = Sol; octave = 3}, Half);
    Rest Qurter;
    Note ({note = Fa; octave = 3}, Qurter);
    Note ({note = Fa; octave = 3}, Qurter);
    Note ({note = Mi; octave = 3}, Qurter);
    Note ({note = Mi; octave = 3}, Qurter);
    Note ({note = Re; octave = 3}, Qurter);
    Note ({note = Re; octave = 3}, Qurter);
    Note ({note = Do; octave = 3}, Half);
  ];
  metronome = 100;
}

(* Mary Had a Little Lamb *)
let mary = {
  symbols = [
    Note ({note = Mi; octave = 3}, Qurter);
    Note ({note = Re; octave = 3}, Qurter);
    Note ({note = Do; octave = 3}, Qurter);
    Note ({note = Re; octave = 3}, Qurter);
    Note ({note = Mi; octave = 3}, Qurter);
    Note ({note = Mi; octave = 3}, Qurter);
    Note ({note = Mi; octave = 3}, Half);
    Note ({note = Re; octave = 3}, Qurter);
    Note ({note = Re; octave = 3}, Qurter);
    Note ({note = Re; octave = 3}, Half);
    Note ({note = Mi; octave = 3}, Qurter);
    Note ({note = Sol; octave = 3}, Qurter);
    Note ({note = Sol; octave = 3}, Half);
  ];
  metronome = 110;
}

(* Ode to Joy (simplified) *)
let ode_to_joy = {
  symbols = [
    Note ({note = Mi; octave = 3}, Qurter);
    Note ({note = Mi; octave = 3}, Qurter);
    Note ({note = Fa; octave = 3}, Qurter);
    Note ({note = Sol; octave = 3}, Qurter);
    Note ({note = Sol; octave = 3}, Qurter);
    Note ({note = Fa; octave = 3}, Qurter);
    Note ({note = Mi; octave = 3}, Qurter);
    Note ({note = Re; octave = 3}, Qurter);
    Note ({note = Do; octave = 3}, Qurter);
    Note ({note = Do; octave = 3}, Qurter);
    Note ({note = Re; octave = 3}, Qurter);
    Note ({note = Mi; octave = 3}, Qurter);
    Note ({note = Mi; octave = 3}, Qurter);
    Note ({note = Re; octave = 3}, Qurter);
    Note ({note = Re; octave = 3}, Half);
  ];
  metronome = 120;
}

(* Play all the tunes *)
let () =
  Graphics.open_graph "";
  print_endline "Playing scale...";
  play_sore scale;
  Unix.sleep 1;
  print_endline "Playing Twinkle Twinkle Little Star...";
  play_sore twinkle;
  Unix.sleep 1;
  print_endline "Playing Mary Had a Little Lamb...";
  play_sore mary;
  Unix.sleep 1;
  print_endline "Playing Ode to Joy...";
  play_sore ode_to_joy;
  Graphics.close_graph ()
