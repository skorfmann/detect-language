#Detect Language
This little library can be trained to detect different languages by dropping arbitary text files in the corresponding languages into the "lang" directory.

The actual language detection is performed by the "babel" gem, which is based on the n-gram approach by Cavnar and Trenkle.

## Quickstart

```bash
git clone https://github.com/skorfmann/detect-language.git
cd detect-language
bundle install
bundle exec rspec
./bin/detect-language ./lang/gaelic.1
=> detected language: gaelic
```


## Detect language of a file
Use one of the training files for example:

```bash
bin/detect-language ./lang/german.1
=> detected language: german
```

## Run the specs

```bash
bundle exec rspec
```