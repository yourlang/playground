"""
to think

!
$
¬
§
{}
\
;
?

always one blank line at the start of a block and the end of it (tip)

"""




cmd ls dir

	dir: f"$dir"
	for child in dir.children
	
		if child.is_file
		
			say f- $child
			
		else if child.is_dir
		
			say d- $child
			
		else if child.is_link
		
			say l- $child
			
	return dir.children


ls .

dirs = ls .  # prints on every request of "dirs" if "dir.children" changes

def maximum_wealth(an_array)  # always execute, no :

	return max(reduce(sum, an_array))

def cached maximum_wealth(an_array)  # not always execute, but be smart to know when is needed to execute

	...  # TODO like, tupi advises about

maximum_wealth: reduce(sum) & max  # HERE equal
maximum_wealth = reduce(sum) & max  # ALWAYS equal, cached

maximum_wealth(an_array) = (reduce(sum) & max)(an_array)  # register an_array too?




Foo: object()  # prototypes, not classes
	def .bar

def foo()

	return Object @ Foo  # instantiate from objects, not classes

foo_instance: foo()



new Foo  # write as a class, syntatic sugar

	def bar

foo_instance: foo()



new Foo

	bar(x) = null  # cached function, less memory usage

# check instance
if some_object is a Foo

	...


i36 var: 4
def i36 func(i36 arg)

	return arg

# typing?


new Bar @ Foo  # Bar: Object @ Foo

	def some_func(a, .b, c:10, *e)  # say where you want to store everywhere (self.b = b), default argument value, star expression
	
		say something $a
	
	def func_to_func(func_to_use)
	
		func_to_use(3, 4)
	
	def bar(x)
	
		if .b = x  # reference with dots and identation
		
			@.bar(x)  # super().bar(x)


bar_instance: bar()
	.some_func(1, 2, 3, 4, 5)
	# a is 1, bar_instance.b is 2, c is 3, e is [4, 5]
	# outputs "1"
	my_func_to_use(a, b): a + b
	.func_to_func(my_func_to_use)
	
	.func_to_func((a, b): a + b)
	.func_to_func(func_to_use(a, b): a + b)  # lambdas


##### PYTHON

my_pets = ['alfred', 'tabitha', 'william', 'arla']
uppered_pets = []

for pet in my_pets:
    pet_ = pet.upper()
    uppered_pets.append(pet_)

print(uppered_pets)


##### YOUR

my_pets: ['alfred', 'tabitha', 'william', 'arla']
uppered_pets = my_pets[].upper()

say $uppered_pets


##### PYTHON

scores = [66, 90, 68, 59, 76, 60, 88, 74, 81, 65]

def is_A_student(score):
    return score > 75

over_75 = list(filter(is_A_student, scores))

print(over_75)


##### YOUR

scores: [66, 90, 68, 59, 76, 60, 88, 74, 81, 65]

over_75 = scores[] if scores[] > 75

say $over_75




my_list: [1, 2, 3, 4]
 

my_list+: [5, 6, 7, 8]  # +=
my_list
	|5  # append(5)
	|6
	|7
	|8


object1 -> object2  # reads send object1 to object2
object2.__receive__(object1)

object1 --> object2  # reads append object1 to object2
object2.__append__(object1)


# or the opposite



# kivy like

my_box: box_layout()
	|widget
		.color = 'red' if something else 'blue'
		var_only_in_scope: 5
		.widget_attr: var_only_in_scope ^ 2 * 4  # ^ instead of **
	|box_layout()
		|widget
		|widget




my_list = [1, 2, [1, 2, 3], 5, 7]

my_list = list()
	|1
	|2
	|list()
		|1
		|2
		|3
	|5
	|7




my_object  # identation elipse
	.my_first_func()
	.my_second_func()


func(x): 3 + x
use_func(func)

use_func((x): 3 + x)


