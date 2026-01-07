-- creation of tables,inputing values and changing values of column names, column character types and column contents, and also learning how to drop said tables 
CREATE TABLE jobs_applied (
    job_id INT,
    application_sent_date DATE, 
    custom_resume BOOLEAN,
    resume_file_name VARCHAR(255),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR(255),
    status VARCHAR(50)
);


INSERT INTO jobs_applied (
    job_id,
    application_sent_date,
    custom_resume,
    resume_file_name,
    cover_letter_sent,
    cover_letter_file_name,
    status 
)
VALUES    
        (1,
    '2025-10-01',
    true,
    'resume_01.pdf',
    true,
    'cover_letter_01.pdf',
    'submitted'
        ),
        (2,
        '2025-10-02',
        false,
        'resume_02.pdf',
        false,
        NULL,
        'interview scheduled'
        ),
        (3,
        '2025-12-03',
        true,
        'resume_03.pdf',
        true,
        'cover_letter_03.pdf',
        'ghosted'),
        (4,
        '2025-10-04',
        true,
        'resume_04.pdf',
        false,
        NULL,
        'submitted'),
        (5,
        '2025-10-05',
        false,
        'resume_05.pdf',
        true,
        'cover_letter_05.pdf',
        'rejected');

UPDATE jobs_applied
SET contact_name = 'Jonathan Decker'
WHERE job_id = 1;

UPDATE jobs_applied
SET contact_name = 'Sonny Muli'
WHERE job_id = 2;

UPDATE jobs_applied
SET contact_name = 'Kailyn Leong'
WHERE job_id = 3;

UPDATE jobs_applied
SET contact_name = 'Micheal Goings'
WHERE job_id = 4;

UPDATE jobs_applied
SET contact_name = 'Jake Kuwik'
WHERE job_id = 5;

ALTER TABLE jobs_applied
ADD COLUMN contact VARCHAR(50)

ALTER TABLE jobs_applied
RENAME COLUMN contact TO contact_name;

ALTER TABLE job_applied
ALTER COLUMN contact_name TYPE TEXT;

ALTER TABLE jobs_applied
DROP COLUMN contact;

DROP TABLE jobs_applied


