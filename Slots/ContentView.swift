//
//  ContentView.swift
//  Slots
//
//  Created by Ayesha Ilyas on 2/22/22.
//

import SwiftUI

struct ContentView: View {
    // State properties
    @State private var credits = 1000
    @State private var img1 = "apple"
    @State private var img2 = "apple"
    @State private var img3 = "apple"
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("SwiftUI Slots!")
                .font(.largeTitle)
            
            Spacer()
            Text("Credits: \(credits)")
            Spacer()
            
            HStack {
                Spacer()
                Image(img1)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image(img2)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image(img3)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            
            Spacer()
            Button("Spin") {
                
                // change images randomly
                img1 = getRandomImageName()
                img2 = getRandomImageName()
                img3 = getRandomImageName()
                
                // update score
                if img1 == img2 && img2 == img3 {
                    credits += 45
                } else {
                    credits -= 5
                }
            }
            .frame(width: 100.0)
            .padding()
            .background(Color.pink)
            .foregroundColor(Color.white)
            .font(.title3)
            .cornerRadius(30.0)
            
            Spacer()
        }
    }
    
    func getRandomImageName() -> String {
        let randInt: Int = Int.random(in: 1...3)

        if randInt == 1 {
            return "apple"
        } else if randInt == 2 {
            return "cherry"
        } else { // randInt == 3
            return "star"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
