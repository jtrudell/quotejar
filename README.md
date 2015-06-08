# QuoteJar

QuoteJar let's you easily store the cute things your kids say (or the awful things your enemies say),
including the date quoted and the age the child (or enemy) was when quoted. 

## Usage

To install from the command line: gem install 'quotejar'

Once installed, run IRB from the command line enter: require 'quotejar'
You will be prompted to enter a child's name. If you have entered information
for this childed previously, you will be prompted to enter a new quote or list
all quotes saved for that child. If the child has not been stored previously,
you will be prompted to save the child by entering the child's birthday, and
then will be able to enter new quotes.

Creating a new child will create a .yaml file to start that child's name, birthday and quotes.
Creating new entries for an existing child will update that child's .yaml file.

If you get booted out of the program during an IRB session, typing 'start' will begin QuoteJar again. 

## Features To Come

- Ability to search quotes by date or age
