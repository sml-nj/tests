structure A : sig end = 
struct
  type t = int
end;

signature S =
sig
  structure D : sig type t end
end
where D = A;

functor F(X:S) = struct end;

structure B =
struct
  structure D = struct type t = bool end
end;

structure C = F(B);
