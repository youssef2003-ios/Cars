import SwiftUI

struct SettingView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                GroupBox {
                    
                    HStack {
                        
                        Text("cars".uppercased())
                            .font(.title3)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Image (systemName: "info.circle")
                            .font(.title)
                        
                    }// FHStack
                    
                    Divider()
                    
                    HStack {
                        
                        Image("icon")
                            .resizable()
                            .frame(width: 80, height: 80, alignment: .center)
                        
                        
                        Text("Cars app includes very important information about the luxury cars, it has deatails about the history, differnt models")
                        
                    }// SHStack
                    
                    
                }// Group Box
                
                
                // Check Box
                Toggle(isOn: $isOnboarding) {
                   
                    if isOnboarding {
                        
                        Text("RESTARTED")
                            .font(.title)
                            .foregroundStyle(.green)
                    } else {
                        Text("RESTART")
                            .font(.title)
                            .foregroundStyle(.gray)
                    }
                    
                }
                .padding()
                .background(.ultraThinMaterial)
                .cornerRadius(10)
                
                Spacer()
                
            }// VStack Main
            
            .navigationTitle("Settings")
            .navigationBarItems(trailing: Button(action: {
                // Dismiss Action
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark.circle")
                    .font(.title2)
            }))
            
            
        }// NavigationView
        
        
    }
}

#Preview {
    SettingView()
}



