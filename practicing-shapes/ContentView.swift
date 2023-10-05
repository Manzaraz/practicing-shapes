//
//  ContentView.swift
//  practicing-shapes
//
//  Created by Christian Manzaraz on 04/10/2023.
//

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        let mid = rect.width/2
        
        return Path { path in
            
            /*  /// original version with rect
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
//            path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
            path.closeSubpath()
             */
            
            // using mid constant
            path.move(to: CGPoint(x: mid, y: 0))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.height))
            path.closeSubpath()
            
            
        }
    }
    
    
}

struct Quadrilateral: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.midY))
            path.closeSubpath()
            
        }
    }
}


struct ContentView: View {
    var body: some View {
        VStack {
            Quadrilateral()
                .stroke()
                .frame(width: 300, height: 300)
            /* // comment triangle
                Triangle()
//                .stroke(Color.red)
//                .stroke(LinearGradient(colors: [.red, .green, .black], startPoint: .top, endPoint: .bottomLeading), lineWidth: 5)
                .fill(LinearGradient(colors: [.blue, .orange, .pink], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 300, height: 300)
             */
            
        }
        
    }
}

#Preview {
    ContentView()
}
