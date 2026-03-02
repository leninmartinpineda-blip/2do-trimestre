#include <WiFi.h>
#include <ThingerESP32.h>

/* ========= THINGER.IO ========= */
#define NOMBRE DE USUARIO "Pineda"
#define ID_DEL_DISPOSITIVO "BotonT"
#define CREDENCIAL_DEL_DISPOSITIVO "123456"

/* ========= WIFI ========= */
#define SSID "honor200lite"
#define SSID_PASSWORD "cacota12345678"

/* ========= RELE ========= */
#define RELE_PIN 5 // Puedes usar GPIO5 (recomendado)

ThingerESP32 thing(NOMBRE DE USUARIO, ID_DEL_DISPOSITIVO, CREDENCIAL_DEL_DISPOSITIVO);

void setup() {
Serial.begin(115200);
delay(1000);

pinMode(RELE_PIN, SALIDA);
escritura digital (RELE_PIN, ALTA); // Relé apagado (si está activo en LOW)

cosa.add_wifi(SSID, SSID_PASSWORD);

// Control desde Thinger
thing["rele"] << digitalPin(RELE_PIN);

Serial.println("ESP32 iniciado. Controlando rele desde Thinger.io");
}

bucle vacío() {
cosa.handle();
}
