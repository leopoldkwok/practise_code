module.exports = function(grunt) {
	// Your tasks go here
	grunt.registerTask('default', function() { // We use grunt.registerTask to create a new Grunt task.
		grunt.log.writeln('Hello from Grunt.'); // use Grunt’s grunt.log object instead. It’ll give us some flexibility because it supports error logging, warnings, and other handy features.
	});

	grunt.registerTask('greet', function(name){
		grunt.log.writeln('Hi there, ' + name);
	});

	grunt.registerTask('addNumbers', function(first, second) {
		if(isNaN(Number(first))) {
			grunt.warn('The first argument must be a number');
		}
		var answer = Number(first) + Number(second);
		grunt.log.writeln(first + ' + ' + second + ' is ' + answer);
	});

}