require('dotenv').config()
var nodemailer = require('nodemailer');
const MESH_PAGE_URL = "http://mesh-works.io/mesh/"

var transport = nodemailer.createTransport({
    server: 'gmail',
    host: 'smtp.gmail.com',
    auth: {
	user: 'worldsightvr@gmail.com',
	pass: process.env.GMAIL_PW
    }
});


async function sendConfirmationEmail(email, itemName) {
    // Send email to email address,
    // saying that the {itemName} mesh have been uploaded to server
    // for conversion.
    var mailOptions = {
	from: 'worldsightvr@gmail.com',
	to: email,
	subject: 'Your item is being processed',
	html:"<p>" + itemName + " is being uploaded to server for conversion </p>"
    };
    transport.sendMail(mailOptions, (error, info) => {
	if (error) {
	    return console.log(error);
	}
	console.log('Email sent: ' + info.response);
    });
  return; // TODO: Implement.
}

async function sendMeshCompleteEmail(email, itemID, itemName) {
    // Send email to email address,
    // saying that the {itemName} mesh hae been meshified and
    // viewable at the link: http://mesh-works.io/mesh/{itemID}
    var mailOptions = {
        from: 'worldsightvr@gmail.com',
        to: email,
        subject: 'Your mesh is ready!',
        html: "<div><p>" + itemName + " has been meshified and is viewable at the link: </p><a href=" + MESH_PAGE_URL + itemID + ">Your mesh</a></div>"               
    };
    transport.sendMail(mailOptions, (error, info) => {
        if (error) {
            return console.log(error);
        }
        console.log('Email sent: ' + info.response);
    });
  return; // TODO: Implement.
}

module.exports = {
  sendConfirmationEmail: sendConfirmationEmail,
  sendMeshCompleteEmail: sendMeshCompleteEmail
};
