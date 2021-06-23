import { defineConfig } from 'vite'
const { resolve } = require('path')

// https://vitejs.dev/config/
export default defineConfig({
  build: {
    rollupOptions: {
      input: {
        index: resolve(__dirname, 'index.html'),
        unauthorized: resolve(__dirname, 'unauthorized-user/index.html')
      }
    },
  }
})
