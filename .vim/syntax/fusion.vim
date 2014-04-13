" Vim syntax file
" Language:	Fusion
" Current Maintainer:	Yang TL Li <ylish@cn.ibm.com>
" Last Change:	2013/12/11

" For version 1.x: Start based on C++ syntax file

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the C++ syntax to start with
if version < 600
  so <sfile>:p:h/cpp.vim
else
  runtime! syntax/cpp.vim
  unlet b:current_syntax
endif

" Fusion extensions
syn keyword cppStatement	new delete this friend using
syn keyword cppAccess		public protected private
syn keyword cppType		inline virtual explicit export bool wchar_t
syn keyword cppExceptions	throw try catch
syn keyword cppOperator		operator typeid
syn keyword cppOperator		and bitor or xor compl bitand and_eq or_eq xor_eq not not_eq
syn match cppCast		"\<\(const\|static\|dynamic\|reinterpret\)_cast\s*<"me=e-1
syn match cppCast		"\<\(const\|static\|dynamic\|reinterpret\)_cast\s*$"
syn keyword cppStorageClass	mutable
syn keyword cppStructure	class typename template namespace
syn keyword cppBoolean		true false

" C++ 11 extensions
if !exists("cpp_no_cpp11")
  syn keyword cppType		override final
  syn keyword cppExceptions	noexcept
  syn keyword cppStorageClass	constexpr decltype
  syn keyword cppConstant	nullptr
endif

" The minimum and maximum operators in GNU C++
syn match cppMinMax "[<>]?"

" Default highlighting
if version >= 508 || !exists("did_cpp_syntax_inits")
  if version < 508
    let did_cpp_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink cppAccess		cppStatement
  HiLink cppCast		cppStatement
  HiLink cppExceptions		Exception
  HiLink cppOperator		Operator
  HiLink cppStatement		Statement
  HiLink cppType		Type
  HiLink cppStorageClass	StorageClass
  HiLink cppStructure		Structure
  HiLink cppBoolean		Boolean
  HiLink cppConstant		Constant
  delcommand HiLink
endif

let b:current_syntax = "fusion"

" vim: ts=8
