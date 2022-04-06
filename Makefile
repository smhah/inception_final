NAME		= inception

all: 		$(NAME)

$(NAME):
			docker-compose -f srcs/docker-compose.yaml up  --build

clean:		
			sh /home/smhah/Desktop/dir00/srcs/requirements/tools/remove_images.sh

fclean:
			sh /home/smhah/Desktop/dir00/srcs/requirements/tools/kill_all_containers.sh #; sh /home/smhah/Desktop/dir00/srcs/requirements/tools/remove_images.sh

re:			fclean all