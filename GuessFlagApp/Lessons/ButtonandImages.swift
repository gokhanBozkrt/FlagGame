//
//  SwiftUIView.swift
//  GuessTheFlag
//
//  Created by Gokhan Bozkurt on 29.01.2022.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
        /*
         Tip: If you find that your images have become filled in with a color, for example showing as solid blue rather than your actual picture, this is probably SwiftUI coloring them to show that they are tappable. To fix the problem, use the renderingMode(.original) modifier to force SwiftUI to show the original image rather than the recolored version.
         */
           
            /*        Image(systemName: "pencil")
            Button {
                print("Basıldı")
            } label: {
                Label("Edit", systemImage: "pencil")
                    .padding()
                    .foregroundColor(.blue)
                    .background(.green)
            
             */
                Button("Button 1") { }
                  .buttonStyle(.bordered)
                  Button("Button 2", role: .destructive) { }
                      .buttonStyle(.bordered)
                  Button("Button 3") { }
                  .buttonStyle(.borderedProminent)
                  .tint(.green)
                  Button("Button 4",role: .destructive) { }
                  .buttonStyle(.borderedProminent)

                
                
            }
            
            
            /*
             Button {
                 print("Basıldı")
             } label: {
                 Text("Tap Me")
                     .padding()
                     .foregroundColor(.white)
                     .background(.red)
             
             }
                 
             */
        
            /*
          Button("Button 1") { }
            .buttonStyle(.bordered)
            Button("Button 2", role: .destructive) { }
                .buttonStyle(.bordered)
            Button("Button 3") { }
            .buttonStyle(.borderedProminent)
            .tint(.green)
            Button("Button 4",role: .destructive) { }
            .buttonStyle(.borderedProminent)

            Button("Button 5") { }
          */
        }
    }


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
