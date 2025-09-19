

# Zip up the libraries
Compress-Archive -Path ..\libraries\psp.kicad_sym, ..\libraries\psp.pretty -DestinationPath .\libraries.zip

# Zip up the samples
Compress-Archive -Path ..\libraries\psp.kicad_sym, ..\libraries\psp.pretty -DestinationPath .\samples.zip