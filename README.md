# Dictionary

### Description

Using Ruby Hash and Set Data structure, user can add words, definition, and synonyms.

### Installation Instructions

1. `git clone https://github.com/idannyou/Dictionary.git`.
2. Adding definitions and synonyms is done in `input.txt`.
3. `ruby main.rb` to run commands in `input.txt`.

### Commands

Commands are as follows:

  `addWord:word:definition` - adds/replaces 'definition' to 'word' <br />
  `addSynonym:word:synonym` - adds 'synonym' to the 'word' <br />
  `lookupSynonyms:word` - look up synonyms for the 'word' <br />
  `lookupWord:word` - look up definition for the 'word' <br />


### Example

In `input.txt`

`addWord:swag:money or good taken by a thief or burglar
addSynonym:goods:swag
addSynonym:goods:valuables
lookupSynonyms:valuables
lookupSynonyms:swag
lookupSynonyms:goods
lookupWord:swag`
