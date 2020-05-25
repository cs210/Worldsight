// Tutorial used:
// https://stackabuse.com/executing-shell-commands-with-node-js/

const { spawn } = require("child_process");

var meshname = 'clorox';
var inputDir =  `pg-inputs/${meshname}`;
var outputDir =  `pg-outputs/${meshname}`;

var command = '../meshroom/fast_pg.sh ' + inputDir + ' ' + outputDir;
console.log(command);
const ls = spawn(command, {
  shell: true
});

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
