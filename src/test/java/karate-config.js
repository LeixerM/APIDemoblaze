function fn() {
    var config = {
        baseUrl: 'https://api.demoblaze.com'
    };

    // Tiempo de espera para evitar flakiness
    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);

    return config;
}