var = 'pré-histórico'
var = 'pré-' + x  # registered
try  # no :

	say $x  # say("{x}")
	# or also
	say $(x)
	
if get ResultError  # except

	say there is no x

always  # finally  (or but always?)

	...

var = 'pré-histórico'
if var = 'pré-' + x  # not registering

	say there is an x: $x
	
else

	say there is no x




# the elipsed variable is the first of the line or the elipsed of the statement above

if a = 3  # EQUAL as EQUAL sign

	...
	
else if <= 4 and =/= 5 # statement elipse, NOT EQUAL as NOT EQUAL sign

	...
	
else if ~= 4 * var_to_use544  # aproximately equal, round numbers and check normalized strings, if the minor is on the major one

	...
	
else

	...  # if there is a comment, is a TODO, else, is a pass


when a = 3  # watch "a" variable and if the statement is true, run the code

	say something

when a = new_a  # as "new_a" is not defined, this is always true. Will be ran at every assign (of different value) such as "a: Null"

	say a is now $new_a

for each a  # for each possible result of "a" variable

	...

some_list[_] = other_list[_] = value_i_want  # _ is a special variable, "i want that any of the values of some_list be equal to any of the values in other_list, and reference it after"

del a in some_list  # some_list.remove(a)




# variables referencing global scope, nonlocal and local
module.my_global_var
scope_above.my_non_local_var
scope.my_local_var

# also substitutes globals(), (the non-existing) nonlocals() and vars()
module.__dict__['my_global_var']
scope_above.__dict__['my_non_local_var']
scope.__dict__['my_local_var']


from /home/user/module import some_object
from user/repo import some_object

# first looks in the installed modules, then for a file, and then in internet (github, gitlab) and asks for installing it
# or better, a simple package manager as pull request ...


exit if a = b  # assert a != b
exit Error()  # raise Exception()
exit with Error()  # same
exit  # sys.exit(), raise SystemExit()


# fibonacci in python

def fibonacci(nterms):
	n1, n2 = 0, 1
	count = 0
	if nterms == 0:
		raise Exception('"nterms" must be a positive integer')
	elif nterms == 1:
		yield 1
	else:
		while count < nterms:
			yield n1
			nth = n1 + n2
			n1 = n2
			n2 = nth
			count += 1

print(list(fibonacci(6))

# fibonacci in your

fibonacci[n] = 1 if n in [1, 2] else fibonacci[n-1] + fibonacci[n-2]

say $(fibonacci[..6])

decorator task func(*args)
    
    ...  # ?

say_hello: task say hello
say_hello.begin()
say_hello.end()


wait say_hello
wait a = b




out: call cat my_file.txt



"""
Relation with Python Keywords
False = false  no?
None = null    empty? nothing?         nothing!
True = true    yes?
and = and
as = ?
assert = exit if  # inverted logic
async = ?
await = ?
break = break  # break more than one loop (break 2)
class = new  # not realy equal
continue = skip  # skip more than one iteration(skip 2)
def = def
del = del
elif = else if
else = else
except = if get
finally = always
for = for
from = from
global = module.  # module reference
if = if
import = import
in = in
lambda: = ():
nonlocal = scope_above.
not = not
or = or
pass = ...
raise = exit with # or "exit"
return = return
try = try
while = while
with = ?
yield = gen


6j = 6i
string = text
int, float = number
list, dict = list
"""

your main.y        explicativo, marketeiro, não usado nesse contexto                      muito simples, sem apelo visual     your-lang
food main.dog      significativo, unico, não usado em nada, com apelo visual                  nome composto, pobre talvez     dog-food
doge main.dg       engraçado, ainda lembra o dogfooding             muito usado em outros contextos, usado nesse contexto     dogelang
birb main.b        engraçado, personagem pra citar, curto, com apelo visual                   já usado, sem significancia     birb-lang
n main.n           curtissimo, eu                                                                                             nplatform




> my_code
result

var * repr ------------------ 3 tabs ---------------------------- if something
> 

















