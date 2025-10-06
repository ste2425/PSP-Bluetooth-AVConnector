# PSP Bluetooth *AV Connector*

This forms part of my PSP Bluetooth project. Here you will find hardware files to build your own boards that can interface with the PSP 2000 and 3000 models AVPort.

There are also some sample boards i have designed for reference.

Check out the latest [Release](https://github.com/ste2425/AVBreakout/releases) for the libray files and sample files.

## The PSP Bluetooth Project

This is a part of the PSP Bluetooth project, to find information on the other components that make up this project please look here: https://github.com/psp-bluetooth

## Acknowledgements

The work ive done is just a thin layer ontop of work many other people have done, Iv'e also had lots of help from others.

* TokyoDrift - Originally created work that uses the SIO port to allow external controllers back around 2010. Since uploaded to Github
* OPDitto project - A project that uses the SIO port to allow for a real second analog stick. Its SIO implementation has been extremly helpful to me. Repo Here
* X41 - Shared with me an initial working SIO hello world app back when i could barely compile PSP code. This was invaluable in helping me get the hardware working right at the start of the project.
* PSP Homebrew Discord - Full of incredibly smart and helpful people too many to list individually. Without their help I'd never have managed to complete any of this.

---

* [Designing your own boards](#designing-your-own-boards) 
* [Samples](#samples)
  * [AV-Connector-Breakout](#av-connector-breakout)
  * [Dev-Board](#dev-board)
* [Damage to the PSP](#damage-to-the-psp)
* [Gotchas](#gotchas)
* [Connector pinout](#connector-pinout)

# Designing your own boards

If you wish to design your own boards to interface with the PSP AVConnector you can download the KiCad symbols and footprints to include in your project.

Download the latest release. Inside the `library` folder you will find a `psp.pretty` folder and a `psp.kicad_sym` file. These are the `footprints` and `symbols` respectively.

To install;

**Symbols**
* Open the Kicad project (not the schematic/pcb editor)
* Click `Preferences` -> `Manage Symbol Libraries`
* Choose if you want to install the library globally or project specific
* Click the `+` icon to add a new row.
* Give it the knickname `psp`
* Select the `psp.kicak_sym` file from wherever you saved it

**Footprints**
* Open the Kicad project (not the schematic/pcb editor)
* Click `Preferences` -> `Manage Footprint Libraries`
* Choose if you want to install the library globally or project specific
* Click the `+` icon to add a new row.
* Give it the knickname `psp`
* Select the `psp.pretty` folder from wherever you saved it

# Samples

There are a number of samples in the project. If you wish to load them in Kicad clone the repository and open the project.

If you just wish to have them produced, download the latest release and you will find them inside the `samples` folder. I have mine produced by `PCBWay` so my BOM files are built for them.

## AV-Connector-Breakout

This is a simple breakout of every pin in the AV port on the PSP. It has no other parts so will require no assembly. 

This is a small PCB intended for you to solder a cable to.

## Dev-Board

This is a all in one development board. It has the footprints to fit an ESP32 development module.

It also has the required logic level translators connected to pins <TODO ADD PINS>.

It has the TVOut connector footprint and all pins connected so you can use a original TVOut cable if you wish.

It is what i have been using to build my homebrew.


# Damage to the PSP

You should bevel, slightly curve, all the edges of the `TV out connector` that plugs into the PSP. So the edges are not all perfect 90deg angles. Otherwise it could damage the contacts. This will need to be manually done.

# Gotchas

* For the PSP to detect an AV cable connected it needs the heaphones cable connected. If your using the `Pass-Through` sample or degining your own PCB to use video output you will need to connect a headphones cable otherwise the PSP will not output video.
* Use of the serial port does *not* need a headphones cable connected unlike video output.
* The PSP's serial port does not operate at `5v` or `3.3v` like most MCU's you will try to interface with (Arduino, ESP32 etc). You will need to use a `Logic Level Converter`, some of the samples have one built in.
* The TV Connector would need to be manually soldered, they are difficult and require hot air. I source mine from `ZedLabz` https://www.zedlabz.com/products/headphone-socket-for-sony-psp-2000-3-5mm-jack-port-repair-part-internal-replacement-zedlabz

# Connector pinout

Openng a sample in Kicad and looking at either of the components will reveal the connector pinout. However you can reference https://www.psdevwiki.com/psp/Serial_Adapter also.
