require "appium_lib"

def caps
  { caps: {
    # deviceName pode ter qualqur nome no Android
    deviceName: "Android_Teste",
    # platFormName, utilizar o nome da plataforma testada (Android ou IoS)
    platformName: "Android",
    # Pegando o apk na pasta raiz support
    app: (File.join(File.dirname(__FILE__), "PreciseUnitConversion.apk")),
    appPackage: "com.ba.universalconverter",
    appActivity: "MainConverterActivity",
    # Tempo necessario para utilizar em debug
    newCommandTimeout: "3600",
  } }
end

# enviando os capabilities para o Appium
Appium::Driver.new(caps, true)
# Faz todos os metodos da Appium_lib disponiveis dentro das steps_definitions
Appium.promote_appium_methods Object

# Resolver problema de conexão do driver do appium com o aparelho

# In order to resolve the following error  kindly follow the steps:
# 1. install eventmachine using the command
#  gem install eventmachine --platform ruby
# 2. Once installed, verify that it is present in the list of gems using the command
# gems list
# 3. Even after this step if the error persists kindly use the below steps:
# (i)go to this folder C:\Ruby24-x64\lib\ruby\gems\2.4.0\gems\eventmachine-1.2.5-x64-mingw32\lib
# (ii)open this file eventmachine.rb
# (iii)write this
# require 'em/pure_ruby'
# in the first line of code in the file