import SwiftUI
import FirebaseAuth

struct AuthenticationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var authenticationDidFail = false
    @State private var authenticationDidSucceed = false

    var body: some View {
        NavigationView {
            VStack {
                TextField("Email", text: $email)
                    .padding()
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .border(Color(UIColor.separator))
                SecureField("Password", text: $password)
                    .padding()
                    .border(Color(UIColor.separator))

                if authenticationDidFail {
                    Text("Information not correct. Try again.")
                        .offset(y: -10)
                        .foregroundColor(.red)
                }

                Button("Log in") {
                    authenticateUser(email: email, password: password)
                }
                .padding()

                Spacer()
            }
            .padding()
            .navigationBarTitle("Login")
        }
    }

    func authenticateUser(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                self.authenticationDidFail = true
            } else {
                self.authenticationDidSucceed = true
            }
        }
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView()
    }
}
