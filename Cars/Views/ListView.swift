import SwiftUI

struct ListView: View {
    
    @State var isSettingVeiwPresented: Bool = false
    
    var body: some View {
        
        NavigationView{
            
            List{
                
                ForEach(carData) { item in
                    
                    NavigationLink(destination: DetailedView(car: item)) {
                        
                        CellView(car: item)
                            .padding(.vertical, 4)
                        
                    } // NavigationLink
                }
                
            } // list
            .navigationTitle("Cars")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing: Button(action: {
                // Action
                isSettingVeiwPresented = true
            }, label: {
                
                Image (systemName: "slider.horizontal.3")
                
            }))
            .sheet(isPresented: $isSettingVeiwPresented) {
                SettingView()
            }
            
            
        } // NavigationView
        
        // iPad
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

#Preview {
    ListView()
}
