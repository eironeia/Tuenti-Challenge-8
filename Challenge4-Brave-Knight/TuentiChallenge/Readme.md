<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">

    <link rel="icon" href="/favicon.ico" type="image/x-icon">

    <link rel="stylesheet" href="/resources/normalize.css?v=3">
    <link rel="stylesheet" href="/resources/contest.css?v=3">

    <script type="text/javascript" src="/resources/widgets.js?v=2"></script>
    <script type="text/javascript" src="/resources/jquery-2.1.3.min.js?v=2"></script>
    <script type="text/javascript" src="/resources/lodash.min.js?v=2"></script>
    <script type="text/javascript" src="/resources/countdown.js?v=2"></script>

    <title>Tuenti Challenge 8</title>
</head>

<body>
<header>
    <div class="grid">
        <h1 class="logo h-left"><a href="/">Tuenti Challenge 8</a></h1>
        <nav class="h-right desktop-nav">
            <ul>
                <li class="none"><a href="/">Home</a></li>
                <li class="none"><a href="/Info/about">Info</a></li>
                <li class="active"><a href="/Challenges">Challenges</a></li>
                <li class="none"><a href="/Info/past">Past editions</a></li>
                                <li class="none"><a href="/Stats">Ranking</a></li>
                                            </ul>
        </nav>
    </div>
    <nav class="mobile-nav">
        <ul>
            <li class="none"><a href="/">Home</a></li>
            <li class="none"><a href="/Info/about">Info</a></li>
            <li class="active"><a href="/Challenges">Challenges</a></li>
            <li class="none"><a href="/Info/past">Past editions</a></li>
                        <li class="none"><a href="/Stats">Ranking</a></li>
                                </ul>
    </nav>
</header>
<div class="content">
<div class="grid">
<div class="problem">

<div class="problem-section">
	<nav class="h-right" style="padding-top: 0;">
					<a href="/Challenges?id=2"><span>« Prev</span></a>
						<a href="/Challenges?id=4"><span>Next »</span></a>
				</nav>
	<h2><strong>Challenge 3</strong> - Scales</h2>
	</h2>
	<style>
    sup {
        vertical-align: super;
        font-size: smaller;
    }
</style>

<p>Studying music theory seemed like a good idea at first.</p>

<p>Full of energy, you started reading a bit about notes and, without realizing it, ended up with your head full of chord progressions and modulations.<p>

<p>Before going crazy, you decide to go back to the beginning and study properly this time. Let's go back to the basics:<p>
<ul>
<li>For our purposes, there are 7 natural notes: <b>C</b> (Do), <b>D</b> (Re), <b>E</b> (Mi), <b>F</b> (Fa), <b>G</b> (Sol), <b>A</b> (La) and <b>B</b> (Si).</li>
<li>Each note represents a pitch. It might suprise you, but the difference in pitch between consecutive notes is not a constant, but a proportion, and the proportion is not always the same!</li>
<li>In particular: <b>C</b>-<b>D</b>, <b>D</b>-<b>E</b>, <b>F</b>-<b>G</b>, <b>G</b>-<b>A</b> and <b>A</b>-<b>B</b> are all a whole step apart, while <b>E</b>-<b>F</b> and <b>B</b>-<b>C</b> are only a half-step apart.</li>
<li>The note after <b>B</b> in the sequence is called <b>C</b> again, even though it's higher than the first <b>C</b> (its frequency is double, to be exact), and the sequence starts again.</li>
</ul>

<p>You can clearly see the separation between notes if you look at a piano:</p>
<p>
	<img style="display: block; margin: 40px auto" src="resources/img/pianokeys.png" alt="Piano keys"/>
</p>

