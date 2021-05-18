//*************************
//video 1 sobre lambda
//*************************
let r 

const I = a => a

r = I(I)
r


add = a => b => a+b
add

add(1)
add(1)(2)

//mocking bird
M = f => f(f)

r = M(I)
r

try {
    M(M)
}catch(e){console.log(e.message)}


//Kestrel

K = a => b => a
K(I)(M)

K5 = K(5)
r = K5(3)
r

//K(I)(x)

//Kite
K(I)(1)(2)

KI = a => b => b
r = KI(4)(9)
r

r = KI(K)(KI)
r

//cardinal

C = f => a => b => f(b)(a)

r = C(K)(I)(M)
r

//bool
const T = K
const F = KI

T.inspect = () => 'T / K'
F.inspect = () => 'F / KI'

const not = p => p(F)(T)

not(T)
not(F)

not(T)==F
not(F)==T

not(K) === KI
not(KI) === K

C(K)(chirp)(tweet) === tweet
C(KI)(chirp)(tweet) === chirp

C(T)(chirp)(tweet) === tweet
C(F)(chirp)(tweet) === chirp

C(T)(1)(2)

C(F)(1)(2)

//AND
const and = p => q => p(q)(F)

and(F)(T)

and(T)(T)

and(T)(F)

and(F)(F)

//OR

const or = p => q => p(T)(q)

or(T)(F)

or(F)(F)

or(F)(T)

M(T)(F)

M(F)(T)

M(T)(T)

p => q => p(q(T)(F))(q(F)(T))

p => q => p(q)(not(q))

beq = p => q => p(q)(not)(q)

beq(T)(T)

beq(T)(F)

beq(F)(F)

beq(F)(T)
/**
*********************************
    Video 2 sobre lambda
*********************************
 */


//currying

const soma = a => b => c => a + b + c

r = soma(1)(2)(3)
r 

const ID = a => a

r = ID(9)
r 

const PRI = a => b => a
r = PRI(3)(7)
r

const ULT = _ => b => b
r = ULT(3)(7)
r

const TRO = f => a => b => f(b)(a)

r = TRO(PRI)(3)(7)
r

r = TRO(ULT)(3)(7)
r 

//boolean 
//EXP ? PRI : ULT

const T = PRI
const F = ULT

T.inspect = () => 'Verdadeiro (PRI)'
F.inspect = () => 'Falso (ULT)'

T
F

// NOT
const NOT = a => a(F)(T)

r = NOT(F)
r

const AND = a => b => a(b)(F)

r = AND(F)(T)
r

const OR = a => b => a(T)(b)

r = OR(F)(F)
r
