import SwiftUI

struct ContentView: View {
    @State private var showLoginWebView = false
    @State private var showSignUpWebView = false
    @State private var showBookClassWebView = false

    var body: some View {
        VStack {
            Spacer()

            // Logo at the top center
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200) // Adjust size as needed
                .padding(.top, 50)

            Spacer()

            // Login, Sign Up, and Book Class buttons
            VStack(spacing: 20) {
                Button(action: {
                    showLoginWebView.toggle()
                }) {
                    Text("Login")
                        .font(.headline)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .fullScreenCover(isPresented: $showLoginWebView) {
                    WebView(url: URL(string: "https://jiujitsuphuket.gymdesk.com/login")!)
                }

                Button(action: {
                    showSignUpWebView.toggle()
                }) {
                    Text("Sign Up")
                        .font(.headline)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .fullScreenCover(isPresented: $showSignUpWebView) {
                    WebView(url: URL(string: "https://jiujitsuphuket.gymdesk.com/signup")!)
                }
                
                Button(action: {
                    showBookClassWebView.toggle()
                }) {
                    Text("Book Class")
                        .font(.headline)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .fullScreenCover(isPresented: $showBookClassWebView) {
                    WebView(url: URL(string: "https://jiujitsuphuket.gymdesk.com/members/schedule?bookable_only=1")!)
                }
            }
            .padding(.horizontal, 40)

            Spacer()
        }
        .background(Color.white) // Adjust background color as needed
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
