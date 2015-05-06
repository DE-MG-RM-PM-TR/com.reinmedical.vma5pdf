# com.reinmedical.VMA5PDF

Wir haben nun ein erstes (verwendbares) Plugin zur reinmedicalisierten PDF-Ausgabe.
Dieses Plugin wird im DITA-OT installiert und vom Oxygen XML Editor zur PDF-Generierung verwendet.

Download via:
https://github.com/DE-MG-RM-PM-TR/com.reinmedical.VMA5PDF
Details zur Installation weiter unten.


What´s New im Vergleich zum original DITA2PDF2-Plugin?
- Titelunterstrich umformatiert
- A4-Seitenformat statt Letter
- RM-Logo auf Titelseite
- Even/Odd-Kopfzeile
- Randabstände vergrößert
- Body-Font auf Arial gewechselt
- Erweiterte sprachspezifische Variablen für statische Texte 
- Neue Note-Ikons

Beispiel-Layout siehe Anhang.
Solltet ihr Änderungsvorschläge haben, bitte her damit!

Folgende Improvements sind schon in der Pipeline:
- Farbkontrolle für Body-Text und Hyperlinks
- OEM-spezifische Layouts/Titelseiten
- Umbruchkontrolle verbessern
- Tabellenvisualisierung verbessern
- Dokumentmetadaten auf Titelseite und in Kopf-/Fußzeilen
- Statische Pixel-Grafiken auf Vector (SVG) umstellen
- Umstellung auf DIN A5




# Installation und Inbetriebnahme des Plugins „com.reinmedical.VMA5PDF“

Oxygen oder DITA-OT mit Java JRE-Installation ist erforderlich.

ACHTUNG! Bei der erstmaligen Inbetriebnahme dieses Plugins zuerst den Instruktionsblock 
                   "Vorbereitung für die Verwendung des eigenen Plugins mit Oxygen" weiter unten befolgen.


1.	Download unseres DIT2PDF-Plugins “com.reinmedical.VMA5PDF” via
https://github.com/DE-MG-RM-PM-TR/com.reinmedical.VMA5PDF
(siehe Download-Button unten rechts)

2.	Unzippen und Ordner unter „C://DITA-OTx.x.x/plugins/ ablegen.

3.	Oxygen starten. 

4.	DITA Datei (Map oder Topic) öffnen.

5.	Fenster „Transformationsszenarien“ öffnen.
6.	Transformationsszenario „Run DITA-OT Integrator“ ausführen (Doppelklick).
„BUILD SUCCESSFUL„ erscheint.

7.	Das Plugin ist nun betriebsbereit und kann über das Transformationsszenarion „Rein Medical PDF (vma5pdf)“ initiert werden.
Eine DITA-Map muss hierfür ausgewählt sein.




# Vorbereitung für die Verwendung des eigenen Plugins mit Oxygen

1.	DITA-OT 1.8.5 (full easy install Version) saugen:
http://sourceforge.net/projects/dita-ot/files/DITA-OT%20Stable%20Release/DITA%20Open%20Toolkit%201.8/DITA-OT1.8.5_full_easy_install_bin.zip/download

2.	Unzippen und Ordner direkt unter c:\ ablegen.

3.	Folge dem Anweisungsblock  Installation und Inbetriebnahme des neuen Plugins „DITA-Manual-Projekt installieren“ oben.

4.	Oxygen +  DITA-Manual-Projekt öffnen.
Infos zur Installation unseres DITA-Manual-Projekts unter „DITA-Manual-Projekt installieren“

5.	DITA-Map-Dokument öffnen.

6.	Fenster „Transformationsszenarien“ anzeigen lassen.

7.	Falls das DITA-Manual-Projekt kein Transformationsszenario namens „Rein Medical PDF (vma5pdf)“ enthält, kann dieses wie nachfolgend beschrieben auch manuell erstellt werden.

a.	Transformationsszenario „DITA Map PDF“ kopieren und Kopie zur Bearbeitung öffnen.

b.	Name ändern in „Rein Medical PDF (vma5pdf)“.
c.	Auf „global Options“ stellen.

d.	Reiter „Parameters“ öffnen.
e.	Neuen Parameter mit „new“ anlegen.
Name: „transtype“
Wert: „vma5pdf“
f.	Parameter „fix.external.refs.com.oxygenxml” suchen und zur Bearbeitung öffnen
g.	Wert auf „true“ setzen.
h.	Parameter „dita.dir“ suchen und zur Bearbeitung öffnen.
i.	Wert auf „C:\DITA-OT1.8.5“ setzen

j.	„Advanced“ Reiter aufrufen
k.	Custom Build file auf “${homeDir}\workspace\ANT-Builds\vma5pdf.xml” setzen.

l.	“Output” Reiter aufrufen.
m.	“Output Folder auf “${homeDir}/Desktop/Oxygen-Output” oder auch anderen Ausgabepunkt setzen.

n.	Eingaben mit „OK“ bestätigen.

8.	Transformationsszenario „Rein Medical PDF (vma5pdf)“ bei ausgewählter DITA-Map starten.
Sollte eine Fehlermeldung erscheinen, Einstellungen wie unter 7. beschrieben prüfen.



