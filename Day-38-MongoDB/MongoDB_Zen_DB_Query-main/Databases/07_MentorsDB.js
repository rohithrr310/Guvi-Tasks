// selecting Database

use("Zen_class_programme");

// Creating collections for mentors

db.createCollection("mentors");

// Creating Documents for mentors

db.mentors.insertMany([
  {
    mentorId: 1,
    mentorName: "sathish",
    mentorEmail: "sathish@gmail.com",
  },
  {
    mentorId: 2,
    mentorName: "naga",
    mentorEmail: "naga@gmail.com",
  },
  {
    mentorId: 3,
    mentorName: "rupan",
    mentorEmail: "rupan@gmail.com",
  },
  {
    mentorId: 4,
    mentorName: "aktar",
    mentorEmail: "minato@gmail.com",
  },
]);
