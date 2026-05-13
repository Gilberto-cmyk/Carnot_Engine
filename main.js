const { app, BrowserWindow } = require('electron');
const path = require('path');

function createWindow() {
    // Configuración de la ventana nativa de Windows
    const win = new BrowserWindow({
        width: 1250,
        height: 850,
        title: "Carnot Engine Pro - BAG TEAM",
        // Aquí vinculamos el logo que descargaste
        icon: path.join(__dirname, 'icon.ico'), 
        autoHideMenuBar: true, // Para que se vea como app y no como navegador
        webPreferences: {
            nodeIntegration: true,
            contextIsolation: false
        }
    });

    // Carga tu simulador térmico
    win.loadFile('index.html');
}

// Inicialización de la aplicación
app.whenReady().then(createWindow);

// Cerrar la app cuando todas las ventanas se cierren
app.on('window-all-closed', () => {
    if (process.platform !== 'darwin') {
        app.quit();
    }
});