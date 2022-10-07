import SwiftUI

struct ContentView: View {
    
    @State var iValue: Double = 0.3
    
    var body: some View {
        VStack {
            Form {
                Section("Linear") {
                    Gauge(value: iValue) {
                        Text("\(Int(iValue*100)) %")
                    }
                    
                    Gauge(value: iValue) {
                        Text("arriba \(Int(iValue*100)) %")
                    } currentValueLabel: {
                        Text("abajo \(Int(iValue*100)) %")
                    }
                    .tint(.green)
                    
                    Gauge(value: iValue) {
                        Text("Barra")
                    } currentValueLabel: {
                        Text("\(Int(iValue*100)) %")
                    }
                    .gaugeStyle(.accessoryLinear)
                    .tint(.red)
                    
                    Gauge(value: iValue) {
                        Text("\(Int(iValue*100)) %")
                    }
                    .gaugeStyle(.accessoryLinearCapacity)
                    .tint(.purple)
                }
                
                Section("Circular") {
                    HStack {
                        Gauge(value: iValue) {
                            Text("\(Int(iValue*100))%")
                        }
                        .gaugeStyle(.accessoryCircularCapacity)
                        .tint(.red)
                        
                        Gauge(value: iValue) {
                            Text("\(Int(iValue*100))%")
                        }
                        .gaugeStyle(.accessoryCircular)
                        .tint(.red)
                        
                        Gauge(value: iValue) {
                            Text("\(Int(iValue*100))%")
                        }currentValueLabel: {
                            Text("\(Int(iValue*100))%")
                        }
                        .gaugeStyle(.accessoryCircular)
                        .tint(.red)
                    }
                    
                    HStack {
                        Gauge(value: iValue) {
                            Image(systemName: "touchid", variableValue: iValue)
                        }
                        .gaugeStyle(.accessoryCircularCapacity)
                        .tint(.purple)
                        
                        Gauge(value: iValue) {
                            Image(systemName: "wifi", variableValue: iValue)
                        }
                        .gaugeStyle(.accessoryCircularCapacity)
                        .tint(.purple)
                        
                        Gauge(value: iValue) {
                            Text("Wifi")
                        } currentValueLabel: {
                            Image(systemName: "wifi", variableValue: iValue)
                        }
                        .gaugeStyle(.accessoryCircular)
                        .tint(.cyan)
                    }
                    
                }
            }
            
            Slider(value: $iValue)
                .padding(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
