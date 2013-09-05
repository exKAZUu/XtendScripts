package net.exkazuu

import java.util.ArrayList
import java.util.Scanner

class Main {
	def static main(String[] args) {
		val mixedCount = if (args.size == 0) 2 else Integer::parseInt(args.get(0))
		val lines = (0 ..< mixedCount).map[new ArrayList<String>].toList;
		val sc = new Scanner(System::in)
		var line = ""
		var count = 0
		while ((line = sc.nextLine) != null && !line.equals("0")) {
			lines.get(count).add(line)
			count = (count + 1) % mixedCount
		}
		lines.forEach[
			it.forEach[ System::out.println(it) ]
		]
	}
}
