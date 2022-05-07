//
//  ContentView.swift
//  GuessFlagApp
//
//  Created by Gokhan Bozkurt on 29.01.2022.
//

import SwiftUI

struct FlagImage : View {
    var image: String
    
    var body: some View {
        Image(image)
            .renderingMode(.original)
            .clipShape(Capsule())
            .shadow(radius: 10)
    }
           
}




struct FlagView: View {
 
    @State private var animationAmount = 0.0
    @State private var userChoice:Int?
    
    @State private var showingFinalResult = false
    @State private var gameLimit = 0
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score : Int = 0
    @State private var countries = ["US","UK","Spain","Russia","Poland","Nigeria","Italy",
                     "Ireland","Germany","France","Estonia"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    var body: some View {
        
        
        ZStack {
            RadialGradient(stops : [
                .init(color: Color(red: 0.1, green: 0.2,blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15,blue: 0.26), location: 0.3)
            ], center: .top,startRadius: 250,endRadius: 700 )
                .ignoresSafeArea()
           
            
            VStack {
                Spacer()
                Text("GUESS THE FLAG")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                
                VStack(spacing:15) {
                    VStack  {
                        Text("Tap the flag of")
                            .foregroundColor(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                }
                    VStack(spacing:15) {
                         ForEach(0..<3) { number in
                             Button {
                                 withAnimation(.easeIn) {
                                    userChoice = number
                                     animationAmount += 360
                                 }
                                 
                                 flagTapped(number)
                                 
                                
                        
                             } label: {
                            
                                // FlagImage(image: countries[number])
                                 Image(countries[number])
                                     .renderingMode(.original)
                                     .clipShape(Capsule())
                                     .shadow(radius: 10)
                                     .rotation3DEffect(.degrees(userChoice == number ? animationAmount : 0), axis: (x: 0, y: 1, z: 0))


                             }


                       


                     }
                    } .alert(scoreTitle,isPresented: $showingScore) {
                        Button("Continue", action: askQuestion)
                    } message: {
                        withAnimation {
                            Text("Your score is \(score)")
                        }
                       
                    }
                    .onChange(of: userChoice) { _ in
                        userChoice = nil
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.thinMaterial)
               .clipShape(RoundedRectangle(cornerRadius: 20))
                Spacer()
                Spacer()

                Text("Score : \(score)")
                    .font(.title.bold())
                    .foregroundColor(.white)
                Spacer()

            }
        } .alert(scoreTitle, isPresented: $showingFinalResult) {
            Button("Restart",action: gameOver)
        } message: {
            Text("You finished the game your score : \(score)")
        }
   

    }
    
    func flagTapped(_ sayı : Int) {
        
        if sayı == correctAnswer {
            scoreTitle = "Right"
            score += 1
            
          } else {
            scoreTitle = """
    Wrong! that's the flag of
    \(countries[sayı])
 """
        }
  showingScore = true
    gameLimit += 1
        
        if gameLimit == 8 {
            showingFinalResult = true
            showingScore = false
        } else {
            showingFinalResult = false
            showingScore = true
        }
    }
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
 
    func gameOver() {
    askQuestion()
     score = 0
    }

    
}

struct FlagView_Previews: PreviewProvider {
    static var previews: some View {
        FlagView()
    }
}



