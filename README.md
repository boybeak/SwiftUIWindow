# SwiftUIWindow
Quick open a window with SwiftUI for macOS

## Installation
Open XCode, **File** -> **Add Package Denpendencies** -> Search `https://github.com/boybeak/SwiftUIWindow.git` -> **Add Package**.

## Usage
```swift
import SwiftUIWindow

struct ContentView : View {

    var body: some View {
        Button(
            action: {
                openWindow()
            }
        ) {
            Text("Open Window")
        }
    }
    
    func openWindow() {
        let window = openSwiftUIWindow { win in
            ZStack {
                Button(
                    action: {
                        win.close()
                    }
                ) {
                    Text("Close Window")
                }
            }
            .frame(width: 256, height: 256)
        }
        
        // You can config window here
        window.center()
        window.title = "Demo window"
    }
}
```
