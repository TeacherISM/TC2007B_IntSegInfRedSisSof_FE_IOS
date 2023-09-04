//
//  ContentView.swift
//  SEL4C_IOS
//
//  Created by Ivan Santiago Méndez on 21/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Label {
                NavigationLink(destination: HomeContentView()){
                    Text("Cargar Actividades")
                }.navigationTitle("Página Principal")
            } icon: {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
