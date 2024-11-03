// ContentView.swift
import SwiftUI

@objcMembers
public class ContentViewHosting: NSObject {
    public static func makeContentView() -> some View {
        ContentView()
    }
}

public struct ContentView: View {
    @State private var message: String = "Initial Message"

    public init() {}  // Required for public access

    public var body: some View {
        VStack {
            DemoViewControllerWrapper(message: $message)
                .frame(height: 200)

            Button("Update from SwiftUI") {
                message = "Updated from SwiftUI at \(Date())"
            }
            .padding()
        }
    }
}
