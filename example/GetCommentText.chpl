/* This is a demo of getting comment text from the Chapel compiler */
module GetCommentText {
  use Dyno;
  import Reflection;
  /* The doit function will print this comment */
  proc doit() {
    var ctx = new Context();
    const myFile = Reflection.getFileName();
    var asts = ctx.parse(myFile);
    for n in preorder(asts) {
      if n.is("Comment") {
        var comment = n.to("Comment");
        writeln("Comment text: ", comment.text());
      }
    }
  }
  /* this is the main function */
  proc main() {
    doit();
  }
}
