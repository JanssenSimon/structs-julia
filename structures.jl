#!/bin/env julia

println("Hello world!")

# Array
array = [1, 2, 3, 4]

# Lists

abstract type List{T} end
abstract type Node{T} end

## Singly linked lists

struct SinglyLinkedListNode{T} <: Node{T}
    value::T
    next::Union{SinglyLinkedListNode{T}, Nothing}
end

struct SinglyLinkedList{T} <: List{T}
    length::Int
    head::Union{SinglyLinkedListNode{T}, Nothing}
end
