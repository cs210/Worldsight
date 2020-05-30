// Tutorial used:
// https://stackabuse.com/executing-shell-commands-with-node-js/

const { spawn } = require("child_process");

var meshname = 'clorox';
var inputDir =  `pg-inputs/${meshname}`;
var outputDir =  `pg-outputs/${meshname}`;

async function photogrammetry(inputDir, outputDir) {

  var command = '../meshroom/fast_pg.sh ' + inputDir + ' ' + outputDir;
  console.log(command);

  const pg = spawn(command, {
    shell: true
  });

  let data = "";
  for await (const chunk of pg.stdout) {
      console.log('stdout chunk: '+chunk);
      data += chunk;
  }

  let error = "";
  for await (const chunk of pg.stderr) {
      console.error('stderr chunk: '+chunk);
      error += chunk;
  }

  const exitCode = await new Promise( (resolve, reject) => {
      pg.on('close', resolve);
  });
  if(exitCode) {
      throw new Error( `subprocess error exit ${exitCode}, ${error}`);
  }

  return [data, exitCode];

/*
  ls.stdout.on("data", data => {
    console.log(`stdout: ${data}`);
  });

  ls.stderr.on("data", data => {
    console.log(`stderr: ${data}`);
  });

  ls.on('error', (error) => {
    console.log(`error: ${error.message}`);
  })

  ls.on('close', code => {
    console.log(`child process exited with code ${code}`);
  })
  */
}

module.exports = photogrammetry;

// photogrammetry(inputDir, outputDir);
