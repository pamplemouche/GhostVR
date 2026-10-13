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
