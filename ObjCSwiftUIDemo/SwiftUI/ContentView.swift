import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("🌍")
                .font(.system(size: 100))
                .padding()
            Spacer()
            DemoViewControllerWrapper(message: "Hello from SwiftUI!")
                .frame(height: 200)  // Set a fixed height
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
