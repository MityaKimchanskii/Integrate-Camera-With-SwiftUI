//
//  ContentView.swift
//  Integrate-Camera-With-SwiftUI
//
//  Created by Mitya Kim on 7/19/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showImagePicker: Bool = false
    @State private var image: Image? = nil
    
    var body: some View {
        
        VStack {
            
            image?.resizable()
                .scaledToFit()
            
            Button {
                self.showImagePicker = true
            } label: {
                Text("Open Camera")
                    .padding()
                    .foregroundColor(.white)
                    .background(.green)
                    .cornerRadius(10)
            }
            
            
        }.sheet(isPresented: self.$showImagePicker) {
            PhotoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
