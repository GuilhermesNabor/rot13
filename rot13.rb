def rot13(text)
    encrypted_text = ""
    text.each_char do |char|
      if char =~ /[A-Za-z]/
        offset = 13
        base = char =~ /[a-z]/ ? 'a'.ord : 'A'.ord
        encrypted_char = ((char.ord - base + offset) % 26 + base).chr
        encrypted_text += encrypted_char
      else
        encrypted_text += char
      end
    end
    encrypted_text
  end
  
  def decrypt_rot13(text)
    rot13(text)
  end
  
  puts "\n 1 - Criptografar\n 2 - Descriptografar\n"
  print "\n Opção: "
  escolha = gets.chomp
  
  if escolha == "1"
    print "\n Digite o texto para criptografar: "
    texto_criptografado = gets.chomp
    texto_descriptografado = decrypt_rot13(texto_criptografado)
    puts "\n Texto criptografado: #{texto_descriptografado}"
  elsif escolha == "2"
    print "\n Digite o texto a ser descriptografado: "
    texto = gets.chomp
    texto_criptografado = rot13(texto)
    puts "\n Texto descriptografado: #{texto_criptografado} \n"
  else
    puts "\n Erro!! \n"
  end
  