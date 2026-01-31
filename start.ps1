param(
  [switch]$doom,
  [switch]$hex,
  [switch]$her,
  [switch]$tmp
)

. $PSScriptRoot\env.ps1

if ( $doom ) {
  if ( $tmp ) {
    uzdoom -file .\ ..\Maps -iwad $env:DOOM2 -stdout +map mp_map01
  } else {
    uzdoom -file .\ ..\Maps -iwad $env:DOOM2 -stdout
  }
} elseif ( $hex ) {
  uzdoom -file .\ ..\Maps -iwad $env:HEXEN -stdout
} elseif ( $her ) {
  uzdoom -file .\ ..\Maps -iwad $env:HERETIC -stdout
}


