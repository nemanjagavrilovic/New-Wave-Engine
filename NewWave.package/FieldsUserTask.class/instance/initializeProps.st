initialization
initializeProps

| p1 p2 |

p1 := FormProperty new.
p1 name: 'firstName'.
p1 type: 'string'.
p1 variable: 'Pera'.

p2 := FormProperty new.
p2 name: 'lastName'.
p2 type: 'string'.
p2 variable: 'Peric'.

formProperties add: p1.
formProperties add: p2.

