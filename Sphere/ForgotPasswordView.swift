import SwiftUI

struct ForgotPasswordView: View {
    @State private var email2: String = ""
    var body: some View {
        VStack {
            // Contenido de la vista de recuperación de contraseña
            Text("Email:")
                .font(.footnote)
                .foregroundColor(.white)
                .padding(.leading, 40)
                .padding(.top, -100)
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField(" ", text: $email2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 320, height: 50)
                .padding(.top, -100)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 15.0/255.0, green: 29.0/255.0, blue: 76.0/255.0))
    }
}
struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
