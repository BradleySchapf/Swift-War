//
//  ContentView.swift
//  war
//
//  Created by Bradley Schapf on 2023-05-14.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card9"
    @State private var cpuCard = "card5"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    
                    //generate a random number between 2-14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //update cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)

                    //update scores
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    if playerRand < cpuRand {
                        cpuScore += 1
                    }
                        
                } label: {
                    Image("dealbutton")
                }

                
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
