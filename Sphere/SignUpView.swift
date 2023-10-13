//
//  SignUpView.swift
//  Sphere
//
//  Created by Jorge Lopez on 12/10/23.
//

import SwiftUI

struct SignUpView: View {

    @State private var FirstName: String = ""
    @State private var LastName: String = ""
    @State private var Email: String = ""
    @State private var Password: String = ""
    @State private var Password2: String = ""
    
    var body: some View {
            ZStack {
                Color(red: 15.0/255.0, green: 29.0/255.0, blue: 76.0/255.0)
                    .ignoresSafeArea()
                VStack(spacing: 5) {
                    HStack {
                        Text("First Name:")
                            .font(.footnote)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.leading, 40)
                        Spacer() // Mueve el texto hacia la izquierda
                    }
                    TextField(" ", text: $FirstName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 320, height: 50)
                        .padding(.leading, 10)
                        .padding(.top, 5) // Reduzco el espaciado para que no se desplace tanto hacia abajo
                    HStack {
                        Text("Last Name:")
                            .font(.footnote)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.leading, 40)
                        Spacer() // Empuja la columna hacia la parte inferior
                    }
                    TextField(" ", text: $LastName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 320, height: 50)
                        .padding(.leading, 5)
                        .padding(.top, 10) // Reduzco el espaciado
                    HStack {
                        Text("Email:")
                            .font(.footnote)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.leading, 40)
                        Spacer() // Empuja la columna hacia la parte inferior
                    }
                    TextField(" ", text: $Email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 320, height: 50)
                        .padding(.leading, 5)
                        .padding(.top, 10) // Reduzco el espaciado
                    HStack {
                        Text("Password:")
                            .font(.footnote)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.leading, 40)
                        Spacer() // Empuja la columna hacia la parte inferior
                    }
                    SecureField(" ", text: $Password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 320, height: 50)
                        .padding(.leading, 5)
                        .padding(.top, 10) // Reduzco el espaciado
                    HStack {
                        Text("Re Enter Password:")
                            .font(.footnote)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.leading, 40)
                        Spacer() // Empuja la columna hacia la parte inferior
                    }
                    SecureField(" ", text: $Password2)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 320, height: 50)
                        .padding(.leading, 5)
                        .padding(.top, 10) // Reduzco el espaciado
                }
            }
        }
    }


    

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
