Project uses Teal, a typed dialect of Lua (which generates plain lua files too).

tl -h
-----------------------------------------------------------------
Usage: tl [-h] [--global-env-def <dtlfilename>] [-I <directory>]
       [--wdisable <warning>] [--werror <warning>]
       [--feat-arity {off,on}]
       [--gen-compat [{off,optional,required}]]
       [--gen-target {5.1,5.3,5.4}] [--version] [-q] [-p] [<command>]
       ...

A minimalistic typed dialect of Lua.

Options:
   -h, --help            Show this help message and exit.
   --global-env-def <dtlfilename>
                         Predefined types from a custom global environment.
              -I <directory>,
   --include-dir <directory>
                         Prepend this directory to the module search path.
   --wdisable <warning>  Disable the given kind of warning.
   --werror <warning>    Promote the given kind of warning to an error. Use '--werror all' to promote all warnings to errors
   --feat-arity {off,on} Define minimum arities for functions based on optional argument annotations.
   --gen-compat [{off,optional,required}]
                         Generate compatibility code for targeting different Lua VM versions. (default: optional)
   --gen-target {5.1,5.3,5.4}
                         Minimum targeted Lua version for generated code.
   --version             Print version and exit
   -q, --quiet           Do not print information messages to stdout. Errors may still be printed to stderr.
   -p, --pretend         Do not write to any files, type check and output what files would be generated.

Commands:
   check                 Type-check one or more Teal files.
   gen                   Generate a Lua file for one or more Teal files.
   run                   Run a Teal script.
   warnings              List each kind of warning the compiler can produce.
   types                 Report all types found in one or more Teal files


tl gen -h
---------------------------------------------------------
Usage: tl gen [-h] [-c] [--keep-hashbang] [-o <filename>]
       <file> [<file>] ...

Generate a Lua file for one or more Teal files.

Arguments:
   file                  The Teal source file.

Options:
   -h, --help            Show this help message and exit.
   -c, --check           Type check and fail on type errors.
   --keep-hashbang       Preserve hashbang line (#!) at the top of file if present.
         -o <filename>,  Write to <filename> instead.
   --output <filename>




