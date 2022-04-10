NAME		= inception

all: 		$(NAME)

$(NAME):
			docker-compose -f srcs/docker-compose.yaml up --build -d

clean:		
			docker-compose -f srcs/docker-compose.yaml down

fclean:
			docker-compose -f srcs/docker-compose.yaml down; sh /home/smhah/Desktop/dir00/srcs/requirements/tools/remove_images.sh

re:			fclean all