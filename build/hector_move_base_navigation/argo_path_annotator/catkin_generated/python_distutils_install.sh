#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/evan/share/coverage_path_ws/src/hector_move_base_navigation/argo_path_annotator"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/evan/share/coverage_path_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/evan/share/coverage_path_ws/install/lib/python2.7/dist-packages:/home/evan/share/coverage_path_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/evan/share/coverage_path_ws/build" \
    "/usr/bin/python" \
    "/home/evan/share/coverage_path_ws/src/hector_move_base_navigation/argo_path_annotator/setup.py" \
    build --build-base "/home/evan/share/coverage_path_ws/build/hector_move_base_navigation/argo_path_annotator" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/evan/share/coverage_path_ws/install" --install-scripts="/home/evan/share/coverage_path_ws/install/bin"
