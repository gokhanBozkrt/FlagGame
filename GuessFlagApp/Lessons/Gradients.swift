//
//  Gradients.swift
//  GuessTheFlag
//
//  Created by Gokhan Bozkurt on 29.01.2022.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [.white,.black,.gray,.brown]), startPoint: .top, endPoint: .bottom)
        
        /*
         AngularGradient(gradient: Gradient(colors: [.blue,.yellow,.red,.green,.mint,.pink,.red,.orange,.brown]), center: .center)
        */
        
        // Same things
        /*
         LinearGradient(gradient: Gradient(stops: [
             Gradient.Stop(color: .white, location: 0.45),
             Gradient.Stop(color: .blue, location: 0.55)
         ]), startPoint: .top, endPoint: .bottom)
         **************
         LinearGradient(gradient: Gradient(stops: [
             .init(color: .white, location: 0.45),
             .init(color: .blue, location: 0.55)
         ]), startPoint: .top, endPoint: .bottom)
         */
    /*
     RadialGradient(gradient: Gradient(colors: [.blue,.black]), center: .center, startRadius: 20, endRadius: 200)
     */
        
        /*
         LinearGradient(gradient: Gradient(colors: [.white,.black]), startPoint: .top, endPoint: .bottom)
         */
    }
}

struct Gradients_Previews: PreviewProvider {
    static var previews: some View {
        Gradients()
    }
}
