// DemoViewControllerWrapper.swift
import SwiftUI

struct DemoViewControllerWrapper: UIViewControllerRepresentable {
    @Binding var message: String

    func makeUIViewController(context: Context) -> DemoViewController {
        let viewController = DemoViewController()
        viewController.message = message
        return viewController
    }

    func updateUIViewController(_ uiViewController: DemoViewController, context: Context) {
        uiViewController.updateMessage(message)
    }
}

// ContentView.swift
struct ContentView: View {
    @State private var message: String = "Initial Message"

    var body: some View {
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
