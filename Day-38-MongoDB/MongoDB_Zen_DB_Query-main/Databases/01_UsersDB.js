// Creating & selecting Database

use("Zen_class_programme");

// Creating collections for Users

db.createCollection("users");

// Creating Documents for user

db.users.insertMany([
  {
    userId: 1,
    userName: "suriya",
    userEmail: "suriya@gmail.com",
    mentorId: 1,
  },
  {
    userId: 2,
    userName: "udhaya",
    userEmail: "udhaya@gmail.com",
    mentorId: 2,
  },
  {
    userId: 3,
    userName: "romeo",
    userEmail: "romeo@gmail.com",
    mentorId: 3,
  },
  {
    userId: 4,
    userName: "goku",
    userEmail: "goku@gmail.com",
    mentorId: 1,
  },
  {
    userId: 5,
    userName: "vegeta",
    userEmail: "vegeta@gmail.com",
    mentorId: 2,
  },
  {
    userId: 6,
    userName: "gohan",
    userEmail: "gohan@gmail.com",
    mentorId: 3,
  },
  {
    userId: 7,
    userName: "pikachoo",
    userEmail: "pikachoo@gmail.com",
    mentorId: 1,
  },
  {
    userId: 8,
    userName: "groot",
    userEmail: "groot@gmail.com",
    mentorId: 1,
  },
  {
    userId: 9,
    userName: "thanos",
    userEmail: "thanos@gmail.com",
    mentorId: 1,
  },
  {
    userId: 10,
    userName: "flash",
    userEmail: "flash@gmail.com",
    mentorId: 1,
  },
  {
    userId: 11,
    userName: "ceeday",
    userEmail: "ceeday@gmail.com",
    mentorId: 1,
  },
  {
    userId: 12,
    userName: "batman",
    userEmail: "batman@gmail.com",
    mentorId: 1,
  },
  {
    userId: 13,
    userName: "superman",
    userEmail: "superman@gmail.com",
    mentorId: 1,
  },
  {
    userId: 14,
    userName: "spiderman",
    userEmail: "spiderman@gmail.com",
    mentorId: 1,
  },
  {
    userId: 15,
    userName: "steveRogers",
    userEmail: "steveRogers@gmail.com",
    mentorId: 1,
  },
  {
    userId: 16,
    userName: "wakandaForever",
    userEmail: "wakandaForever@gmail.com",
    mentorId: 1,
  },
  {
    userId: 17,
    userName: "thor",
    userEmail: "thor@gmail.com",
    mentorId: 1,
  },
  {
    userId: 18,
    userName: "loki",
    userEmail: "loki@gmail.com",
    mentorId: 1,
  },
  {
    userId: 19,
    userName: "nickFury",
    userEmail: "nickFury@gmail.com",
    mentorId: 1,
  },
  {
    userId: 20,
    userName: "popeye",
    userEmail: "popeye@gmail.com",
    mentorId: 1,
  },
]);
