//
//  ContentView.swift
//  Tally Counter
//
//  Created by Arrinal Sholifadliq on 25/01/21.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = Counter()
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        VStack {
            Text("Tally Counter".uppercased())
                .bold()
                .font(.title)
                .kerning(5.0)
            numberCounted(text: String(counter.num))
                .padding()
            if verticalSizeClass == .regular && horizontalSizeClass == .compact {
                HStack {
                    counterMinus(counter: $counter)
                    counterPlus(counter: $counter)
                }
                .padding(.bottom, 50)
            } else {
                HStack {
                    counterMinus(counter: $counter)
                    counterPlus(counter: $counter)
                }
                .padding(.bottom, 10)
                Spacer()
            }
            reset(counter: $counter)
        }
    }
}

struct numberCounted: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .font(.system(size: 100))
    }
}

struct counterPlus: View {
    @Binding var counter: Counter
    
    var body: some View {
        Button(action: {
            counter.plusPressed()
        }) {
            Text("+")
                .frame(maxWidth: 120, maxHeight: 60)
                .font(.system(size: 35))
                .background(
                    ZStack {
                        Color("CounterPlus")
                    }
                )
                .foregroundColor(.white)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color.black, lineWidth: 1)
                )
        }
    }
}

struct counterMinus: View {
    @Binding var counter: Counter
    
    var body: some View {
        Button(action: {
            counter.minusPressed()
        }) {
            Text("-")
                .frame(maxWidth: 120, maxHeight: 60)
                .font(.system(size: 35))
                .background(
                    ZStack {
                        Color("CounterMinus")
                    }
                )
                .foregroundColor(.black)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color.black, lineWidth: 1)
                )
        }
    }
}

struct reset: View {
    @Binding var counter: Counter
    
    var body: some View {
        Button(action: {
            counter.resetPressed()
        }) {
            Text("RESET")
                .kerning(5.0)
                .fontWeight(.black)
                .frame(maxWidth: 120, maxHeight: 100)
                .font(.system(size: 25))
                .background(
                    ZStack {
                        Color.red
                    }
                )
                .foregroundColor(.white)
                .cornerRadius(50)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .strokeBorder(Color.black, lineWidth: 1)
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
