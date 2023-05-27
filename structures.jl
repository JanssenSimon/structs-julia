#!/bin/env julia

println("Saluton mondo!")

# Array
tabelo = [1, 2, 3, 4]

# Lists

abstract type Listo{T} end
abstract type Nodo{T} end

## Singly linked lists

       
struct UnuopeLigillistoNodo{T} <: Node{T}
    value::T
    next::Union{UnuopeLigillistoNodo{T}, Nothing}
end

struct UnuopeLigillisto{T} <: List{T}
    length::Int
    head::Union{UnuopeLigillisto{T}, Nothing}
end

UnuopeLigillisto{Int}(0,nothing) #ça c'est très chill
UnuopeLigillisto(0,nothing)     #ça c'est broken
