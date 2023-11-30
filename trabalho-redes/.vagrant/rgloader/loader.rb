# este arquivo carrega o arquivo rgloader/loader.rb adequado que vem com o Vagrant para que os arquivos codificados possam ser executados corretamente com o Vagrant

if ENV["VAGRANT_INSTALLER_EMBEDDED_DIR"]
  require File.expand_path(
    "rgloader/loader", ENV["VAGRANT_INSTALLER_EMBEDDED_DIR"])
else
  raise "Encoded files can't be read outside of the Vagrant installer."
end
