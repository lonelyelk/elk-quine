package main

import (
	"fmt"
	"strings"
)

func main() {
	e := [5]string{
		"      ^^..^^",
		"  _____ U   ",
		"`(  _  /    ",
		"  // \\     ",
		" ^^   ^^    ",
	}
	n := "\n"
	h := "package main\n\nimport (\n\t\"fmt\"\n\t\"strings\"\n)\n\nfunc main() {"
	f := "\t\t%#v,"
	es := make([]string, len(e))
	s1 := "\n\te := [5]string{\n%s\n\t}"
	s2 := "\n\tn := %#v\n\th := %#v\n\tf := %#v\n\tes := make([]string, len(e))"
	s3 := "\n\ts1 := %#v\n\ts2 := %#v\n\ts3 := %#v"
	s0 := "\n\ts0 := %#v\n\tfmt.Printf(h+s1+s2+s3+s0, strings.Join(es, n), n, h, f, s1, s2, s3, s0)\n}\n"
	fmt.Printf(h+s1+s2+s3+s0, strings.Join(es, n), n, h, f, s1, s2, s3, s0)
}
