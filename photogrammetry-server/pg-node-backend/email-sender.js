const MESH_PAGE_URL = "http://mesh-works.io/mesh/"

async function sendConfirmationEmail(email, itemName) {
  // Send email to email address,
  // saying that the {itemName} mesh have been uploaded to server
  // for conversion.

  return; // TODO: Implement.
}

async function sendMeshCompleteEmail(email, itemID, itemName) {
  // Send email to email address,
  // saying that the {itemName} mesh hae been meshified and
  // viewable at the link: http://mesh-works.io/mesh/{itemID}

  return; // TODO: Implement.
}

module.exports = {
  sendConfirmationEmail: sendConfirmationEmail,
  sendMeshCompleteEmail: sendMeshCompleteEmail
};

// TODO:
// Unblock to test functionality via: node email-sender.js
// sendConfirmationEmail('worldsightvr@gmail.com', 'Test Mesh')
