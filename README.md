# WHAT IS SAMPLR? #
Samplr is a simple audio sampling application ideal for use in live performances and all manner of audio projects. Samplr allows users to play samples via keyboard or touchscreen interface, customize the sample rack and record + sample new samples for use in Samplr audio racks.

# HOW TO USE SAMPLR #

## Playing SAMPLR ##
1. Navigate to [http://samplr-app.herokuapp.com](http://samplr-app.herokuapp.com) to load Samplr
2. Use the keyboard (click `Help` to see key map) or click samples with mouse to play each sample in the main **Samplr Rack**

## Choosing New Samples ##
1. Click `Browse Sample Bank` button to open the full array of available samples
2. Clicking on each sample in the **Sample Bank** will play that sample
3. Choose the new sample you would like to use by clicking on that cell from the **Sample Bank**
4. Click on the cell you would like to replace in your main **Samplr Rack**

## Uploading New Samples ##
1. Click `Upload New Sample` button to open the **Add Sample** window
2. Give your new sample a name in the **Sample Name** field
3. Click the `Choose File` button to open the file browser
4. Select the new **.wav** or **.mp3** file you would like to upload
5. Click `Open`
6. Choose a `Category` from the dropdown list
7. Click `Create Sample` button
8. Find your new sample in the **Sample Bank** once page reloads

# HOW TO DOWNLOAD & USE THE CODE #
1. Open PostgreSQL and get it up and running
2. In Terminal run `git clone https://github.com/alexabbott/samplr.git`
3. `cd` into the cloned repository
4. Run `bundle install` to load gems
5. Run `rake db:create`
6. Run `rake db:migrate`
7. Run `rake db:seed` to load sample data
8. Open the files in your favorite text editor and go wild!
9. Run `bundle exec rspec` to run the RSpec test suite
