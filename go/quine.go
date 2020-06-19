package main

import (
	"fmt"
	"strings"
)

func main() {
	e := [5]string{
		"     ^^..^^ ",
		"  _____ U   ",
		"~(  _  /    ",
		"  || ||     ",
		"  ^^ ^^     ",
	}
	n := "\n"
	h := "package main\n\nimport (\n\t\"fmt\"\n\t\"strings\"\n)\n\nfunc main() {"
	es := make([]string, len(e))
	for i, l := range e {
		r := []rune(l)
		switch i {
		case 0:
			es[i] = fmt.Sprintf("\t\t\"%c%s\",", r[11], string(r[:11]))
		case 2:
			es[i] = fmt.Sprintf("\t\t\"`%s\",", string(r[1:]))
		case 3:
			es[i] = fmt.Sprintf("\t\t\"%s%s%s\",", string(r[0:2]), "// \\\\", string(r[7:]))
		case 4:
			es[i] = fmt.Sprintf("\t\t\"%s%c%s\",", string(r[1:5]), ' ', string(r[4:11]))
		default:
			es[i] = fmt.Sprintf("\t\t%#v,", string(r))
		}
	}
	s1 := "\n\te := [5]string{\n%s\n\t}"
	s2 := "\n\tn := %#v\n\th := %#v\n\tes := make([]string, len(e))"
	s3 := "\n\ts1 := %#v\n\ts2 := %#v\n\ts3 := %#v"
	s0 := "\n\ts0 := %#v\n\tfmt.Printf(h+s1+s2+s3+s0, strings.Join(es, n), n, h, f, s1, s2, s3, s0)\n}\n"
	fmt.Printf(h+s1+s2+s3+s0, strings.Join(es, n), n, h, s1, s2, s3, s0)
}
