module.exports = function(grunt) {

	grunt.loadNpmTasks('grunt-contrib-coffee');
	grunt.config('coffee', {
		app: {
			options: {
				bare: false
			},
			files: {
				'tmp/compiled.js': ['coffeescript/app.coffee',
									'coffeescript/factories/*.coffee',
									'coffeescript/controllers/*.coffee']
			}
		}
	});

	grunt.loadNpmTasks('grunt-contrib-concat');
	grunt.config('concat', {
		scripts: {
			src: ['bower_components/angular/angular.js',
				  'bower_components/angular-sanitize/angular-sanitize.js',
				  'bower_components/markdown/dist/markdown.js',
				  'tmp/compiled.js'],
			dest: 'tmp/app.js'
		}
	});

	grunt.loadNpmTasks('grunt-contrib-uglify');
	grunt.config('uglify', {
		scripts: {
			files: {
				'assets/app.js' : 'tmp/app.js' // destination and source
			}
		}
	});

	grunt.loadNpmTasks('grunt-contrib-sass');
	grunt.config('sass', {
		app: {
			files: {
				'tmp/app.css': ['sass/style.scss']
			}
		}
	});

};