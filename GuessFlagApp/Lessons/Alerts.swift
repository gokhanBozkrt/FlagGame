//
//  Alerts.swift
//  GuessTheFlag
//
//  Created by Gokhan Bozkurt on 29.01.2022.
//

import SwiftUI

struct Alerts: View {
    
    @State private var showAlert = false

    var body: some View {
        Button("Show Alert") {
            showAlert = true
        } .buttonStyle(.borderedProminent)
        .alert("Important Message", isPresented: $showAlert) {
            Button("Delete",role: .destructive)      { }
           Button("Cancel",role: .cancel) { }
        } message: {
            Text("Bunu Oku")
        }
    }
}

struct Alerts_Previews: PreviewProvider {
    static var previews: some View {
        Alerts()
    }
}
