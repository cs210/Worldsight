// Tutorial used:
// https://stackabuse.com/executing-shell-commands-with-node-js/

const {spawn} = require('promisify-child-process')


async function photogrammetry(inputDir, outputDir, graphDir) {
   var shellCommand = '../meshroom/fast_pg.sh ' + inputDir + ' ' + outputDir + ' ' + graphDir;
   pg = spawn(shellCommand, {
       shell: true,
       stdio: 'inherit'
   });

   await pg;
   return;
}

module.exports = photogrammetry;

// var meshname = 'clorox';
// var inputDir =  `pg-inputs/${meshname}`;
// var outputDir =  `pg-outputs/${meshname}`;
//photogrammetry('pg-inputs/clorox_backup', 'pg-outputs/clorox_backup', 'pg-graphs/clorox_backup').catch();
