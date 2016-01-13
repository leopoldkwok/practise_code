// use Grunt’s built-in file tools to copy individual files,

module.exports = function(grunt) {
	grunt.config.init({
		pkg: grunt.file.readJSON('package.json'), // reads JSON data from a file and parses it into a JavaScript object
		copyFiles:{
			options: {
				workingDirectory: 'working',
				manifest:[ //specifies folders
					'index.html', 'stylesheets/', 'javascripts/'
				]

			}
		}
	});

	var recursiveCopy = function(source, destination) {
		// grunt.file.isDir to detect whether the source element is a file or a directory.
		if(grunt.file.isDir(source)) {

			grunt.file.recurse(source, function(file) {
				recursiveCopy(file, destination);
			});

		} else {
			grunt.log.writeln('Copying ' + source + ' to ' + destination);
			grunt.file.copy(source, destination + '/' + source);
		}
	}

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

		files.forEach(function(item) {
			recursiveCopy(item, workingDirectory);

		var content = '<%=pkg.name %> version <%= pkg.version %>';
		content = grunt.template.process(content);
		grunt.file.write(workingDirectory + '/version.txt', content);
		});
	});


	// task that runs the clean, createFolder and copyFiles tasks
	grunt.registerTask('deploy', 'Deploys files',
		['clean', 'createFolder', 'copyFiles']);
}