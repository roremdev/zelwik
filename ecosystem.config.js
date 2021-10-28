module.exports = {
    apps: [
        {
            name: 'zelwik',
            script: 'node ./dist/index.js',
            env_production: {
                PORT: 8080,
                NODE_ENV: 'production',
            },
        },
    ],
};
