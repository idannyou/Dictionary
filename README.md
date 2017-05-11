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

Commands in `input.txt`:

`addWord:swag:money or good taken by a thief or burglar`<br />
`addSynonym:goods:swag`<br />
`addSynonym:goods:valuables`<br />
`lookupSynonyms:valuables`<br />
`lookupSynonyms:swag`<br />
`lookupSynonyms:goods`<br />
`lookupWord:swag`<br />

`@dictionary` instance generated by the sample `input.txt` above:

```ruby
{
  "swag" =>
    {
      :definition => "money or good taken by a thief or burglar", :synonyms => #<Set: {"goods", "swag", "valuables"}>
    },
    "goods" =>
      {
        :definition=>"",
        :synonyms=>#<Set: {"goods", "swag", "valuables"}>
      },
  "valuables" =>
    {
      :definition=>"",
      :synonyms=>#<Set: {"goods", "swag", "valuables"}>
    }
}
```
