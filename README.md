Repository contains [Eclipse Che](https://github.com/eclipse/che) [devfile](https://redhat-developer.github.io/devfile/) which could be used for creating an Eclipse Che workspace for development of the eduke32 project.

It provides development environment which allows to develop, build and run the project.

However, there are some limitations:
 - Only software render is available
 - No sound

To test the eduke32 project:
 - clone eduke32
 - build it
 - download resources
 - copy compiled binaries into resources directory
 - run eduke32

Then open desktop server url from Workspace panel (Note, predefined commands might be used for the steps from the list above).

For the application running network latency and bandwidth is important. If Che server is far from you it may cause problems.
If remote desktop has lags, try to lower the resolution via `RESOLUTION` environment variable in the `eduke32-run` container.

TODOs:
 - Add C++ language tools plug-in when ready
 - Add ability to configure password for remote desktop
