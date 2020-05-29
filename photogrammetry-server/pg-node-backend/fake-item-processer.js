

// Assume that the database watcher had just been notified of
// this new item instance.
var newItem = {
  _id: '5ebd896a0ee70a5e206a5c89',
  email: 'worldsightvr@gmail.com',
  name: 'cool clorox bottle',
  photoUrls: [
    'https://meshworks.s3.amazonaws.com/clorox/97333016_557248961650348_8815498040933613568_n.jpg',
    'https://meshworks.s3.amazonaws.com/clorox/97407064_660372021209747_8449038816919945216_n.jpg',
    'https://meshworks.s3.amazonaws.com/clorox/97902479_278726879952377_8049927993096667136_n.jpg',
    'https://meshworks.s3.amazonaws.com/clorox/97993121_727700384437032_242760042720264192_n.jpg',
    'https://meshworks.s3.amazonaws.com/clorox/98036732_542008479782556_4833738103963254784_n.jpg',
    'https://meshworks.s3.amazonaws.com/clorox/98164692_240939607178262_5818214169496780800_n.jpg',
    'https://meshworks.s3.amazonaws.com/clorox/98285805_551592892457608_1911400501308555264_n.jpg',
    'https://meshworks.s3.amazonaws.com/clorox/98355192_529712984576915_1233255960185667584_n.jpg',
    'https://meshworks.s3.amazonaws.com/clorox/98365393_555592518449718_7431077811957268480_n.jpg',
    'https://meshworks.s3.amazonaws.com/clorox/98599519_3109674759148718_4358407867087192064_n.jpg',
    'https://meshworks.s3.amazonaws.com/clorox/99013469_321143228874301_9017702537133817856_n.jpg',
    'https://meshworks.s3.amazonaws.com/clorox/99263610_557197458315075_1444162408019918848_n.jpg',
    'https://meshworks.s3.amazonaws.com/clorox/99291052_1497911670378584_451549063087652864_n.jpg',
    'https://meshworks.s3.amazonaws.com/clorox/99293132_2957132214322044_7888102168073338880_n.jpg',
    'https://meshworks.s3.amazonaws.com/clorox/99299186_2554025708191765_585378775152197632_n.jpg',
  ],
  videoUrl: '',
  meshUrl: '',
  tags: ['clorox', 'bottle', 'small'],
  updatedAt: '2020-05-14T18:09:46.938+00:00',
  createdAt: '2020-05-14T18:09:46.938+00:00',
  __v: 0,
}

// Check item is valid (includes photoURLs, etc)

// create directory in ./pg_inputs named newItem._id

// download the images from newItem.photoURLs

// RUN PG. convert to mesh (output in pg_outputs)

// upload mesh to S3, then update the meshURL field of this item in db

// send completion email with mesh-works.io/mesh/{newItem._id} as link

// delete downloaded directory in pg_inputs
