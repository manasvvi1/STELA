List<String> expNo = [
  "1",
  "2",
  "3",
  "4(a)",
  "4(b)",
  "5",
  "6",
  "7",
  "8(a)",
  "8(b)",
  "9",
  "10",
  "11",
  "12",
  "13",
  "14",
  "15",
  "16",
  "17",
  "18",
  "19",
  "20"
];

var experimentCollection, experimentDoc, experimentData;
String aim = "", procedure = "", algorithm = "", program = "", result = "";

void getExperiment(var index) {
  var docID = "Experiment " + expNo[index];
  experimentDoc = experimentCollection.doc(docID).get().then((data) {
    aim = data?["AIM"];
    procedure = data?["PROCEDURE"];
    algorithm = data?["ALGORITHM"];
    program = data?["PROGRAM"];
    result = data?["RESULT"];
  });
}
