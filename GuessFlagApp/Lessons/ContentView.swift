//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Gokhan Bozkurt on 28.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                
            Color.red
                .frame(minWidth : 200, maxWidth: .infinity,maxHeight: 200)
            Text("Hello, world!")
                .padding()
           
            /*  VStack(spacing: 10){
                Color.blue
                Color.red
                */
            }
            Text("Hi Guys")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
            // Color(red: 1, green: 0.8, blue: 0)
            
            /* Color.blue
            Color.secondary
              */
            
            //Color.primary
            
            /*  Color.red
                .frame(minWidth : 200, maxWidth: .infinity,maxHeight: 200)
            Text("Hello, world!")
                .padding()
           */
        } .ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
