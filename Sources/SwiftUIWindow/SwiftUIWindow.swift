// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

@available(macOS 10.15, *)
public func openSwiftUIWindow<Content : View>(@ViewBuilder builder: (_ window: NSWindow) -> Content)-> NSWindow {

    let controller = SwiftUIWindowController(builder: builder)
    controller.showWindow(nil)
    
    return controller.window!
}

@available(macOS 10.15, *)
class SwiftUIWindowController<Content> : NSWindowController where Content : View {
    
    convenience init(@ViewBuilder builder: (_ window: NSWindow) -> Content) {
        let window = NSWindow()
        self.init(window: window)
        
        window.contentView = NSHostingView(rootView: builder(window))
    }
}
