<!DOCTYPE html>

<body>

<h2><strong>Challenge 4</strong> - Brave Knight</h2>

<p>The princess is lost in a dangerous place. The only mission the brave knight has been preparing himself for all his life is to safe her.<p>

<p>The terrain is represented by a grid of squares. The material of each square can be ground, trampoline or lava. Only lava squares (represented by the character '<b>#</b>') are considered invalid, the rest are valid squares.</p>

<p>The brave knight moves through the map in 'L'-shaped jumps like a chess knight. It can move to a square that is two squares away horizontally and one square vertically, or two squares vertically and one square horizontally. He can jump over any square but he cannot land in an invalid square or outside the terrain.</p>

<p>From ground squares (represented by the character '<b>.</b>') the knight moves as described above. But from trampoline squares (represented by the character '<b>*</b>') the knight does an super powered double jump that is four squares horizontally and two squares vertically, or four squares vertically and two squares horizontally.</p>

<p>The knight located on square <b>S</b> must rescue the princess located on square <b>P</b> and take her to the safe destination square <b>D</b> (<b>S</b>, <b>P</b> and <b>D</b> are ground squares).</p>

<h3>Input</h3>
<p>The first line has an integer <b>C</b>, which is the number of cases for the problem.<br>
Each case has a line with 2 integers separated by a space, <b>N</b> and <b>M</b>, that represent the dimensions of the map.<br>
<b>N</b> lines follow, each one containing <b>M</b> characters that represent the squares of the map.</p>

<h3>Output</h3>
<p>For each case, there should be a line starting with "Case #x: " followed by the minimum number of jumps the knight has to make to rescue the princess and take her to the safe place. If there is no way, the output should be IMPOSSIBLE.</p>

<h3>Limits</h3>
<ul>
<li>1 &#x2264 <b>C</b> &#x2264 100</li>
<li>2 &#x2264 <b>N</b>, <b>M</b> &#x2264 1000</li>
</ul>

<h3>Examples</h3>

<table style="width:100%"><tr>
<td><pre>Case 1:

4 5
P#.S#
.#...
#.#..
.D..#


<td><pre>Case 2:

4 5
.#.D#
.#...
#S#.#
.P..#


</pre></td>
<td><pre>Case 3:

6 6
S#....
##*..D
......
######
......
P.....
</pre></td>
</table>

<p>In Case 1 the knight could follow this path: [<b>S</b>] (0,3) -> (2,4) -> (1,2) -> [<b>P</b>] (0,0) -> (1,2) -> [<b>D</b>] (3, 1) So the minimum number of jumps is 5.<br>
In Case 2 there is no way to reach D square.<br>
In Case 3 there is a double jump square so the knight will travel this path: [<b>S</b>] (0,0) -> (1,2) -> [<b>P</b>] (5,0) -> (4,2) -> (2,3) -> [<b>D</b>] (1,5) making a total of 5 jumps.</p>

<h3>Sample Input</h3>

<pre>3
4 5
P#.S#
.#...
#.#..
.D..#
4 5
.#.D#
.#...
#S#.#
.P..#
6 6
S#....
##*..D
......
######
......
P.....
</pre>

<h3>Sample Output</h3>

<pre>Case #1: 5
Case #2: IMPOSSIBLE
Case #3: 5
</pre>
</div>

