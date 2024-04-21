import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background color or image
            Color.green.opacity(0.1).edgesIgnoringSafeArea(.all)

            // Content
            VStack {
                Image("logo") // Ensure you have an image named 'logo' in your assets
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding(.bottom, 20)

                Text("Welcome to the Mushroom Grow Controller App!")
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
