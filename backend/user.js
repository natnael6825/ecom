const { Sequelize, DataTypes } = require('sequelize');

// Initialize Sequelize with SQLite
const sequelize = new Sequelize({
    dialect: 'sqlite',
    storage: 'database.sqlite', // Path to your SQLite database file
});

// Define User model
const User = sequelize.define('User', {
    name: {
        type: Sequelize.STRING,
        allowNull: false, // Ensure name is not null
    },
    email: {
        type: Sequelize.STRING,
        allowNull: false,
    },
    phoneNumber: {
        type: Sequelize.BIGINT,
        allowNull: false, // Ensure phoneNumber is not null
    },
    Password: {
        type: Sequelize.STRING,
        allowNull: false,
    },
});

// Sync the model with the database
(async () => {
    try {
        await sequelize.authenticate();
        console.log('Connection has been established successfully.');
        await sequelize.sync(); // Sync the models with the database
        console.log('All models were synchronized successfully.');
    } catch (error) {
        console.error('Unable to connect to the database:', error);
    }
})();


module.exports = User;
