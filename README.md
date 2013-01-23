piglatin
========

This gem translates and reverse translates between english and pig latin per the below behavior:

ex:
  PigLatin.translate "Hello world" => "ello-Hay orld-way"
  PigLatin.revert "ello-Hay orld-way" => "Hello world"

To translate a word into Pig Latin, take the initial consonant sound, remove it and place it at the end with an "ay", e.g.
  skate => ate-skay

If the word starts with a vowel sound, simply append "way" to the end of the word, e.g.
  awesome => awesome-way


Since when given a Pig Latin word that ends in '-way', reverse translation cannot discern whether the original English word started with a vowel or a 'w', the gem will throw an error in such scenarios.

