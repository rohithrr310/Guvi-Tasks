// selecting Database

use("Zen_class_programme");

// Creating collections for companyDrives

db.createCollection("companyDrives");

// Creating Documents for companyDrives

db.companyDrives.insertMany([
  {
    userId: 1,
    driveDate: new Date("04-oct-2020"),
    company: "Google",
  },
  {
    userId: 1,
    driveDate: new Date("11-oct-2020"),
    company: "Amazon",
  },
  {
    userId: 2,
    driveDate: new Date("20-oct-2020"),
    company: "Guvi",
  },
  {
    userId: 3,
    driveDate: new Date("25-oct-2020"),
    company: "Zoho",
  },
  {
    userId: 2,
    driveDate: new Date("27-oct-2020"),
    company: "TCS",
  },
]);
