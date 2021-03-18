//
//  ContentView.swift
//  Blueprint1
//
//  Created by Naveen on 16/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack{
                Circle()
                    .frame(width: 150.0, height: 150.0)
                    .offset(x:180, y:-300
                    )
                Circle()
                    .frame(width: 150.0, height: 150.0)
                    .offset(x:-180, y:-200)
            }
            .foregroundColor(.secondary)
            
            GeometryReader { gr in
                VStack{
                    Spacer()
                   RoundedRectangle(cornerRadius: 40)
                    .fill(Color.secondary)
                    .frame(height:gr.size.height * 0.7)
                    .offset(y:40)
                    
                }
            }
            
            VStack(spacing: 16.0){
                Circle()
                    .fill(Color.secondary)
                
                Text("Landing 1")
                    .font(.largeTitle)
                    .bold()
                
                Capsule()
                    .fill(Color.secondary)
                    .frame(width: 200, height: 50)
                
                HStack(spacing: 16.0){
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                }
                HStack(spacing: 16.0){
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                }
                HStack(spacing: 16.0){
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.secondary)
                }
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Text("In Progress....")

        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
            .previewDevice("iPhone 12")
    }
}
