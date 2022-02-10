const logErrorConsole = (...params) => {
	console.error(params)
}

const logInfoConsole = (...params) => {
	console.log(params)
}

module.exports = {
	logErrorConsole,
	logInfoConsole
}