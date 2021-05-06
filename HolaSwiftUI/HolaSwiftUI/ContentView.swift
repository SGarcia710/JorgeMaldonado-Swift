//
//  ContentView.swift
//  HolaSwiftUI
//
//  Created by Sebastian Garcia on 15/04/21.
//

import SwiftUI

struct ContentView: View {
    let buttonLabel = "Presioname"
    
    @State private var show: Bool = false
    var body: some View {
        Button(action: {
            show = true
        }) {
            Text(buttonLabel)
        }
        .alert(isPresented: $show, content: {
            Alert(title: Text( "Mi alerta"), message: Text("Hola desde SwiftUI Reactivo"), dismissButton: .default (Text("Aceptar")))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
