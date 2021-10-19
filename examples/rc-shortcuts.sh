# Set variables in *this* shell instance only
## Sets the EDITOR variable for commands in the terminal that use a text editor
EDITOR=/usr/bin/vim

## Sets the EDITOR variable for *all* shell instances that fork from this one
export EDITOR=/usr/bin/vim

## Modify Path and ensure PATH modification gets exported to other processes
export PATH="$PATH:/some/other/path/to/add"

## PS1 variable is the variable that can customize your shell output

# Aliases
## Always make ls colorful!
alias ls='ls --color=auto'
## Make la shorthand for ls -A, and ll shorthand for ls -lA
alias la='ls -A'
alias ll='ls -lA'
## I always type 'pyton' instead of 'python', so might as well fix it preemptively!
alias pyton='python'


# Will an alias not quite cut it? Shell functions it is!
function mcdir() {
    mkdir "$@"
    cd "$@"
}

# Handy Shell Colors Function
colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}
