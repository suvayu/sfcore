# compiler options
CC           	:= $(shell which gcc)
CXX 		:= $(shell which g++)

CXXSTD		:= -std=c++11
OPTS		:= -g -Wall -m64 $(CXXSTD)

CXXFLAGS  	:= $(OPTS) -pthread -fPIC
LDFLAGS 	:= $(OPTS) -shared

# colours
CLEAR		= \033[0m
ifndef NOCOLOUR
GREEN		= \033[1;32m
RED		= \033[1;31m
else
GREEN		= $(CLEAR)
RED		= $(CLEAR)
endif

# test decorators
TEST_RUN_HEADER := echo -e "$(GREEN)Test$(CLEAR):"
TEST_RUN_FILTER := sed -e $$'s%error\|failed\|aborted%$(RED)&$(CLEAR)%g'
