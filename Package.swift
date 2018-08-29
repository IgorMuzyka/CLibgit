// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "Clibgit",
    products: [
    	.library(name: "Clibgit", targets: ["Clibgit"])
    ],
    targets: [
	    .systemLibrary(
	    	name: "Clibgit", 
	    	path: "Sources", 
	    	pkgConfig: "libgit2", 
	    	providers: [
		        .brew(["libgit2"]),
		        .apt(["libgit2-dev"]),
		    ]
		)
    ]
)
