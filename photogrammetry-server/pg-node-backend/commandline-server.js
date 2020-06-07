// Tutorial used:
// https://stackabuse.com/executing-shell-commands-with-node-js/

//const { spawn } = require("child_process");
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
   });

   await pg;
  //
  // var stepOne = `../meshroom/meshroom_photogrammetry --input ../pg-node-backend/${inputDir} --output ../pg-node-backend/${outputDir} --save ../pg-node-backend/${graphDir}/temp_fast.mg --forceStatus`
  // pg = spawn(stepOne, {
  //     shell: true,
  //     stdio: 'ignore'
  // });
  // await pg;
  // console.log("Step one finished.");
  //
  //
  // var modify = `python ../meshroom/modify_graph.py --inputDir ../pg-node-backend/${graphDir} --f True`
  // pg = spawn(modify, {
  //     shell: true,
  //     stdio: 'ignore'
  // });
  // await pg;
  // console.log("Modifying graph finished.");
  //
  //
  // console.log("Beginning pipeline....");
  // var stepTwo = `../meshroom/meshroom_photogrammetry --input ../pg-node-backend/${inputDir} --output ../pg-node-backend/${outputDir} --pipeline ../pg-node-backend/${graphDir}/updated_fast.mg --forceStatus --forceCompute`
  // // ../meshroom/meshroom_photogrammetry --input ../pg-node-backend/pg-inputs/5ed10da7bf3ff04a39cb2901 --output ../pg-node-backend/pg-outputs/5ed10da7bf3ff04a39cb2901 --pipeline ../pg-node-backend/pg-graphs/5ed10da7bf3ff04a39cb2901/updated_fast.mg --forceStatus --forceCompute
  // pg = spawn(stepTwo, {
  //     shell: true,
  //     stdio: 'inherit'
  //     //stdio: ['ignore', 'pipe', 'pipe']
  // });
  // await pg;
  // // res = await Promise.all([
  // //   readUntilClose(pg.stdout, process.stdout.write.bind(process.stdout)),
  // //   readUntilClose(pg.stderr, process.stderr.write.bind(process.stderr)),
  // //   onExit(pg)
  // // ]);
  // console.log("Step two finished.");
  //
  //
  // var obj2gltf = `../meshroom/obj2gltf -i ../pg-node-backend/${outputDir}/texturedMesh.obj -o ../pg-node-backend/${outputDir}/texturedMesh.glb`

  // const [stdout, stderr] = await Promise.all([
  //   // Setup event promises first
  //   readableToString(pg.stdout),
  //   readableToString(pg.stderr),
  //   onExit(pg),
  // ]);
  return;

  //await echoReadable(pg.stdout);
  // pg.on('exit', function (code, signal) {
  //   console.log('child process exited with ' +
  //               `code ${code} and signal ${signal}`);
  // });

  // wait until exit AND all output is flushed
  // await Promise.all([
  //   readUntilClose(pg.stdout, process.stdout.write.bind(process.stdout)),
  //   readUntilClose(pg.stderr, process.stderr.write.bind(process.stderr)),
  //   onExit(pg)
  // ]);

  // let data = "";
  // for await (const chunk of pg.stdout) {
  //     console.log('stdout chunk: '+chunk);
  //     data += chunk;
  // }
  //
  // let error = "";
  // for await (const chunk of pg.stderr) {
  //     console.error('stderr chunk: '+chunk);
  //     error += chunk;
  // }
  //
  // const exitCode = await new Promise( (resolve, reject) => {
  //     pg.on('close', resolve);
  // });
  // if(exitCode) {
  //     throw new Error( `subprocess error exit ${exitCode}, ${error}`);
  // }
  // return [data, exitCode];

  //
  // pg.stdout.on("data", data => {
  //   console.log(`stdout: ${data}`);
  // });
  //
  // pg.stderr.on("data", data => {
  //   console.log(`stderr: ${data}`);
  // });
  //
  // // pg.stderr.pipe(process.stderr);
  // // pg.stdout.pipe(process.stdout);
  //
  // pg.on('error', (error) => {
  //   console.log(`error: ${error.message}`);
  // })
  //
  // pg.on('close', code => {
  //   console.log(`child process exited with code ${code}`);
  // })
  //
  // pg.on('exit', code => {
  //   console.log(`child process exited with code ${code}`);
  // })


  //return;
}

module.exports = photogrammetry;

//photogrammetry('pg-inputs/clorox_backup', 'pg-outputs/clorox_backup', 'pg-graphs/clorox_backup').catch();
