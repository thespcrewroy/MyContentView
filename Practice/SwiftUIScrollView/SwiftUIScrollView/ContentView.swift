//
//  ContentView.swift
//  SwiftUIScrollView
//
//  Created by Simon Ng on 11/7/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // Your code for exercise #1
            HStack {
                VStack(alignment: .leading) {
                    Text("MONDAY, AUG 20")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text("Your Reading")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.black)
                }
                
                Spacer()
            }
            .padding([.top, .horizontal])
            
            ScrollView(.horizontal, showsIndicators: true) {
                
                HStack {
                    Group {
                        CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
                        
                        CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                        
                        CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                        
                        CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati")
                    }
                    .frame(width: 300)
                }
                
                // Solution to exercise #2
                Spacer()
            }
        }
        
    }
}

struct ContentViewVertical: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("MONDAY, AUG 20")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text("Your Reading")
                            .font(.system(.largeTitle, design: .rounded))
                            .fontWeight(.black)
                    }
                    
                    Spacer()
                }
                .padding([.top, .horizontal])
                
                CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
                CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentViewVertical()
    }
}
