// Tutorial used:
// https://stackabuse.com/executing-shell-commands-with-node-js/

const {spawn} = require('promisify-child-process')
const {chunksToLinesAsync, chomp, StringStream, onExit, readableToString} = require('@rauschma/stringio');

var meshname = 'clorox';
var inputDir =  `pg-inputs/${meshname}`;
var outputDir =  `pg-outputs/${meshname}`;

async function readUntilClose(source, func){
  source.on('data', (data)=> {
    func(data.toString('utf8'));
  });

  await new Promise((resolve)=>{
    source.on('close', ()=>{
      source.removeAllListeners(['data']);
      resolve();
    });
  });
}

async function echoReadable(readable) {
  for await (const line of chunksToLinesAsync(readable)) { // (C)
    console.log(chomp(line))
  }
}

async function photogrammetry(inputDir, outputDir, graphDir) {

   var shellCommand = '../meshroom/fast_pg.sh ' + inputDir + ' ' + outputDir + ' ' + graphDir;
   pg = spawn(shellCommand, {
       shell: true,
       stdio: 'inherit'
       //stdio: ['ignore', 'pipe', 'pipe']
   });
   await pg;
    // res = await Promise.all([
    //   readUntilClose(pg.stdout, process.stdout.write.bind(process.stdout)),
    //   readUntilClose(pg.stderr, process.stderr.write.bind(process.stderr)),
    //   onExit(pg)
    // ]);

}

module.exports = photogrammetry;
//photogrammetry('pg-inputs/5ed10da7bf3ff04a39cb2901', 'pg-outputs/5ed10da7bf3ff04a39cb2901', 'pg-graphs/5ed10da7bf3ff04a39cb2901').catch();
