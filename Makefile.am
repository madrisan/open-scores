## Process this file with automake to produce Makefile.in

## Copyright (c) 2022 Davide Madrisan <d.madrisan@proton.me>
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

AM_MAKEFLAGS = --no-print-directory

SUBDIRS = lyinit \
	  src

check-local: all

## Build only the scores changed since BASE (default: origin/main), committed
## or not, as listed by ci/changed-scores.sh; for instance:
##   make changed
##   make changed BASE=HEAD~3
## Changes to the build system build everything; documentation changes nothing.
BASE = origin/main

changed:
	@targets=`cd $(top_srcdir) && ci/changed-scores.sh $(BASE)` || exit 1; \
	if test "$$targets" = all; then \
	  echo "The build system changed since $(BASE): building everything."; \
	  $(MAKE) $(AM_MAKEFLAGS) all; \
	elif test -z "$$targets"; then \
	  echo "No score changed since $(BASE): nothing to build."; \
	else \
	  for dir in $$targets; do \
	    echo "Building $$dir..."; \
	    $(MAKE) $(AM_MAKEFLAGS) -C $$dir || exit 1; \
	  done; \
	fi

.PHONY: changed
