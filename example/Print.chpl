use Dyno;
import Reflection;

var ctx = new Context();
const myFile = Reflection.getFileName();
var asts = ctx.parse(myFile);
for n in preorder(asts) {
  writeln(n.id(), " ", n.tag());
}
