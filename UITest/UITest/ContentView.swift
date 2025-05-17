//
//  ContentView.swift
//  UITest
//
//  Created by Sarayu on 5/16/25.
//
import SwiftUI

//struct SimpleSettingsView: View {
//    @State private var connectWithGoogleFit = false
//
//    var body: some View {
//        NavigationStack {
//            VStack(spacing: 0) {
//                ScrollView {
//                    VStack(spacing: 20) {
//                        
//                        // Backup & Restore Section
//                        VStack(alignment: .leading, spacing: 8) {
//                            HStack {
//                                VStack(alignment: .leading) {
//                                    Text("Backup & Restore")
//                                        .font(.headline)
//                                    Text("Synchronize your data")
//                                        .font(.subheadline)
//                                        .foregroundColor(.gray)
//                                }
//                                Spacer()
//                                Image(systemName: "arrow.clockwise")
//                                    .foregroundColor(.blue)
//                            }
//                        }
//                        .padding()
//                        .background(Color(.systemGray6))
//                        .cornerRadius(10)
//
//                        // Settings Section
//                        VStack(spacing: 16) {
//                            HStack {
//                                Image(systemName: "face.smiling")
//                                    .foregroundColor(.blue)
//                                Text("My Profile")
//                                Spacer()
//                            }
//
//                            HStack {
//                                Image(systemName: "gearshape.fill")
//                                    .foregroundColor(.blue)
//                                Text("General Settings")
//                                Spacer()
//                            }
//
//                            HStack {
//                                Image(systemName: "globe")
//                                    .foregroundColor(.blue)
//                                VStack(alignment: .leading) {
//                                    Text("Language")
//                                    Text("System default")
//                                        .font(.caption)
//                                        .foregroundColor(.gray)
//                                }
//                                Spacer()
//                            }
//
//                            HStack {
//                                Image(systemName: "heart.circle.fill")
//                                    .foregroundColor(.green)
//                                Text("Connect With Google Fit")
//                                Spacer()
//                                Toggle("", isOn: $connectWithGoogleFit)
//                                    .labelsHidden()
//                            }
//                        }
//                        .padding()
//                        .background(Color(.systemGray6))
//                        .cornerRadius(10)
//
//                        // Ads & Feedback Section
//                        VStack(spacing: 16) {
//                            HStack {
//                                Image(systemName: "nosign")
//                                    .foregroundColor(.red)
//                                Text("Remove Ads")
//                                Spacer()
//                            }
//
//                            HStack {
//                                Image(systemName: "star.fill")
//                                    .foregroundColor(.yellow)
//                                Text("Rate Us")
//                                Spacer()
//                            }
//
//                            HStack {
//                                Image(systemName: "pencil")
//                                    .foregroundColor(.purple)
//                                Text("Feedback")
//                                Spacer()
//                            }
//                        }
//                        .padding()
//                        .background(Color(.systemGray6))
//                        .cornerRadius(10)
//
//                        // App Version
//                        Text("Version 1.1.4")
//                            .font(.footnote)
//                            .foregroundColor(.gray)
//                            .frame(maxWidth: .infinity, alignment: .center)
//                            .padding(.top, 20)
//                    }
//                    .padding()
//                }
//
//                // Bottom tab bar (static)
//                Divider()
//                HStack {
//                    VStack {
//                        Image(systemName: "figure.strengthtraining.traditional")
//                        Text("Training").font(.caption2)
//                    }.frame(maxWidth: .infinity)
//
//                    VStack {
//                        Image(systemName: "pencil.and.outline")
//                        Text("Custom").font(.caption2)
//                    }.frame(maxWidth: .infinity)
//
//                    VStack {
//                        Image(systemName: "square.grid.2x2.fill")
//                        Text("Exercises").font(.caption2)
//                    }.frame(maxWidth: .infinity)
//
//                    VStack {
//                        Image(systemName: "chart.bar.fill")
//                        Text("Report").font(.caption2)
//                    }.frame(maxWidth: .infinity)
//
//                    VStack {
//                        Image(systemName: "person.crop.circle.fill")
//                            .foregroundColor(.blue)
//                        Text("Me")
//                            .font(.caption2)
//                            .foregroundColor(.blue)
//                    }.frame(maxWidth: .infinity)
//                }
//                .padding(.vertical, 8)
//                .background(Color(.systemBackground))
//            }
//            .navigationTitle("ME")
//        }
//    }
//}

//#Preview
//struct SimpleSettingsView_Previews: PreviewProvider {
//    static var previews: some View {
//        SimpleSettingsView()
//    }
//}


#Preview {
    MeView()
}

import SwiftUI

struct MeView: View {
    @State private var connectWithGoogleFit = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        
                         //Backup & Restore
                        SectionBox {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Backup & Restore")
                                        .font(.headline)
                                    Text("Synchronize your data")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                                Spacer()
                                Image(systemName: "arrow.clockwise")
                                    .foregroundColor(.blue)
                            }
                        }

                        // Settings
                        SectionBox {
                            SettingsRow(icon: "face.smiling", label: "My Profile")
                            SettingsRow(icon: "gearshape.fill", label: "General Settings")
                            SettingsRow(icon: "globe", label: "Language", subtitle: "System default")
                            ToggleRow(
                                icon: "heart.circle.fill",
                                label: "Connect With Google Fit",
                                isOn: $connectWithGoogleFit
                            )
                        }

                       //  Ads, Feedback
                        SectionBox {
                            SettingsRow(icon: "nosign", label: "Remove Ads")
                            SettingsRow(icon: "star.fill", label: "Rate Us")
                            SettingsRow(icon: "pencil", label: "Feedback")
                        }

                       //  Version Info
                        Text("Version 1.1.4")
                            .font(.footnote)
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding(.top)
                    }
                    .padding()
                }

               //  Bottom Tab Bar Simulation (optional)
                Divider()
                HStack {
                    TabBarIcon(icon: "figure.strengthtraining.traditional", label: "Training")
                    TabBarIcon(icon: "pencil.and.outline", label: "Custom")
                    TabBarIcon(icon: "square.grid.2x2.fill", label: "Exercises")
                    TabBarIcon(icon: "chart.bar.fill", label: "Report")
                    TabBarIcon(icon: "person.crop.circle.fill", label: "Me", selected: true)
                }
                .padding(.horizontal)
                .padding(.bottom, 8)
            }
            .navigationTitle("ME")
        }
    }
}

// MARK: - Reusable Components

struct SectionBox<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        VStack(spacing: 12) {
            content
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
    }
}

struct SettingsRow: View {
    var icon: String
    var label: String
    var subtitle: String? = nil

    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.blue)
                .frame(width: 30)
            VStack(alignment: .leading) {
                Text(label)
                    .font(.body)
                if let subtitle = subtitle {
                    Text(subtitle)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            Spacer()
        }
    }
}

struct ToggleRow: View {
    var icon: String
    var label: String
    @Binding var isOn: Bool

    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.green)
                .frame(width: 30)
            Text(label)
                .font(.body)
            Spacer()
            Toggle("", isOn: $isOn)
                .labelsHidden()
        }
    }
}

struct TabBarIcon: View {
    var icon: String
    var label: String
    var selected: Bool = false

    var body: some View {
        VStack {
            Image(systemName: icon)
                .foregroundColor(selected ? .blue : .gray)
            Text(label)
                .font(.caption2)
                .foregroundColor(selected ? .blue : .gray)
        }
        .frame(maxWidth: .infinity)
    }
}

// MARK: - Preview
struct MeView_Previews: PreviewProvider {
    static var previews: some View {
        MeView()
    }
}



