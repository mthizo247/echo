package com.github.mthizo247.echo;

import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpHandler;
import com.sun.net.httpserver.HttpServer;

import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.util.Random;

public class HelloHttpServer {

    public static void main(String[] args) throws IOException {
        int port = 8086;

        HttpServer server = HttpServer.create(new InetSocketAddress(port), 0);

        server.createContext("/", new HelloHandler());
        server.setExecutor(null); // default executor
        server.start();

        System.out.println("Server started on http://localhost:" + port);
    }

    static class HelloHandler implements HttpHandler {
        @Override
        public void handle(HttpExchange exchange) throws IOException {
            String response = "Hello, World " + new Random().nextInt(1000);
            exchange.sendResponseHeaders(200, response.length());

            try (OutputStream os = exchange.getResponseBody()) {
                os.write(response.getBytes());
            }
        }
    }
}

