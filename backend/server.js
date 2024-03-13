const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.json());

const loginRoute = require('./login');
const signupRoute = require('./signup'); 

app.use('/api/login', loginRoute);
app.use('/api/signup', signupRoute); // Use correct route path

app.use((err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send('Internal Server Error');
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
