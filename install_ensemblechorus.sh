git clone --recursive https://github.com/jpcima/ensemble-chorus.git
mkdir ensemble-chorus/build
cd ensemble-chorus/build
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build .
