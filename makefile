clean:
	cd examples; make clean
	@echo
	cd exercises; make clean

config:
	git config -l

init:
	touch README
	git init
	git add README
	git commit -m 'first commit'
	git remote add origin git@github.com:gpdowning/ooplsarc.git
	git push -u origin master

pull:
	@rsync -r -t -u -v --delete             \
    --include "Hello.c++"                   \
    --include "Assertions.c++"              \
    --include "UnitTests1.c++"              \
    --include "UnitTests2.c++"              \
    --include "UnitTests3.c++"              \
    --include "Coverage1.c++"               \
    --include "Coverage2.c++"               \
    --include "Coverage3.c++"               \
    --include "Exceptions.c++"              \
    --include "Exceptions2.c++"             \
    --include "Exceptions3.c++"             \
    --include "Variables.c++"               \
    --include "Arguments.c++"               \
    --include "Returns.c++"                 \
    --include "Cache.c++"                   \
    --include "Types.c++"                   \
    --include "Representations.c++"         \
    --include "Operators.c++"               \
    --include "StackVsHeap.c++"             \
    --include "Valgrind.c++"                \
    --include "Iterators.c++"               \
    --include "Selection.c++"               \
    --include "Iteration.c++"               \
    --include "Lambdas.c++"                 \
    --exclude "*"                           \
    ../../examples/c++/ examples
	@rsync -r -t -u -v --delete             \
    --include "IsPrime1.c++"                \
    --include "IsPrime1.h"                  \
    --include "StrCmp.c++"                  \
    --include "StrCmp.h"                    \
    --include "Incr.c++"                    \
    --include "Incr.h"                      \
    --include "Equal.c++"                   \
    --include "Equal.h"                     \
    --include "Copy.c++"                    \
    --include "Copy.h"                      \
    --include "Fill.c++"                    \
    --include "Fill.h"                      \
    --include "AllOf.c++"                   \
    --include "Accumulate.c++"              \
    --include "Transform.c++"               \
    --include "RangeIterator.c++"           \
    --include "Range.c++"                   \
    --exclude "*"                           \
    ../../exercises/c++/ exercises

push:
	make clean
	@echo
	git add .travis.yml
	git add examples
	git add exercises
	git add makefile
	git commit -m "another commit"
	git push
	git status

status:
	make clean
	@echo
	git branch
	git remote -v
	git status

testx:
	cd examples; make testx
	@echo
	cd exercises; make testx

testy:
	cd examples; make testy
	@echo
	cd exercises; make testy

testz:
	cd examples; make testz
	@echo
	cd exercises; make testz
