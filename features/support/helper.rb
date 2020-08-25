module Helper
  
    def tira_foto(file_name, resultado)
      data = Time.now.strftime('%F').to_s
      h_m_s = Time.now.strftime('%H%M%S%p').to_s
      caminho = "reports/screenshot/#{resultado}/#{data}"
      foto = "#{caminho}/#{h_m_s}_#{file_name}.png"
      page.save_screenshot(foto)
      embed(foto, 'image/png', 'Evidência(Screenshot)')
    end

  end 