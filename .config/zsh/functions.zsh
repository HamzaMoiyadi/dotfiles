# Functions that I can call from the zsh shell. 

# Display a color map with values that can be used in shell prompts for pretty colors
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}
