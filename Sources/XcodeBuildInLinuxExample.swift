//Create a new target, Cross-Platform, External Build Tool. Set the "Build Tool" as xcrun and the "arguments: as swift package fetch
//Edit scheme (cmd+shift+<), drop down the "Build" section, click on "Build", uncheck "Parallelize Build", click +, select "PreBuild", drag it to the top of the targets list. This will make the PreBuild happen when you are building the framework target. Xcode kind of builds as you code but doesn't trigger a full build. It will be useful to do a full build (cmd+b) from time to time to trigger the Linux build to occur. 

struct Example {

    var text = "Hello, World!"
}
