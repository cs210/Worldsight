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
	subject: 'Meshworks: Your Item, ' + itemName + ', Is Being Processed.',
	html:"<div>We've just confirmed that your item, " + itemName + ", have successfully been uploaded to our server for conversion. </div>"
  + "<div> It's currently being converted to a 3D mesh, and we'll let you know again in a few minutes when the mesh is ready. </div>"
  + "<div> Thanks for your patience! </div>"
    };
    transport.sendMail(mailOptions, (error, info) => {
	if (error) {
	    return console.log(error);
	}
	console.log('Email sent: ' + info.response);
    });
  return;
}

async function sendMeshCompleteEmail(email, itemID, itemName) {
    // Send email to email address,
    // saying that the {itemName} mesh hae been meshified and
    // viewable at the link: http://mesh-works.io/mesh/{itemID}
    var mailOptions = {
        from: 'worldsightvr@gmail.com',
        to: email,
        subject: 'Meshworks: Your Mesh Is Ready!',
        html: "<div>Congrats! Your Item, " + itemName + ", has been successfully meshified. </div>"
        + "<div><a href=" + MESH_PAGE_URL + itemID + ">Here</a> is the link to your mesh.</div>"
    };
    transport.sendMail(mailOptions, (error, info) => {
        if (error) {
            return console.log(error);
        }
        console.log('Email sent: ' + info.response);
    });
  return;
}

module.exports = {
  sendConfirmationEmail: sendConfirmationEmail,
  sendMeshCompleteEmail: sendMeshCompleteEmail
};
