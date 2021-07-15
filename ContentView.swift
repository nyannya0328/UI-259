//
//  ContentView.swift
//  UI-259
//
//  Created by nyannyan0328 on 2021/07/15.
//

import SwiftUI


struct ContentView: View {
    @State var show = false
    var body: some View {
      
        
            
        ZStack{
            Screen()
        }
               
                
        }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 1500, height: 1200))
    }
}

struct Screen : View{
    
    var body: some View{
        
        ZStack{
            
            
            RoundedRectangle(cornerRadius: 15)
                .fill(Color("Purple"))
      
                
                
                
                LinearGradient(colors: [.red,.blue], startPoint: .top
                               , endPoint: .bottom)
                
                    .mask(Image(systemName: "applelogo")
                         
                            .font(.system(size: 180))
                            .offset(y: -60)
                    
                    
                    )
                    
                    
                
            
          
            
            HStack(spacing:20){
                
                
                TypeC()
                
                TypeC()
                
                TypeC()
                
                TypeC(thunderbolt: true)
                
                TypeC(thunderbolt: true)
                
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            .offset(x: 30, y: -50)
            
            ZStack{
                
                
                Circle()
                    .fill(Color("Purple"))
                
                
            Image(systemName: "power")
                    .font(.system(size: 15, weight: .bold))
                    .foregroundColor(.red.opacity(0.3))
                
                
                
            }
            .frame(width: 35, height: 35)
            .overlay(
            
            Circle()
                .stroke(Color("DarkPurple"))
                .shadow(color: .black.opacity(0.5), radius: 5, x: 5, y: 5)
                .clipShape(Circle())
                .shadow(color: .black.opacity(0.5), radius: 5, x: -5, y: -5)
                .clipShape(Circle())
            
            )
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
            .offset(x: -30, y: -30)
            
            
            
            
            
            StandView()
            
            
            
            
            
        }
        .frame(width: 1000, height: 700)
    }
}

struct StandView : View{
    
    var body: some View{
        
        
        ZStack{
            
            
            RoundedRectangle(cornerRadius: 15)
                .fill(Color("Stand"))
                .frame(width: 230, height: 300)
                .overlay(
                
                
                RoundedRectangle(cornerRadius: 2)
                    .fill(
                    LinearGradient(colors: [
                    
                        Color.white.opacity(0.8)
                    
                    
                    ] + Array(repeating: Color("Stand"), count: 5), startPoint: .top, endPoint: .bottom)
                    
                    )
                ,alignment: .top
                
                
                
                )
            
            
                .overlay(
                
                
                RoundedRectangle(cornerRadius: 2)
                    .fill(
                    LinearGradient(colors: [
                    
                      Color("Stand"),
                      .white.opacity(0.3),
                      .white.opacity(0.4),
                      .white.opacity(0.7),
                        
                    
                    
                    ] , startPoint: .top, endPoint: .bottom)
                    
                    )
                ,alignment: .bottom
                
                
                
                )
            
            ZStack{
                
                
                Capsule()
                    .fill(Color("Purple"))
                
                CodeView()
                    
            }
            .frame(width: 50, height: 90)
            .offset(y: -35)
            
            
             BottomStand()
                .offset(y: 160)
            
            
            
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .offset(y: 150)
    }
}


struct BottomStand : View{
    
    var body: some View{
        
        ZStack(alignment:.bottom){
            
            HStack{
                
                
                RoundedRectangle(cornerRadius: 3)
                    .fill(Color("Logo"))
                    .frame(width: 30, height: 3)
                    .offset(y: 2)
                
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 3)
                    .fill(Color("Logo"))
                    .frame(width: 30, height: 3)
                    .offset(y: 2)
                
                
                
                
                
            }
            .padding(.horizontal,5)
            
            ZStack{
                
                RoundedRectangle(cornerRadius: 2)
                    .fill(Color("Stand"))
                    .shadow(color: .black.opacity(0.1), radius: -5, x: 0, y: -5)
                
                
                Rectangle()
                    .fill(
                    
                        LinearGradient(colors: getRadi(), startPoint: .leading, endPoint: .trailing)
                    
                    )
                
                
                
                
            }
        }
        .frame(width: 230, height: 20)
    }
    
    func getRadi()->[Color]{
        
        
        let stand = Array(repeating: Color("Stand"), count: 15)
    
        let colos : [Color] = [
        
            .white.opacity(0.1),
            .white.opacity(0.2)
        ]
        
        let gradient = colos + stand +  colos.reversed()
        
        
        return gradient
    
    
    }
}

struct CodeView : View{
    
    var body: some View{
        
        
        ZStack{
            
            
            Circle()
                .stroke(.black.opacity(0.5))
            
            ZStack{
                
                Circle()
                
                
                Circle()
                    .fill(
                    
                    
                        LinearGradient(colors: [
                        
                            .white.opacity(0.6),
                            .gray,
                            .black.opacity(0.1)
                        
                        
                        
                        ], startPoint: .top, endPoint: .bottom)
                    )
                    .padding(.bottom,1)
                    .offset(y: 1)
                
                
                ZStack{
                    
                    
                    Circle()
                        .stroke(Color.white.opacity(0.5),lineWidth: 1.5)
                    Circle()
                        .stroke(Color.black.opacity(0.9),lineWidth: 1)
                    
                    
                    Circle()
                        .fill(
                        
                            
                            LinearGradient(colors: [
                                
                                .black,
                                .black.opacity(0.8),
                                .black.opacity(0.2)
                                
                                
                                
                            ], startPoint: .top, endPoint: .bottom)
                        )
                        .padding(6)
                    
                    
                    ZStack{
                        
                        Circle()
                            .fill(.gray.opacity(0.5))
                        
                        Rectangle()
                            .fill(.gray.opacity(0.8))
                            .frame(width: 1, height: 2)
                            .offset(x: -3.5, y: -0.5)
                        
                        
                        Spacer()
                        
                        
                        Rectangle()
                            .fill(.gray.opacity(0.8))
                            .frame(width: 1, height: 2)
                            .offset(x: 3.5, y: -0.5)
                        
                        
                        
                        
                    }
                    
                    
                    
                }
                
                
            }
            .frame(width: 20, height: 20)
            
            
            Circle()
                .stroke(
                LinearGradient(colors: [
                    
                    .white.opacity(0.7),
                    .gray,
                    .black.opacity(0.5)
                
                
                
                
                ], startPoint: .top, endPoint: .bottom),lineWidth: 3
                
                
                )
                .frame(width: 25, height: 25)
            
            
            
            
            
        }
        .frame(width: 30, height: 30)
    }
}

struct TypeC : View{
    
    var thunderbolt : Bool = false
    
    var body: some View{
        
        VStack(spacing:15){
            
            Image("thunderbolt")
                .resizable()
                .renderingMode(.template)
                .frame(width: 8, height: 8)
                .foregroundColor(.primary)
                .opacity(thunderbolt ? 1 : 0)
            
            
            ZStack{
                
                
                Capsule()
                    .fill(.black.opacity(0.6))
                    .frame(width: 5, height: 20)
                
                Capsule()
                    .fill(Color("Stand"))
                    .frame(width: 2, height: 13)
                    .overlay(
                    
                        VStack{
                        
                        
                        Capsule()
                            .fill(Color("Logo"))
                            .frame(width: 2, height: 2)
                        
                        Spacer()
                        
                        Capsule()
                            .fill(Color("Logo"))
                            .frame(width: 2, height: 2)
                    }
                    
                    )
                
                
                
                
            }
            
            
            
            
        }
    }
    
}
