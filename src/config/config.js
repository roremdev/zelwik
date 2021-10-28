if (process.env.NODE_ENV !== 'production')
    require('dotenv').config({ path: './src/config/.env' });


export default {
    port: process.env.PORT || 8080,
    mode: process.env.MODE || process.env.NODE_ENV,
};
