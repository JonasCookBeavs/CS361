count = 0 # set the initial count of vowels to zero
string1 = "fqidijads" # the first string
string1.each_char do |c| # check each character
  if c == 'a' or c == 'e' or c == 'i' or c == 'o' or c == 'u' # big long if statement
    count += 1 # increase the count
  end # end the if statement
end # end the each statement
puts count # print the count of all the vowels
count = 0 # reset the count of all vowels
string2 = "i loooooooooooooooooooooooooove vowels!" # the second string
string1 <<= string2 # concatonate the second string to the first
string1.each_char do |c| # check each character
  if c == 'a' or c == 'e' or c == 'i' or c == 'o' or c == 'u' # big long if statement
    count += 1 # increase the count
  end # end the if statement
end # end the each statement
puts count # print the count of all the vowels
count = 0 # reset the count of all vowels
string1.each_char do |c| # check each character
  if c == 'a' or c == 'e' or c == 'i' or c == 'o' or c == 'u' # big long if statement
    string1[c] = ''  # print each character
  end # end the if statement
end # end the each statement
string1.each_char do |c| # check each character
  if c == 'a' or c == 'e' or c == 'i' or c == 'o' or c == 'u' # big long if statement
    count += 1 # increase the count
  end # end the if statement
end # end the each statement
puts count # print the count of all the vowels
count = 0 # reset the count of all vowels
string3 = "Somebody once told me the world is gonna roll me
I ain't the sharpest tool in the shed
She was looking kind of dumb with her finger and her thumb
In the shape of an L on her forehead
Well, the years start comin' and they don't stop comin'
Fed to the rules and I hit the ground runnin'
Didn't make sense not to live for fun
Your brain gets smart, but your head gets dumb
So much to do, so much to see
So, what's wrong with taking the backstreets?
You'll never know if you don't go (go)
You'll never shine if you don't glow
Hey now, you're an all-star
Get your game on, go play
Hey now, you're a rock star
Get the show on, get paid
(And all that glitters is gold)
Only shootin' stars break the mold
It's a cool place, and they say it gets colder
You're bundled up now, wait 'til you get older
But the meteor men beg to differ
Judging by the hole in the satellite picture
The ice we skate is gettin' pretty thin
The water's gettin' warm, so you might as well swim
My world's on fire, how 'bout yours?
That's the way I like it, and I'll never get bored
Hey now, you're an all-star
Get your game on, go play
Hey now, you're a rock star
Get the show on, get paid
(All that glitters is gold)
Only shootin' stars break the mold
Go for the moon
(Go, go, go) go for the moon
(Go, go, go) go for the moon
Go (go), go for the moon
Hey now, you're an all-star
Get your game on, go play
Hey now, you're a rock star
Get the show on, get paid
(And all that glitters is gold)
Only shooting stars
Somebody once asked, Could I spare some change for gas?
I need to get myself away from this place
I said, Yep, what a concept, I could use a little fuel myself
And we could all use a little change
Well, the years start comin' and they don't stop comin'
Fed to the rules and I hit the ground runnin'
Didn't make sense not to live for fun
Your brain gets smart, but your head gets dumb
So much to do, so much to see
So, what's wrong with taking the backstreets?
You'll never know if you don't go (go!)
You'll never shine if you don't glow
Hey now, you're an all-star
Get your game on, go play
Hey now, you're a rock star
Get the show on, get paid
(And all that glitters is gold)
Only shootin' stars break the mold
Only shootin' stars break the mold
Go for the moon
Go for the moon
Go for the moon
This is how we do it" # the third string
string1 <<= string3 # concatonate the third string to the first
string1.each_char do |c| # check each character
  if c == 'a' or c == 'e' or c == 'i' or c == 'o' or c == 'u' # big long if statement
    count += 1 # increase the count
  end # end the if statement
end # end the each statement
puts count # print the count of all the vowels
count = 0 # reset the count of all vowels
string1.each_char do |c| # check each character
  if c == 'a' or c == 'e' or c == 'i' or c == 'o' or c == 'u' # big long if statement
    string1[c] = ''  # remove each vowel
  end # end the if statement
end # end the each statement
string1.each_char do |c| # check each character
  if c == 'a' or c == 'e' or c == 'i' or c == 'o' or c == 'u' # big long if statement
    count += 1 # increase the count
  end # end the if statement
end # end the each statement
puts count # print the count of all the vowels