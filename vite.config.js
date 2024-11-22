import react from "@vitejs/plugin-react";
import { defineConfig } from "vite";

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    host: "0.0.0.0", // Allows access from the host
    port: 5173, // Ensure it matches the exposed port
    strictPort: true, // Prevent port conflicts
    watch: {
      usePolling: true, // Enable polling for file changes
      interval: 100, // Optional: Adjust polling interval
    },
  },
});
