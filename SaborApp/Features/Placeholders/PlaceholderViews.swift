import SwiftUI

// Pantallas mínimas para que el proyecto compile; reemplazar por el diseño final.
struct OrdersView: View {
    var body: some View {
        SaborScreen { Text("Mis pedidos").font(.title2.bold()); Text("Aún no tienes pedidos.").foregroundStyle(.secondary) }
    }
}

struct ProfileView: View {
    var body: some View {
        SaborScreen { Text("Perfil").font(.title2.bold()); Text("Configura tu cuenta aquí.").foregroundStyle(.secondary) }
    }
}

struct NotificationsView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack {
            Text("No tienes notificaciones.").foregroundStyle(.secondary)
                .navigationTitle("Notificaciones")
                .toolbar { Button("Cerrar") { dismiss() } }
        }
    }
}
