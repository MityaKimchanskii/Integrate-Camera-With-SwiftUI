//
//  PhotoCaptureView.swift
//  Integrate-Camera-With-SwiftUI
//
//  Created by Mitya Kim on 7/19/22.
//

import SwiftUI

struct PhotoCaptureView: View {
    
    @Binding var showImagePicker: Bool
    @Binding var image: Image?
    
    var body: some View {
        ImagePicker(isShown: $showImagePicker, image: $image)
    }
}

struct PhotoCaptureView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCaptureView(showImagePicker: .constant(false), image: .constant(Image("")))
    }
}
