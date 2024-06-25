all:
	if [ ! -d "/Users/byeonsanghun/data" ]; then \
		mkdir -p /Users/byeonsanghun/data/wordpress; \
		mkdir -p /Users/byeonsanghun/data/mariadb; \
	fi
	docker-compose -f srcs/docker-compose.yml up -d

clean:
	docker-compose -f srcs/docker-compose.yml down

fclean:
	docker-compose -f srcs/docker-compose.yml down --volumes --rmi all
	rm -rf /Users/byeonsanghun/data

