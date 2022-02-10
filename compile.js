const { exec } = require("child_process");
const { logErrorConsole, logInfoConsole } = require("./logger");

compileScript = "";
if (process.platform === "linux" || process.platform === "darwin") {
  compileScript = "./make-gen.sh > Makefile";
} else if (process.platform === "win32") {
  logErrorConsole("Script hasn't been written for windows as of now!\
                  Convert sass files to css manually!");
  return;
} else {
  logErrorConsole("Script hasn't been written for your system as of now!\
                  Convert sass files to css manually!");
  return;
}


exec(compileScript, (error, stdout, stderr) => {
  if (error) {
    logErrorConsole(`error code: ${error.code}`);
    logErrorConsole(`error: ${error.message}`);
    return;
  }
  if (stderr) {
    logErrorConsole(`stderr: ${stderr}`);
    return;
  }
  logInfoConsole(`stdout: ${stdout}`);
});
