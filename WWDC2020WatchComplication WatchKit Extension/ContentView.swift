//
//  ContentView.swift
//  WWDC2020WatchComplication WatchKit Extension
//
//  Created by Sebastian Bolling on 2020-06-23.
//

import SwiftUI
import ClockKit

struct ContentView: View {
    
    let circularGradient = RadialGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple]), center: .center, startRadius: 0, endRadius: 55)
    
    let bottomTopGradient = LinearGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple]), startPoint: .bottom, endPoint: .top)
    
    var body: some View {
        VStack {
            Text("Burn")
            ZStack {
                Circle()
                    .fill(bottomTopGradient)
                Image(systemName: "flame")
                    .complicationForeground()
                    .background(Color.clear)
                    .font(.body)

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            ContentView()
            ForEach(CLKComplicationTemplate.PreviewFaceColor.allColors) { color in
                CLKComplicationTemplateGraphicCircularView(ContentView())
                    .previewContext(faceColor: color)
            }
        }
    }
}
