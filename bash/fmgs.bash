
mtags_dir="$HOME/tmp"

if [ ! -d $mtags_dir ]; then
  mkdir $mtags_dir
fi

export MTAGS="$mtags_dir/mtags-$$"

FMGS_M_PATH="$HOME/bash/m"
FMGS_F_PATH="$HOME/bash/f"
FMGS_G_PATH="$HOME/bash/g"
FMGS_S_PATH="$HOME/bash/s"

function m {
  case "$#" in
    0) $FMGS_M_PATH "$@" ;;
    1) $FMGS_M_PATH "$@" ;;
    *) cmd=$($FMGS_S_PATH "$@")
       history -s "$cmd"
       $cmd
  esac
}

function f {
  $FMGS_F_PATH "$@"
}

function g {
  $FMGS_G_PATH "$@"
}

