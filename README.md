# CatsApp

> [!NOTE]
> This project was created for learning purposes only.   
> Lukas Gruber (it231519) @ FH St.Pölten

### Aufgabenstellung: Entwicklung einer Katzen-/Hunde-Explorer-App  
Entwickelt eine iOS-App in Swift und SwiftUI, die eine Liste von Katzen- oder Hunderassen anzeigt. Benutzer sollten in der Lage sein, auf eine Rasse zu tippen, um eine Detailansicht mit Name, einem Bild und einer Kurzbeschreibung der Rasse zu sehen. Die App soll Daten von einer öffentlichen API (wie z.B. The Cat API oder The Dog API) asynchron laden und in der Benutzeroberfläche darstellen.

### Anforderungen:  
- Liste der Rassen: Implementiere eine ListView, die alle verfügbaren Rassen von der gewählten API anzeigt.
Jeder Eintrag in der Liste soll mindestens den Namen der Rasse anzeigen.
- Detailansicht: Erstelle eine Detailansicht, die beim Tippen auf eine Rasse in der Liste angezeigt wird.
Die Detailansicht soll den Namen der Rasse, ein Bild (falls verfügbar) und eine Kurzbeschreibung anzeigen.  
- Asynchrones Laden und Darstellen von Bildern: Implementiere das asynchrone Laden von Bildern, sodass Bilder nicht den Haupt-UI-Thread blockieren.
