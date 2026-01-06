//
//  ContentView.swift
//  CoShell
//
//  Created by Đạt Huỳnh on 6/1/26.
//

import SwiftUI

struct ContentView: View {
    @State private var age: Int = 1
    var body: some View {
        ZStack {
            Color(.secondarySystemBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 5) {
                HStack(spacing: 15) {
                    Image("avatar")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                        .frame(width: 50, height: 50)
                        .foregroundColor(.blue)
                        .padding(.bottom, 10)
                     
                    Text("Đạt")
                        .font(.title)
                        .bold()
                        .padding(.bottom, 10)
                }
                
                Text("Front end developer")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Button(action: {
                    print("Đã follow")
              
                    print("age: \(age)")
                    age += 1
                }) {
                    Text("Theo dõi")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(10)
                }
                .padding(.top, 20)
                Text("Ho Chi Minh City, VN")
                    .padding(.top, 20)
            }
            .padding(30)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