<p>Natural notes are not everything, though! A natural note can be lowered or raised by a half-step. These are the black keys that you can see in the image above (notice there are only black keys between notes that are a whole step apart):</p>
<ul>
<li>A natural note raised by half-step becomes a sharp (<b>#</b>).</li>
<li>A natural note lowered by half-step becomes a flat (<b>b</b>).</li>
</ul>

<p>So, <b>C</b> raised a half-step becomes <b>C#</b> and <b>G</b> lowered half-step becomes <b>Gb</b>. This is where things start to get confusing:<p>
<ul>
<li>What about <b>Cb</b>? <b>Cb</b> is <b>C</b> lowered a half-step but, as you learned before, <b>B</b>-<b>C</b> are half-step apart. This means that <b>Cb</b> and <b>B</b> are the same note!</li>
<li>What about <b>F#</b>? <b>F#</b> is <b>F</b> raised a half-step and <b>F</b>-<b>G</b> are a whole step apart, which means that <b>F#</b> and <b>Gb</b> are really the same note!</li>
</ul>

<p>OK, this was easy enough, so let's continue. We listed the natural notes as <b>C</b>,<b>D</b>,<b>E</b>,<b>F</b>,<b>G</b>,<b>A</b> and <b>B</b>. A set of 7 notes ordered by pitch that repeats each octave, like this one, is called a heptatonic scale. There are many different kinds of scales and variants thereof, so let's focus on the simplest ones: the major and natural minor scales.</p>

<ul>
<li>Both major and natural minor scales are heptatonic scales. They have seven pitches (notes) per octave.</li>
<li>The scale is named after the first note (root or tonic) in an octave.</li>
<li>The notes in a major scale follow the pattern WWHWWWH (W = whole step, H = half-step).</li>
<li>The notes in a natural minor scale follow the pattern WHWWHWW.</li>
</ul>

<p>So, going back to <b>C</b>,<b>D</b>,<b>E</b>,<b>F</b>,<b>G</b>,<b>A</b>,<b>B</b>, we can see that it is the scale of <i>C major</i>:</p>
<ul>
<li>The root is <b>C</b>.</li>
<li>If you look closely, it follows the pattern WWHWWWH (<b>C</b>-<b>D</b> is a W, <b>D</b>-<b>E</b> is a W, <b>E</b>-<b>F</b> is a H, ... , <b>B</b>-<b>C</b> is an H)</li>
<li>Notice that, since <b>B#</b> and <b>C</b> represent the same pitch, <i>B# major</i> and <i>C major</i> also represent the same scale.</li>
</ul>

<p>Let's look at a natural minor scale too, for instance <i>G minor</i>: <b>G</b>, <b>A</b>, <b>Bb</b>, <b>C</b>, <b>D</b>, <b>Eb</b>, <b>F</b>
<ul>
<li>The root is <b>G</b>.</li>
<li>It follows the pattern WHWWHWW (<b>G</b>-<b>A</b> is a W, <b>A</b>-<b>Bb</b> is an H, <b>Bb</b>-<b>C</b> is a W, ... , <b>F</b>-<b>G</b> is a W)</li>
</ul>

<p>In summary, there can be a major and natural minor scale for every tonic, and some of them are equivalent to each other. To make matters more complicated, major and minor scales can also have the same set of notes!</p>

<p> Let's take <i>C major</i> and <i>A minor</i> for example:
<ul>
<li>As we've already seen, <i>C major</i> is <b>C</b>,<b>D</b>,<b>E</b>,<b>F</b>,<b>G</b>,<b>A</b>,<b>B</b></li>
<li>What about <i>A minor</i>? If you take a moment to build the scale, it ends up as <b>A</b>,<b>B</b>,<b>C</b>,<b>D</b>,<b>E</b>,<b>F</b>,<b>G</b></li>
<li>Both scales have the same notes, even though they start with a different tonic! We call these relative scales.</li>
<li>As you might have already guessed, every major scale has a relative minor counterpart (and viceversa).</li>
</ul>

<p>Pieces of music are usually written following a scale and the scale becomes the key of the piece. For example, this little tune is in <i>C major</i>: <b>C</b>, <b>C</b>, <b>G</b>, <b>G</b>, <b>A</b>, <b>A</b>, <b>G</b>. But as you saw before, it could also be in <i>A minor</i>. In fact, if the only information we have about the piece is those three notes, there are a lot of keys that might fit: <i>A# major</i>, <i>E minor</i> and many more. Pieces of music usually aren't that simple, but for this problem we'll assume only the notes in the scale of the key are used.</p>

<p>That was quite a lot to take in. Before rushing to the next chapter and making the same mistake again, you decide to do some self-study and become familiar with these basic scales. Basically, you'll calculate the possible keys for a given musical piece.</p>

<h3>Input</h3>
<p>The first line will contain an integer <b>C</b>, the number of cases for the problem.<br>
Each case starts with a line with an integer <b>N</b>, which is the number of notes. If <b>N</b> is not zero a line follows with <b>N</b> strings, each indicating a note.</p>

<h3>Output</h3>
<p>For each case, there should be a line starting with "Case #x: " followed by a space separated list of all the keys that fit. A key is written as the tonic, preceded by an M (major) or an m (minor). The keys should be sorted alphabetically. Major keys go before minor keys and sharps go after their respective naturals. Equivalent scales that map to the same key should only be printed once. The scale with a natural tonic should be printed if it exists (<i>MC</i> instead of <i>MB#</i>), otherwise the one with a sharp tonic (mF# instead of mGb) should be printed. This means no keys with a flat tonic should be output. Remember that relative scales are <i>not</i> equivalent and thus do not map to the same key. If no key fits the piece the string "None" should be printed. Every line is followed by a new line character.</p>

<h3>Examples</h3>

<table style="width:100%"><tr>
<td><pre>Case 1:

7
C C G G A A G
<td><pre>Case 2:

9
E D# E D# E B D C A
</pre></td>
<td><pre>Case 3:

22
E D# E F# G# G# F# G# A A G# C# B A G# D# E F# G# G# F# E 
</pre></td>
<td><pre>Case 4:

1
Fb
</pre></td>
<td><pre>Case 5:

0
</pre></td>
</tr></table>

<p>
The answer for Case 1: MA# MC MF MG mA mD mE mG. You might recognize this tune as Twinkle Twinkle Little Star.<br>
The answer for Case 2: None. If you recognize the piece you might think that it is in A minor, however with the available information and our basic knowledge of the theory it can't be confirmed.<br>
The answer for Case 3: ME mC#. In case you were wondering, it's melody of the first five bars of Étude Op. 10, No. 3 by Chopin.<br>
The answer for Case 4: MA MB MC MD ME MF MG mA mB mC# mD mE mF# mG#. Basically, all the keys contaning the <b>Fb</b> note (which is equivalent to <b>E</b>).<br>
The answer for Case 5 is a list of all the keys.<br>
</p>

<h3>Limits</h3>

<ul>
<li>0 &#x2264 <b>N</b> &#x2264 1000</li>
</ul>

<h3>Sample Input</h3>

<pre>6
7
C C G G A A G
9
E D# E D# E B D C A
22
E D# E F# G# G# F# G# A A G# C# B A G# D# E F# G# G# F# E 
1
E
1
Fb
0
</pre>

<h3>Sample Output</h3>

<pre>Case #1: MA# MC MF MG mA mD mE mG
Case #2: None
Case #3: ME mC#
Case #4: MA MB MC MD ME MF MG mA mB mC# mD mE mF# mG#
Case #5: MA MB MC MD ME MF MG mA mB mC# mD mE mF# mG#
Case #6: MA MA# MB MC MC# MD MD# ME MF MF# MG MG# mA mA# mB mC mC# mD mD# mE mF mF# mG mG#
</pre>


</div>

<div class="problem-section">
	<h2>Test your code</h2>
	<p>You can test your program against both the input provided in
	the test phase and the input provided in the submit phase. A nice
	output will tell you if your program got the right solution or
	not. You can try as many times as you want to. Be careful with
	extra whitespaces, the output should be exactly as described.</p>

	<h3>Test your program against the input provided in the test phase</h3>
	<div class="group">
		<div id="form-test-error" class="error hide"></div>
		<div id="form-test-output" class="hide"><div class="submit-feedback"></div></div>
		<form id="form-test" name="form-test" action="/Solver/test" method="post" enctype="multipart/form-data">
			<input type="hidden" name="token" value="CHALLENGE_3" />
			<p><a href="/Solver/testInput?token=CHALLENGE_3" class="icon-download">Download test input</a></p>
			<p>Program output:</p>
			<p><input type="file" name="output" id="output" /></p>
			<p><button>Submit test output</button></p>
		</form>
	</div>

	<h3>Test your program against the input provided in the submit phase</h3>
	<div class="group">
		<a href="/Solver/testInput?token=CHALLENGE_SUBMIT_3" class="icon-download">Download input</a>
		<div id="form-submit-error" class="error hide"></div>
		<div id="form-submit-output" class="hide"><div class="submit-feedback"></div></div>
		<form id="form-submit" name="form-submit" action="/Solver/test" method="post" enctype="multipart/form-data">
			<input type="hidden" name="token" value="CHALLENGE_SUBMIT_3" />
			<p>Program output:</p>
			<p><input type="file" name="output" id="output" /></p>
			<p><button>Submit output</button></p>
		</form>
	</div>
	<script>
	$(function () {
		var formatOutput = function (text) {
			return text.trim().split('\n').map(function (line) {
				var klass = '';
				if (line.match(/^Line\s+\d+\s+\[WRONG\]/)) {
					klass = ' class="feedback-line-error"';
				} else if (line.match(/^Line\s+\d+\s+\[OK!\]/)) {
					klass = ' class="feedback-line-ok"';
				}
				return '<div' + klass + '>' + $('<div />').text(line).html() + '</div>';
			}).concat('\n');
		};
		['test', 'submit'].forEach(function(type) {
			$('#form-' + type).on('submit', function(e) {
				e.preventDefault();
				var formData = new FormData($('#form-' + type)[0]);
				var error = function(content) {
					var $error = $('#form-' + type + '-error');
					$error.html(content);
					$error.removeClass('hide');
				};
				$.ajax("/Solver/test", {
					type: 'post',
					data: formData,
					processData: false,
					contentType: false,
					dataType: 'json'
				}).done(function(data) {
					$('#form-' + type + '-error').addClass('hide');
					if (data.error) {
						if (!data.content && !data.output) {
							location.reload();
						}
						if (data.content) {
							error(data.content);
						}
						if (data.output) {
							$('#form-' + type + '-output .submit-feedback').html(formatOutput(data.output));
							$output = $('#form-' + type + '-output');
							$output.removeClass('hide');
							$output.removeClass('success');
							$output.addClass('error');
						} else {
							$('#form-' + type + '-output').addClass('hide');
						}
					} else {
						if (data.output) {
							$('#form-' + type + '-output .submit-feedback').html(formatOutput(data.output));
							$output = $('#form-' + type + '-output');
							$output.removeClass('hide');
							$output.removeClass('error');
							$output.addClass('success');
						} else {
							$('#form-' + type + '-output').addClass('hide');
						}
					}
				}).fail(function() {
					error("Error uploading test output. Please try again");
				});
				return false;
			});
		});
	});
	</script>
	<p>During the submit phase, in some problems, we might give your program harder inputs. As with the test token,
	a nice output will tell you if your program got the right solution or not. You can try as
	many times as you need.</p>

	<p>In the actual contest you first need to solve the test phase before submitting the code, you must provide
	the source code used to solve the challenge and you can only submit once (once your solution is submitted you won't be able to amend it to fix issues
	or make it faster). </p>

	<p>If you have any doubts, please check the <a href="/Info/about">info section</a>.</p>
	<nav class="h-right" style="padding-top: 0;">
					<a href="/Challenges?id=2"><span>« Prev</span></a>
						<a href="/Challenges?id=4"><span>Next »</span></a>
				</nav>
</div>

</div>
</div>
</div>
<div class="footer-decorations no-mobile">
    <div class="circle" style="width: 245px; height: 245px; top: 15px; left: calc(50% - 122px);"></div>
    <img style="position: absolute; bottom:-8px; left:80px" src="/resources/pyramids.svg" width="138px" />
</div>
<footer>
    <div class="circle no-mobile" style="width: 22px; height: 22px; top: 15px; left: 208px;"></div>
    <div class="circle no-mobile" style="width: 42px; height: 42px; top: -21px; left: 246px;"></div>
    <div class="circle no-mobile" style="width: 42px; height: 42px; top: -21px; right: 216px;"></div>
    <div class="grid" style="padding: 0 8px 0 16px">
        <div class="row"><p><img src="/resources/tuenti-logo.svg" alt="tuenti logo" width="110" /></p></div>
        <div class="row no-mobile"><p>&nbsp;</p></div>
        <div class="row">
            <p class="h-left">Tweet about this!</p>
            <p class="h-right">Follow</p>
        </div>
        <div class="row">
            <p class="h-left"><a href="http://twitter.com/intent/tweet?text=%23TuentiChallenge8" target="_blank">#TuentiChallenge8</a></p>
            <p class="h-right">
                <a href="https://twitter.com/Tuentieng" class="twitter-follow-button" data-show-count="false" data-lang="es" data-show-screen-name="false" data-dnt="true" target="_blank">@TuentiEng</a>
            </p>
        </div>
        <div class="row no-mobile"><p>&nbsp;</p></div>
        <div class="row">
            <p class="h-left">&copy; Tuenti 2018</p>
        </div>
    </div>
</footer>

<script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-40515046-1']);
    _gaq.push(['_trackPageview']);
    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
</script>

</body>
</html>

