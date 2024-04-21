import SwiftUI

struct EnvironmentSettingsView: View {
    @State private var temperature: Double = 22.0
    @State private var humidity: Double = 75.0

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Temperature Settings")) {
                    Slider(value: $temperature, in: 15...30, step: 0.5)
                    HStack {
                        Text("Current Temperature:")
                        Spacer()
                        Text("\(temperature, specifier: "%.1f") °C")
                    }
                }
                Section(header: Text("Humidity Settings")) {
                    Slider(value: $humidity, in: 50...90, step: 1)
                    HStack {
                        Text("Current Humidity:")
                        Spacer()
                        Text("\(humidity, specifier: "%.0f") %")
                    }
                }
            }
            .navigationBarTitle("Mushroom Grow Settings")
            .background(Color.green.opacity(0.1)) // Set a light green background
        }
    }
}

struct EnvironmentSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentSettingsView()
    }
}
