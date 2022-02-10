sass_dir = sample-sass
css_dir = output-css

compile: $(css_dir)/colors.css $(css_dir)/layout.css
	@echo "Re-compiled sass files to css successfully!"

$(css_dir)/colors.css: $(sass_dir)/colors.scss
	sass $(sass_dir)/colors.scss $(css_dir)/colors.css

$(css_dir)/layout.css: $(sass_dir)/layout.scss
	sass $(sass_dir)/layout.scss $(css_dir)/layout.css