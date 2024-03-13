const User = require('./user');

// Signup route handler
const signup = async (req, res) => {
    const { name, email, phoneNumber, Password } = req.body;

    try {
        const newUser = await User.create({
            name, // Ensure name is provided
            email,
            phoneNumber, // Ensure phoneNumber is provided
            Password,
        });

        // User created successfully
        res.status(201).json(newUser);
    } catch (error) {
        // Error handling
        console.error('Error creating user:', error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
};

module.exports = signup;
