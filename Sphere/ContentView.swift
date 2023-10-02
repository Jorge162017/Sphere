//
//  ContentView.swift
//  Sphere
//
//  Created by Andy Fernando Fuentes Velásquez on 30/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .center) {
            VStack {
                HStack {
                            Image(systemName: "globe")
                                .imageScale(.large)
                                .foregroundColor(.accentColor)
                            
                            Text("Sphere")
                                .font(.title)
                                .bold()
                        }
                Spacer()
            }
            VStack(alignment: .center) {
                Spacer()
                Image("messi")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(x : -55)
                    
                Spacer()
                
            }
            Spacer() // Empuja el contenido hacia la izquierda
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
