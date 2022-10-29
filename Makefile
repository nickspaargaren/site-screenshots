build:
	@docker build -t site-screenshots .

run:
	@docker container run --rm -v ~/screenshots:/usr/src/app/screenshots site-screenshots
	@cp ~/screenshots/* screenshots
