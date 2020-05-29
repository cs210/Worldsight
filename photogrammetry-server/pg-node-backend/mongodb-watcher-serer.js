
const { MongoClient } = require('mongodb');
const uri = "mongodb+srv://admin:admin@worldsightcluster-8oyjy.mongodb.net/test?retryWrites=true&w=majority";

async function main() {
    /**
     * The Mongo Client you will use to interact with your database
     * See https://mongodb.github.io/node-mongodb-native/3.3/api/MongoClient.html for more details
     */
    const client = new MongoClient(uri,{ useUnifiedTopology: true });

    try {
        // Connect to the MongoDB cluster
        await client.connect();

        // Make the appropriate DB calls
	await findOneListingByName(client, "if u dont work i will be sad");

    } catch (e) {
        console.error(e);
    } finally {
        // Close the connection to the MongoDB cluster
        await client.close();
    }
}

main().catch(console.error);

async function findOneListingByName(client, nameOfListing) {
    const cursor = await client.db("test").collection("items")
	  .find()
	  .sort({createdAt:1})
	  .limit(1);
    
    const results = await cursor.toArray()
    if (results.length > 0) {
        console.log(`Oldest photogrammetry request:`);
	results.forEach((result, i) => {
            console.log(`${result.name}`);
            console.log(`${result.createdAt}`);
        });
    } else {
        console.log(`No photogrammetry requests found`);
    }
}
