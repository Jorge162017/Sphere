//
//  ContentView.swift
//  Sphere
//
//  Created by Andy Fernando Fuentes Velásquez and Jorge López on 30/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isForgotPasswordViewPresented = false
    @State private var isSignUpViewPresented = false
    
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color(red: 15.0/255.0, green: 29.0/255.0, blue: 76.0/255.0)
                    .ignoresSafeArea()
                
                VStack(spacing: 10) {
                    
                    VStack(spacing: -80) {
                        Image("Logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 170, height: 200)
                        Image("NombreLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 100)
                    }
                    HStack {
                        Text("Sign In")
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.leading, 40)
                        Spacer() // Mueve el texto hacia la izquierda
                    }
                    HStack {
                        Text("Email:")
                            .font(.footnote)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.leading, 40)
                        Spacer() // Mueve el texto hacia la izquierda
                    }
                    TextField(" ", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 320, height: 50)
                        .padding(.leading, 5)
                        .padding(.top, 10) // Reduzco el espaciado para que no se desplace tanto hacia abajo
                    HStack {
                        Text("Password:")
                            .font(.footnote)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.leading, 40)
                        Spacer() // Empuja la columna hacia la parte inferior
                    }
                    SecureField(" ", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 320, height: 50)
                        .padding(.leading, 5)
                        .padding(.top, 10) // Reduzco el espaciado
                    Button(action: {
                        // Agrega el código que deseas que se ejecute al hacer clic en el botón
                    }) {
                        Text("Sign In") // Etiqueta del botón
                            .font(.headline)
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 320, height: 50)
                            .background(Color.blue)
                            .cornerRadius(10) // Borde redondeado del botón
                    }
                    HStack(spacing: 70) {
                        //Boton para recuperar una contraseña
                        Button(action: {
                            isForgotPasswordViewPresented = true
                        }) {
                            Text("Forgot password")
                                .font(.headline)
                                .bold()
                                .foregroundColor(.gray)
                                .padding()
                                .frame(width: 170, height: 50)
                                .background(Color(red: 15.0/255.0, green: 29.0/255.0, blue: 76.0/255.0))
                                .cornerRadius(10)
                        }
                        .background(NavigationLink("", destination: ForgotPasswordView(), isActive: $isForgotPasswordViewPresented))
                        // Boton para crear una cuenta
                        Button(action: {
                            isSignUpViewPresented = true
                        }) {
                            Text("Sign Up")
                                .font(.headline)
                                .bold()
                                .foregroundColor(.blue)
                                .padding()
                                .frame(width: 100, height: 50)
                                .background(Color(red: 15.0/255.0, green: 29.0/255.0, blue: 76.0/255.0))
                                .cornerRadius(10)
                        }
                        .background(NavigationLink("", destination: SignUpView(), isActive: $isSignUpViewPresented))
                    }
                    Spacer()
                    Spacer()
                    
                }
            }
        }
    }
}
    
struct ContentView_Previews: PreviewProvider {        static var previews: some View {
        ContentView()
    }
}

