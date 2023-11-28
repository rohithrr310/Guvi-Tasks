// selecting Database

use("Zen_class_programme");

// Creating collections for topics

db.createCollection("topics");

// Creating Documents for topics

db.topics.insertMany([
  {
    topicId: 1,
    topic: "RWD",
    topicDate: new Date("10-oct-2020"),
  },
  {
    topicId: 2,
    topic: "Bootstrap",
    topicDate: new Date("11-oct-2020"),
  },
  {
    topicId: 3,
    topic: "JS",
    topicDate: new Date("17-oct-2020"),
  },
  {
    topicId: 4,
    topic: "Async Programming",
    topicDate: new Date("18-oct-2020"),
  },
  {
    topicId: 5,
    topic: "React",
    topicDate: new Date("24-oct-2020"),
  },
  {
    topicId: 6,
    topic: "React-Redux",
    topicDate: new Date("25-oct-2020"),
  },
  {
    topicId: 7,
    topic: "MySQL",
    topicDate: new Date("31-oct-2020"),
  },
  {
    topicId: 8,
    topic: "MongoDB",
    topicDate: new Date("01-nov-2020"),
  },
]);
