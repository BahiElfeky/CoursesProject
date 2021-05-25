//
//  CourseCardView.swift
//  CoursesProject
//
//  Created by Mac on 25/05/2021.
//

import SwiftUI

struct CourseCardView: View {
    
    var course: Course
    
    var body: some View {
        VStack {
            VStack{
                
                Image(course.asset)
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .background(Color(course.asset))
                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 12){
                        
                        Text(course.name)
                            .font(.title3)
                        
                        Text("\(course.numCourse) Courses")
                        
                    }
                    Spacer(minLength: 0)
                }
                .padding()
                
            }
            .background(Color.white)
            .cornerRadius(15)
            
            Spacer(minLength: 0)
        }
    }
}

struct CourseCardView_Previews: PreviewProvider {
    static var previews: some View {
        CourseCardView(course: Course(name: "Coding", numCourse: 12, asset: "coding"))
    }
}
