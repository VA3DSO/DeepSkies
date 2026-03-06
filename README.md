# DeepSkies Atlas

I recently found the source code (Visual Basic 4) for my DeepSkies atlas for 
Windows. I decided to upload it here to GitHub for posterity. Here is the
verbiage regarding the atlas from my website:  

This star atlas was programmed a while back over many years and was a pet project of mine. The goal was not to re-invent the wheel (there are plenty of top-shelf star atlas applications out there already!), but more as a learning experience to teach myself a bit more about astrometry as well as the programming algorithms associated with astronomy. This application is more of a beta or prototype than anything, however it is more or less fully functional. The only glaring omission is a working Print command. There is one in the code, but it does not work properly. Everything else in the menus does function, but your mileage may vary.

DeepSkies is very basic electronic computational star (and deep sky!) atlas. It displays a view of the skies from a database of 10,000+ deep sky objects and 2.5+ million stars based on the following catalogs:
- New General Catalog
- Index Catalog
- Bright Star Catalog V5
- Hipparcos Catalog
- Tycho-2 Catalog

and adjusts the display of the objects (which are all in J2000 coordinates) for:
- proper motion
- precession  

It does not adjust for:
- parallax
- nutation  

It does not adjust for:  
- parallax
- nutation
- aberration
- refraction

The features of this application include:
- ability to load and save a particular map
- ability to "GOTO" any celestial coordinates
- a search command that looks through the above catalogs
- rudimentary gridlines and constellation lines
- ability to toggle various labels and lines
- an eyepiece field of view display
- observing logs (stored in plain text format)
- ability to add custom objects
- a load/save default settings feature
- basic help with instructions
 - ability to display a legend to explain on screen symbols

I thought of working on a Version 2.0 of DeepSkies that would be much more sophisticated - yet still simple. I would like my application to emulate a digital version of Sky Atlas 2000.0 - not act as a virtual space simulator like most of the current astronomy programs do. I like the fact that my application displays a deep sky object as a square or an ellipse, and it is up to you, the observer, to discern what it looks like (as opposed to displaying a Hubble image of the object on the map!).

This software is offered free of charge with no warranty given or implied. Installation is simple:

- download the dswin.7z file [PART 1] [PART 2] [PART 3] (64 MB total) and extract it somewhere to your computer
- double click on dswin.exe to run it!

You can create a shortcut on your computer to the .exe file if you wish. To run this application, you need a 32-bit version of Microsoft Windows:

- Windows NT (3.1, 3.5, 3.51, 4.0)
- Windows 95/98/Me
- Windows 2000/XP
- Windows Vista/7/8/10/11 (use XP Compatiblity Mode)

Note: If you get an error that MSVCRT20.DLL is missing, then you also need to install some support files for Visual Basic 4.0: vbrun40.zip

If you find the application either useful or amusing, send me an e-mail: rick@deepskies.com and let me know what you think! 
