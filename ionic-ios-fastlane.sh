export PATH="$PATH:/usr/local/bin"
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

#move to Ionice dir
cd Ionic
#install packages
npm install && bower install
#reset the ionic platform for build
ionic state reset
#Generate resources, such as splash screen, launch icon
ionic resources 
ionic platform update ios 
#compile the SCSS 
gulp sass 
#Ionic build
ionic build ios
security list-keychain 
#security unlock-keychain -u  "/Library/Keychains/System.keychain" 

security unlock-keychain -p <PASSWORD_HERE> "/Users/<USER>/Library/Keychains/<KEYCHAIN>.keychain"
cd platforms/ios/
xcrun xcodebuild -list
cd .. && cd ..
#Drive in fastlane 
fastlane beta