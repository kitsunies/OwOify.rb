Smileys = [';;w;;', '^w^', '>w<', 'UwU', '(・`ω´・)', '(´・ω・`)']
Subs = {
    'l' => 'w', 
    'r' => 'w',
    'L' => 'W', 
    'R' => 'W',
    '?' => '? owo',
    '!' => '! ' + Smileys.sample,
    '.' => '. ' + Smileys.sample,
}

module OwOify
    def OwOify.owoify(text)
        text.gsub(/(?=[nN])([aeiouAEIOU])/, (('\2' == '\2'.upcase) ? 'Y' : 'y') + '\2').gsub!(/./) { | v | Subs[v] ? Subs[v] : v }
    end
end
