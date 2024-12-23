//////
//////  ContentView.swift
//////  LoginScreenSwiftUI
//////
//////  Created by Muralidhar reddy Kakanuru on 12/23/24.
//////
////
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Text("Let's Get Started!")
//                .font(.title)
//                .bold()
//            Text("Create an account to Q Allure to get all Features")
//            HStack{
//                Image(systemName: "person.fill")
//                    .foregroundColor(Color.blue)
//                    .font(.system(size: 30))
//                    .padding(.leading, 10)
//                ZStack{
//                    Rectangle()
//                        .frame(width: 300, height: 50)
//                        .background(Color.white)
//                        .foregroundColor(Color.white)
//                        .border(Color.gray, width: 2)
//                        .padding()
//                    Text("Name")
//                    .foregroundColor(Color.gray)
//                    .padding(.leading, -140)
//                }
//            }
//            HStack{
//                Image(systemName: "envelope.fill")
//                    .foregroundColor(Color.blue)
//                    .font(.system(size: 30))
//                ZStack{
//                    Rectangle()
//                        .frame(width: 300, height: 50)
//                        .background(Color.white)
//                        .foregroundColor(Color.white)
//                        .border(Color.gray, width: 2)
//                        .padding()
//                    Text("Email")
//                    .foregroundColor(Color.gray)
//                    .padding(.leading, -140)
//                }
//            }
//            HStack{
//                Image(systemName: "phone.fill")
//                    .foregroundColor(Color.blue)
//                    .font(.system(size: 30))
//                    .padding(.leading, 10)
//                ZStack{
//                    Rectangle()
//                        .frame(width: 300, height: 50)
//                        .background(Color.white)
//                        .foregroundColor(Color.white)
//                        .border(Color.gray, width: 2)
//                        .padding()
//                    Text("Phone")
//                    .foregroundColor(Color.gray)
//                    .padding(.leading, -140)
//                }
//            }
//            HStack{
//                Image(systemName: "lock.fill")
//                    .foregroundColor(Color.blue)
//                    .font(.system(size: 30))
//                    .padding(.leading, 10)
//                ZStack{
//                    Rectangle()
//                        .frame(width: 300, height: 50)
//                        .background(Color.white)
//                        .foregroundColor(Color.white)
//                        .border(Color.gray, width: 2)
//                        .padding()
//                    Text("Password")
//                    .foregroundColor(Color.gray)
//                    .padding(.leading, -140)
//                }
//            }
//            HStack{
//                Image(systemName: "lock.fill")
//                    .foregroundColor(Color.blue)
//                    .font(.system(size: 30))
//                    .padding(.leading, 10)
//                ZStack{
//                    Rectangle()
//                        .frame(width: 300, height: 50)
//                        .background(Color.white)
//                        .foregroundColor(Color.white)
//                        .border(Color.gray, width: 2)
//                        .padding()
//                    Text("Confirm Password")
//                    .foregroundColor(Color.gray)
//                    .padding(.leading, -140)
//                }
//            }
//            
//            ZStack{
//                Rectangle()
//                    .frame(width: 270, height: 50)
//                    .background(Color.white)
//                    .foregroundColor(Color.blue)
//                    .cornerRadius(25)
//                    .padding()
//                Text("CREATE")
//                .foregroundColor(Color.white)
//                .font(.title)
//            }
//            Text("Already have an account? Login here")
//                
//        }
//        .padding()
//    }
//}
//
//#Preview {
//    ContentView()
//}





import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Let's Get Started!")
                .font(.title)
                .bold()
                .padding(.bottom, 10)
            Text("Create an account to Q Allure to get all Features")
                .padding(.bottom, 20)

            
            InputField(icon: "person.fill", placeholder: "Name")
            InputField(icon: "envelope.fill", placeholder: "Email")
            InputField(icon: "phone.fill", placeholder: "Phone")
            InputField(icon: "lock.fill", placeholder: "Password")
            InputField(icon: "lock.fill", placeholder: "Confirm Password")
                .padding(.bottom, 20)
            
            ZStack {
                Rectangle()
                    .frame(width: 270, height: 50)
                    .foregroundColor(Color.blue)
                    .cornerRadius(25)
                    .padding()
                Text("CREATE")
                    .foregroundColor(Color.white)
                    .font(.title)
            }
            
            Text("Already have an account? Login here")
                .foregroundColor(Color.blue)
        }
        .padding()
    }
}


struct InputField: View {
    let icon: String
    let placeholder: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(Color.blue)
                .font(.system(size: 30))
                .frame(width: 40, alignment: .leading)
            ZStack {
                Rectangle()
                    .frame(width: 300, height: 50)
                    .foregroundColor(Color.white)
                    .border(Color.gray, width: 2)
                    .padding()
                Text(placeholder)
                    .foregroundColor(Color.gray)
                    .padding(.leading, -140)
            }
        }
        .padding(.bottom, -15)
    }
}

#Preview {
    ContentView()
}
