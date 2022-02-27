//
//  ContentView.swift
//  Shared
//
//  Created by Devang Helios on 27/02/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            Color("color_loginBG").ignoresSafeArea(.all, edges: .all) // From assets
            GeometryReader { geometry in
                VStack(alignment: .leading){
                    // MARK:- LOGO
                    //1. Ring BG
                    //2. Text
                    ZStack{
                        Circle().stroke(.white.opacity(0.2), lineWidth: 20).frame(height: geometry.size.width/2, alignment: .center)
                        Circle().stroke(.white.opacity(0.2), lineWidth: 40).frame( height: geometry.size.width/2, alignment: .center)
                        Text("LOGO").font(.largeTitle).fontWeight(.heavy).foregroundColor(.white)
                    }.padding(.vertical, 20) //: LOGO
                    Spacer()
                    //MARK:- TEXT
                    Text("Please login to your account").font(.system(size: 20).weight(.bold)).foregroundColor(.white)
                    
                    //MARK:- TEXTFIELDS
                    //1. BACKGROUND
                    //2. Text
                    Group{
                        VStack{
                            ZStack{
                                Capsule().fill(Color.white.opacity(0.4))
                                HStack {
                                    Image(systemName: "person.crop.circle")
                                    TextField("Username", text:$username)
                                }.padding(.horizontal)
                            }.frame(height:40)
                            ZStack{
                                Capsule().fill(Color.white.opacity(0.4))
                                HStack {
                                    Image(systemName: "lock.circle.fill")
                                    SecureField("Password", text:$password)
                                }.padding(.horizontal)
                            }.frame(height:40)
                        }.frame(alignment: .center)
                        
                        //MARK:- FORGOT PASSWORD
                        HStack{
                            Spacer()
                            Button("Forgot Password ?") {
                                //Login Action
                            }.foregroundColor(.white)
                        }.padding(.vertical)
                        
                        //MARK:- LOGIN BUTTON
                        VStack{
                            ZStack{
                                Capsule().fill(Color.orange.opacity(0.6))
                                Capsule().fill(Color.orange.opacity(0.6)).padding(8)
                                Text("LOGIN").foregroundColor(.white).font(.headline).bold()
                            }
                        }.frame(height: 60, alignment: .center)
                    }
                    
                    Spacer(minLength: 10)
                    HStack{
                        Text("Already have an account ?").foregroundColor(.gray)
                        Spacer()
                        Button("Sign Up") {
                            //Login Action
                        }.foregroundColor(.white)
                    }
                }.padding()

            }.frame(maxWidth: 400, maxHeight: 800)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .previewDevice("iPhone 13 Pro Max")
            ContentView()
                .previewDevice("iPad Pro (12.9-inch) (5th generation)")
.previewInterfaceOrientation(.portrait)
        }
    }
}
