const express = require('express');
const router = express.Router();
const Users = require('./user'); // Assuming you have a User model

router.post('/', async (req, res) => {
    const { email, password } = req.body;

    try {
        const user = await Users.findOne({ where: { email, password } });


        // If user not found or password doesn't match, return error
        if (user.password != password && user.email!= email) {
            return res.status(401).json({ message: 'Invalid email or password' });
        }

        // If user is found and password matches, generate a token (e.g., JWT)
        // Here, you would typically use a library like jsonwebtoken to generate the token

        // For now, let's just send a success message
        res.status(200).json({ message: 'Login successful' });
    } catch (error) {
        console.error('Error during login:', error);
        res.status(500).json({ message: 'Internal Server Error' });
    }
});

module.exports = router;
