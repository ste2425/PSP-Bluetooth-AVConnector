# https://github.com/TousstNicolas/JLC2KiCad_lib

$path = "$PSScriptRoot/../libraries"

echo $path

while ($true)
{
    $partNumbers = Read-Host -Prompt 'Input part numbers'

    JLC2KiCadLib $partNumbers -symbol_lib_dir . -dir $path -symbol_lib jlcpcb -footprint_lib jlcpcb.pretty

}