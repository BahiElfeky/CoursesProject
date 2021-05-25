//
//  TabButtonView.swift
//  CoursesProject
//
//  Created by Mac on 25/05/2021.
//

import SwiftUI

struct TabButtonView: View {
    
    var image: String
    @Binding var selectedTab: String
    
    var body: some View {
        Button(action: { selectedTab = image}){
         
            Image(image)
                .renderingMode(.template)
                .resizable()
                .frame(width: 32.0, height: 32.0)
                .foregroundColor(selectedTab == image ? Color(.blue).opacity(0.6) : Color.black.opacity(0.4))
            
        }
    }
}

struct TabButtonView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{}
    }
}
