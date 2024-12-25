import SwiftUI

struct ModelView: View {
    
    var car: Car
    
    var body: some View {
    
        GroupBox{
            
            DisclosureGroup("Car Models") {
            
                ForEach(0 ..< 7) { item in
                    
                    Divider()
                    
                    HStack{
                        
                        Image(systemName: "car")
                            .foregroundColor (car.gradientColors[0])
                        Text("Model \(item + 1)")
                            .fontWeight(.bold)
                            .foregroundColor (car.gradientColors[0])
                        
                        Spacer()
                        
                        Text(car.models[item])
                        
                    }// HStack
                    
                }
                
            } //DisclosureGroup
            .foregroundStyle(car.gradientColors[0])
            .padding(.vertical, 2)
            
        }// GroupBox
        
        
    }
}

#Preview {
    ModelView(car: carData[1])
}
