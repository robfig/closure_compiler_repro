for jar in closure-compiler*.jar; do
    echo
    echo "Compiling with $jar"
    echo
    java -cp $jar \
         com.google.javascript.jscomp.CommandLineRunner \
         --hide_warnings_for=closure/goog/base.js \
         --js_module_root `pwd` \
         --js $ALPHA/external/com_google_javascript_closure_library/closure/goog/base.js \
         --js $ALPHA/external/com_google_javascript_closure_library/closure/goog/transitionalforwarddeclarations.js \
         --js $ALPHA/external/com_google_javascript_closure_library/closure/goog/debug/error.js \
         --js $ALPHA/external/com_google_javascript_closure_library/closure/goog/dom/nodetype.js \
         --js $ALPHA/external/com_google_javascript_closure_library/closure/goog/asserts/asserts.js \
         --js $ALPHA/external/com_google_javascript_closure_library/closure/goog/array/array.js \
         --js file1.js \
         --js file2.js \
         --language_in ECMASCRIPT_2018 \
         --language_out ECMASCRIPT5 \
         --assume_function_wrapper \
         --dependency_mode PRUNE \
         --warning_level VERBOSE \
         --generate_exports \
         --process_closure_primitives \
         --use_types_for_optimization \
         --entry_point corp.abc \
         --module_resolution NODE \
         --compilation_level ADVANCED
done
