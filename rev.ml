let lines = ref []

let () =
  try
    while true do
      lines := read_line () :: !lines
    done
  with End_of_file -> ()

let rec print = function
    | [] -> ()
    | s :: r -> print_endline s; print r

let run () = List.iter print_endline !lines
