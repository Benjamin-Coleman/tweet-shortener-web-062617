require 'pry'

def dictionary
   dictionary = {
     "hello" => "hi",
     "two" => "2",
     "too" => "2",
     "to" => "2",
     "four" => "4",
     "for" => "4",
     "be" => "b",
     "you" => "u",
     "at" => "@",
     "and" => "&"
   }
end

def word_substituter(string)
  result = string.split(" ").map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
result.join(" ")
end

def bulk_tweet_shortener(array)
  array.each { |tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    return tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140
    return selective_tweet_shortener(tweet)[0..136] + "..."
  else
    return selective_tweet_shortener(tweet)
  end
end
