const jwt = require('jsonwebtoken');
const User = require('../models/user');

const admin = async (req, res, next) => {
    try {
        const token = req.header('x-auth-token');
        if (!token) return res.status(401).json({ msg: 'No authentication token, authorization denied' });

        const verifiedToken = jwt.verify(token, 'passwordKey');
        if (!verifiedToken) return res.status(401).json({ msg: 'Token verification failed, authorization denied' });
        const user = await User.findById(verifiedToken.id);
        if(user.type =='user' || user.type == 'seller'){
            return res.status(401).json({ msg: 'You are not an admin' });
        }
        req.user = verifiedToken.id;
        req.token = token;
        next();
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
}

module.exports = admin;