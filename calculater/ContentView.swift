//
//  ContentView.swift
//  calculater
//
//  Created by sarah alshammari on 5/3/20.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI
struct text: ViewModifier {
func body(content: Content) -> some View{
     content

.foregroundColor(.white)
.font(.system(size: 50))
        .padding(.horizontal, 20)
        .padding(.vertical, 20)
       // .padding(.vertical, -1)
        
        .background(Color.init( #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
        .clipShape(Circle()) }}
struct textorange: ViewModifier {
func body(content: Content) -> some View{
     content

.foregroundColor(.white)
.font(.system(size: 50))
        .padding(.horizontal, 20)
        .padding(.vertical, 20)
       // .padding(.vertical, -1)
        
        .background(Color.init( #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)))
        .clipShape(Circle()) }}

struct capsule: ViewModifier {
func body(content: Content) -> some View{
     content
         .frame(width: 100.0, height: 30.0)
         .foregroundColor(.white)
    .font(.system(size: 50))
            .padding(.horizontal, 20)
            .padding(.vertical, 20)
           // .padding(.vertical, -1)
            
            .background(Color.init( #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
        
            .clipShape(Capsule())
    }}
struct ContentView: View {
    @State var bg = "Color"
    var body: some View {
        ZStack{
        Color(bg)
            .edgesIgnoringSafeArea(.all)
          
            VStack{
               Spacer()
               /* Text("555")
                    .font(.system(size: 50))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.trailing)
                    .padding()*/
                HStack(){
                
                    Text("C")
                       
                        .fontWeight(.light)
                   .modifier(text())
                  
              
            Image(systemName:"plusminus")
                    .modifier(text())
                  
                Image(systemName:"percent")
                    .modifier(text())
                      
                    Image(systemName: "divide").modifier(textorange())
                   
                
                    
                         }
                
                HStack{
                    
                    Text("7").fontWeight(.light) .modifier(text())
                    Text("8")
                        .fontWeight(.light)
                    .modifier(text())
                    Text("9")
                        .fontWeight(.light)
                    .modifier(text())
            
            Image(systemName:"multiply")
            .modifier(textorange())
                }
               
                HStack{
                                   
                    Text("4").fontWeight(.light) .modifier(text())
                    Text("5")
                        .fontWeight(.light)
                                   .modifier(text())
                    Text("6")
                        .fontWeight(.light)
                                   .modifier(text())
                           
                           Image(systemName:"minus")
                           .modifier(textorange())
                               }
                
                HStack{
                                   
                    Text("1").fontWeight(.light) .modifier(text())
                    Text("2")
                        .fontWeight(.light)
                        .modifier(text())
                    Text("3")
                        .fontWeight(.light)
                    .modifier(text())
                           
                Image(systemName:"plus")
                    .modifier(textorange())
                               }
                Spacer()
                HStack{
                    Text("0")
                        .fontWeight(.light)
                        .modifier(capsule())
                        
                   Text(".")
                        .padding()
                    .modifier(text())
                    Image(systemName: "minus")
                    .modifier(textorange())
                     
                }
                               
                               
        
            
            }
      
        }}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
