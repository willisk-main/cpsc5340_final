import Combine
import FirebaseAuth

class AuthenticationViewModel: ObservableObject {
    @Published var isUserAuthenticated: Bool = Auth.auth().currentUser != nil

    init() {
        Auth.auth().addStateDidChangeListener { [weak self] _, user in
            self?.isUserAuthenticated = (user != nil)
        }
    }
}
