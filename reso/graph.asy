
unitsize(1cm);

label("$a$",      (0,0), red);
label("$\neg d$", (1,0), red);
label("$\neg e$", (2,0), red);
label("$g$",      (3,0), red);

label("$a$",      (-1,-4), red);
label("$\neg h$", (0,-4),  red);
label("$d$",      (1,-4),  green);

label("$\neg g$", (3,-2),  green);
label("$\neg d$", (4,-2),  red);
label("$\neg c$", (5,-2),  red);

label("$a$",      (-3,-6), blue);

label("$e$",      (2,-6),  green);
label("$\neg h$", (3,-6),  red);
label("$\neg c$", (4,-6),  red);

label("$h$",      (0,-8),  green);
label("$\neg b$", (1,-8),  red);

label("$\neg c$", (5,-8),  blue);

label("$\neg b$", (1,-10), blue);

draw((0,0)   -- (-3,-6), Arrow, Margins);
draw((1,0)   -- (1,-4),  Arrow, Margins);
draw((2,0)   -- (2,-6),  Arrow, Margins);
draw((3,0)   -- (3,-2),  Arrow, Margins);
draw((4,-2)  -- (1,-4),  Arrow, Margins);
draw((5,-2)  -- (5,-8),  Arrow, Margins);
draw((-1,-4) -- (-3,-6), Arrow, Margins);
draw((0,-4)  -- (0,-8),  Arrow, Margins);
draw((3,-6)  -- (0,-8),  Arrow, Margins);
draw((4,-6)  -- (5,-8),  Arrow, Margins);
draw((1,-8)  -- (1,-10), Arrow, Margins);

