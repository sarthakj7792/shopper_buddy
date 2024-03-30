const jwt = require('jsonwebtoken');
const auth = async (req, res, next) => {
    try {
        const token = req.header("x-auth-token");
        if (!token) return res.status(401).json({ msg: "No authentication token, authorization denied" });

        //Verify the token
        const verifiedToken = jwt.verify(token, 'passwordKey');
        if (!verifiedToken) return res.status(401).json({ msg: "Token verification failed, authorization denied" });
        req.user = verifiedToken.id;
        req.token = token;
        next();
    } catch (e) {
        res.status(500).json({ error: e.message });
    }
}

module.exports = auth;