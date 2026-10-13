.class public interface abstract Lcom/facebook/inject/binder/LinkedBindingBuilder;
.super Ljava/lang/Object;
.source "LinkedBindingBuilder.java"

# interfaces
.implements Lcom/facebook/inject/binder/ScopedBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/inject/binder/ScopedBindingBuilder;"
    }
.end annotation


# virtual methods
.method public abstract to(Lcom/google/inject/Key;)Lcom/facebook/inject/binder/ScopedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<+TT;>;)",
            "Lcom/facebook/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation
.end method

.method public abstract to(Lcom/google/inject/TypeLiteral;)Lcom/facebook/inject/binder/ScopedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<+TT;>;)",
            "Lcom/facebook/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation
.end method

.method public abstract to(Ljava/lang/Class;)Lcom/facebook/inject/binder/ScopedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)",
            "Lcom/facebook/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation
.end method

.method public abstract to(Ljava/lang/Class;Ljava/lang/Class;)Lcom/facebook/inject/binder/ScopedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/facebook/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation
.end method

.method public abstract toInstance(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract toProvider(Ljavax/inject/Provider;)Lcom/facebook/inject/binder/ScopedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<+TT;>;)",
            "Lcom/facebook/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation
.end method
