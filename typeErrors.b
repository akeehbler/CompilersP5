int a;
bool b;
bool d;
struct Pointer {int p;}
struct Pointer2 {int a;}
int f1(int a, bool b){}
void f2(){}
void f3(){}
void x(int a){}
int f4(){ret;}
void f5(){ret 5 + tru;}
int f6(){ret tru;}
bool f7(int a){}        /// fix this?
void f(){
    struct Pointer ptr;
    struct Pointer2 ptr2;
    print << f1;
    print << Pointer;
    print << ptr;
    print << f2();
    receive >> f1;
    receive >> Pointer;
    receive >> ptr;

    a();
    b();
    ptr();
    a(1);    
    
    f1(5, tru, fls);    
    f1(5, 5 || 5);      /// getting logical operator applied ot non-bool operand    
    f1(tru, tru);

    ++d;
    --d;
    b = fls + fls + tru; /// arithmatic operator applied to non-numiric operand
    b = tru - tru - tru;
    b = tru / tru / tru; /// all these are cascading
    b = tru * tru * tru;
    b = -(-(-(-(tru))));

    a = 5 < 5;
    a = (5 < 5) < 5;
    a = 5 > 5;
    a = (5 > 5) > 5;
    a = 5 <= 5;
    a = (5 <= 5) <= 5;
    a = 5 >= 5;
    a = (5 >= 5) >= 5;

    a = !(5 || 5);          /// idk if we should get two here logical operator applied to non-bool operand
    a = 5 && 5 && 5;        /// getting three for these
    a = 5 || 5 || 5;        /// three
    b = (f2 && ptr)||(a || d);  /// three
     


    if("DD"){}else{}
    while("didi"){}
    repeat(tru){}
    repeat(fls){}
    repeat(ptr){}



    if(5 || 5 || 6){}else{} /// getting three here
    if(5 && 5 && 5){}else{} /// getting three here
    if(!!!5){}else{}        
    while(5 || 5 || 6){}    /// three
    while(5 && 5 && 6){}    /// three giggity giggity
    while(!!8){}            
    b = tru && (fls || 3); 

    a = tru;
    f1 = 5;
    Pointer = 10;
    ptr = 10;
    a = tru + 1 + 2 + b;
    b = 2;

    a = f2() == f3(); 
    a = f2() != f3(); 
    a = f2 == f3; 
    a = f2 != f3; 
    a = f2 == f3; 
    a = f2 != f3; 
    a = Pointer2 == Pointer;
    a = Pointer2 != Pointer;
    a = ptr2 == ptr;
    a = ptr2 != ptr;
    
    f2 = f3;
    Pointer = Pointer;
    ptr = ptr;        

    print << Pointer + 1;         /// P + 1 is an error; the write is OK
    a = (tru + 3) * 4;         		/// true + 3 is an error; the * is OK
    a = tru && (fls || 3);   			/// false || 3 is an error; the && is OK
    x("a" * 4);            				/// "a" * 4 is an error; the call is OK
    a = 1 + ptr();              	/// ptr() is an error; the + is OK
    a = (tru + 3) == 5;        		/// true + 3 is an error; the == is OK
                       						/// regardless of the type of x
    a = tru + "hello";    				/// one error for each of the non-int operands of the +
    a = 1 + f7(tru);       				/// one for the bad arg type and one for the 2nd operand of the +
    a = 1 + f7(1, 2);       			/// one for the wrong number of args and one for the 2nd operand of the +
}
