import SwiftUI

struct DemoViewControllerWrapper: UIViewControllerRepresentable {
    var message: String

    func makeUIViewController(context: Context) -> DemoViewController {
        let viewController = DemoViewController()
        viewController.message = message
        return viewController
    }

    func updateUIViewController(_ uiViewController: DemoViewController, context: Context) {
        uiViewController.updateMessage(message)
    }
}
