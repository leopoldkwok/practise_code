// use Grunt’s built-in file tools to copy individual files,

module.exports = function(grunt) {
	grunt.config.init({
		copyFiles:{
			options: {
				workingDirectory: 'working',
				manifest:[
					'index.html', 'stylesheets/style.css', 'javascripts/app.js'
				]

			}
		}
	});

	grunt.registerTask('createFolder', 'Create the working folder', function() {
		grunt.config.requires('copyFiles.options.workingDirectory');

		//  use grunt.config.get to fetch the value out of the object and use it to create the folder, using the same dot notation.
		grunt.file.mkdir(grunt.config.get('copyFiles.options.workingDirectory'));
	});

	grunt.registerTask('clean', 'Deletes the working folder and its contents', function() {
		grunt.config.requires('copyFiles.options.workingDirectory');

		grunt.file.delete(grunt.config.get('copyFiles.options.workingDirectory'));
	});

	grunt.registerTask('copyFiles', function() {
		var files, workingDirectory;

		grunt.config.requires('copyFiles.options.manifest');
		grunt.config.requires('copyFiles.options.workingDirectory');

		files = grunt.config.get('copyFiles.options.manifest');
		workingDirectory = grunt.config.get('copyFiles.options.workingDirectory');

		files.forEach(function(file) {
			var destination = workingDirectory + '/' + file;
			grunt.log.writeln('Copying ' + file + ' to ' + destination);
			grunt.file.copy(file, destination);
		});
	});


	// task that runs the clean, createFolder and copyFiles tasks
	grunt.registerTask('deploy', 'Deploys files',
		['clean', 'createFolder', 'copyFiles']);
}