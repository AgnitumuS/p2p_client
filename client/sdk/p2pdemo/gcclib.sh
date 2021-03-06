rm -f p2p.a

mkdir pjnath_obj
cd pjnath_obj
ar x ../../../pjproject-2.3/lib/libpjnath-x86_64-unknown-linux-gnu.a
cd ..

mkdir miniupnp_obj
cd miniupnp_obj
ar x ../../../miniupnpc-1.9.20150206/libminiupnpc.a
cd ..

mkdir pjlib_obj
cd pjlib_obj
ar x ../../../pjproject-2.3/lib/libpj-x86_64-unknown-linux-gnu.a
cd ..

mkdir pjlib-util_obj
cd pjlib-util_obj
ar x ../../../pjproject-2.3/lib/libpjlib-util-x86_64-unknown-linux-gnu.a
cd ..

ar rc p2p.a ./pjnath_obj/*.o ./miniupnp_obj/*.o ./pjlib_obj/*.o ./pjlib-util_obj/*.o

rm -rf pjnath_obj
rm -rf miniupnp_obj
rm -rf pjlib_obj
rm -rf pjlib-util_obj
