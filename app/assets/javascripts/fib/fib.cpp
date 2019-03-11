#include <iostream>
using namespace std;

#include <emscripten/bind.h>
using namespace emscripten;


class Fib {
	public:
		Fib(int x):x(x)
		{}

		int next()
		{
			++x;
			return fib_x();
		}


		int  get_x() const { return x; }
		void set_x(int x_) { x = x_; }


		int fib_x()
		{
			return calculate(x);
		}


		void hello()
		{
			cout << "Hello from c++!\n";
		}


		static int calculate(int x)
		{
			if (x < 1)  return 0;
			if (x == 1) return 1;

			return calculate(x-1) + calculate(x-2);
		}


	private:
		int x;
};


EMSCRIPTEN_BINDINGS(module) {
	class_<Fib>("Fib")
		.constructor<int>()
		.function("next", &Fib::next)
		.function("hello", &Fib::hello)
		.property("x", &Fib::get_x, &Fib::set_x)
		.class_function("calculate", &Fib::calculate)
		;
}
