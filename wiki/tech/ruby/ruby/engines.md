## Other Implementations of Ruby

Ruby, as a language, has a few different implementations. This page has been discussing the reference implementation, in the community often referred to as **MRI (“Matz’s Ruby Interpreter”) or CRuby** (since it is written in C), but there are also others. They are often useful in certain situations, provide extra integration to other languages or environments, or have special features that MRI doesn’t.

Here’s a list:

- JRuby is Ruby atop the JVM (Java Virtual Machine), utilizing the JVM’s optimizing JIT compilers, garbage collectors, concurrent threads, tool ecosystem, and vast collection of libraries.
- Rubinius is ‘Ruby written in Ruby’. Built on top of LLVM, Rubinius sports a nifty virtual machine that other languages are being built on top of, too.
- TruffleRuby is a high performance Ruby implementation on top of GraalVM.
- mruby is a lightweight implementation of the Ruby language that can be linked and embedded within an application. Its development is led by Ruby’s creator Yukihiro “Matz” Matsumoto.
- IronRuby is an implementation “tightly integrated with the .NET Framework”.
- MagLev is “a fast, stable, Ruby implementation with integrated object persistence and distributed shared cache”.
- Cardinal is a “Ruby compiler for Parrot Virtual Machine” (Perl 6).

For a more complete list, see Awesome Rubies.

source: https://www.ruby-lang.org/en/about/
