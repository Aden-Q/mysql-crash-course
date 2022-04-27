-- Chapter 18 Full Text Searching

-- full text searching
SELECT note_text
FROM productnotes
WHERE Match(note_text) Against('rabbit');

SELECT note_text
FROM productnotes
WHERE note_text LIKE '%rabbit%';

-- query expansion
SELECT note_text
FROM productnotes
WHERE Match(note_text) Against('rabbit' WITH QUERY EXPANSION);