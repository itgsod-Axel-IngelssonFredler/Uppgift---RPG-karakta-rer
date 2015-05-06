def create_character(first_name:, last_name:, klass:, hitpoints:, weapon:)
  hash = {first_name:first_name, last_name:last_name, klass:klass, hitpoints:hitpoints, weapon:weapon}
  return hash
end


def describe_character(character:)
puts "#{character[:first_name]} #{character[:last_name]} the #{character[:klass]} wields a #{character[:weapon]}"
  return character
end

def hit_character(character:, damage:)
  character[:hitpoints] -= damage
  return character
end

ezekyle_abaddon = create_character(first_name:"Ezekyle", last_name:"Abaddon", klass:"Chaos Warmaster", hitpoints:500, weapon:"chaos bolter")
puts describe_character(character:ezekyle_abaddon)
puts hit_character(character:ezekyle_abaddon, damage:32)