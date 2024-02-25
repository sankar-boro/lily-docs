use sankar;
DROP TABLE IF EXISTS usercategories;
DROP TABLE IF EXISTS allcategories;
CREATE TABLE usercategories (
    authorId INT,
    category TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE allcategories (
    category TEXT,
    authorId TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO sankar.allcategories (category, division) VALUES('science', 'demo');
INSERT INTO sankar.allcategories (category, division) VALUES('physics', 'demo');
INSERT INTO sankar.allcategories (category, division) VALUES('chemistry', 'demo');
INSERT INTO sankar.allcategories (category, division) VALUES('maths', 'demo');
INSERT INTO sankar.allcategories (category, division) VALUES('biology', 'demo');
INSERT INTO sankar.allcategories (category, division) VALUES('history', 'demo');
INSERT INTO sankar.allcategories (category, division) VALUES('assamese', 'demo');
INSERT INTO sankar.allcategories (category, division) VALUES('bodo', 'demo');
INSERT INTO sankar.allcategories (category, division) VALUES('computer', 'demo');
INSERT INTO sankar.allcategories (category, division) VALUES('literature', 'demo');
INSERT INTO sankar.allcategories (category, division) VALUES('social science', 'demo');


TRUNCATE TABLE sankar.usercategories;
TRUNCATE TABLE sankar.allcategories;