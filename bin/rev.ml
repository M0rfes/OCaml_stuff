let lines = ref []

let () =
  try
    while true do
      lines := read_line () :: !lines
    done
  with End_of_file -> ()



let run () = List.iter print_endline !lines

let () = run ()
