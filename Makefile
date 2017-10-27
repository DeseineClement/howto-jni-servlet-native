NAME		=	libtest.so

SRCDIR		=	./src
INCLUDEDIR	=	./include
OBJDIR		=	./.obj

SRC		=	TestJNI.cpp
OBJ		=	$(SRC:%.cpp=$(OBJDIR)/%.o)
INC		=	-I$(INCLUDEDIR) -I$(JAVA_HOME)/include -I$(JAVA_HOME)/include/linux

CC		=	g++
RM              =       rm -f
ECHO            =       printf "%-70s%s\n"

CFLAGS		:=	-W -Wall -Wextra -Werror -ansi -pedantic -std=c++11

all:		$(NAME)

$(OBJDIR)/%.o:	$(SRCDIR)/%.cpp
	@mkdir -p $(@D)
	@$(CC) $(CFLAGS) $(INC) -fPIC -D_REENTRANT -c $< -o $@
	@$(ECHO) $< "[COMPILED]"

$(NAME):	$(OBJ)
	@$(CC) -shared -o $(NAME) $(OBJ) $(LDFLAGS) $(LDLIBS)
	@$(ECHO) $(NAME) "[COMPILED]"


clean:
	-@$(RM) -rf $(OBJDIR)
	@$(ECHO) ".obj/" "[REMOVED]"
	-@$(RM) */*~ *~
	@$(ECHO) "*~ #*#" "[REMOVED]"
	-@$(RM) */\#*# \#*#

fclean:		clean
	-@$(RM) $(NAME)
	@$(ECHO) $(NAME) "[REMOVED]"

re:		fclean all

.PHONY:		all clean fclean re $(OBJDIR)/%.o
