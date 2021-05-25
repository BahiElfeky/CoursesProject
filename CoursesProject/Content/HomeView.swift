//
//  ContentView.swift
//  CoursesProject
//
//  Created by Mac on 25/05/2021.
//

import SwiftUI

struct HomeContentView: View {
    
    @State var text = ""
    @State var displayedCourses = courses
    
    var body: some View {
        
        VStack{
            HStack{
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Hello Bahi")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Let's upgrade your skill!")
                }
                .foregroundColor(.black)
                
                Spacer(minLength: 0)
                
                Button(action: {}, label: {
                    Text("Profile")
                        .foregroundColor(.blue)
//                    Image("Profile").resizable()
//                        .renderingMode(.template)
//                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                })
                
            }//: HEADER STACK
            .padding()
            
            ScrollView (.vertical, showsIndicators: false){
                
                VStack{
                    HStack(spacing: 15){
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        
                        TextField("Search Courses", text: $text)
                    }
                    .onChange(of: text){
                        if $0 == "" {
                            displayedCourses = courses
                            return
                        }
                        displayedCourses = []
                        for course in courses{
                            if course.name.contains($0){
                                displayedCourses.append(course)
                            }
                        }
                    }
                    .padding(.vertical, 12)
                    .padding(.horizontal)
                    .background(Color.white)
                    .clipShape(Capsule())
                    
                    HStack{
                        Text("Categories")
                            .fontWeight(.bold)
                            .font(.title2)
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {}, label: {
                            Text("View All")
//                                .foregroundColor(.black)
                        })
                    }
                    .foregroundColor(.black)
                    .padding(.top, 25)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2) , spacing: 20){
                        ForEach(displayedCourses) { course in
                            CourseCardView(course: course)
                        }
                    }
                }
                .padding()
                .padding(.bottom, 50)
            }//: ScrollView
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeContentView()
        }
    }
}


//Model Data

struct Course: Identifiable{
    var id = UUID().uuidString
    var name: String
    var numCourse: Int
    var asset: String
}

let courses: [Course] = [
    Course(name: "Coding", numCourse: 12, asset: "coding"),
    Course(name: "Trading", numCourse: 4, asset: "coding"),
    Course(name: "Marketing & Digital Marketing", numCourse: 10, asset: "coding"),
    Course(name: "Cooking", numCourse: 22, asset: "coding"),
    Course(name: "UI/UX", numCourse: 5, asset: "coding"),
    Course(name: "Digital Marketing", numCourse: 12, asset: "coding"),
    Course(name: "AI", numCourse: 9, asset: "coding"),
    Course(name: "IT", numCourse: 6, asset: "coding")
]
