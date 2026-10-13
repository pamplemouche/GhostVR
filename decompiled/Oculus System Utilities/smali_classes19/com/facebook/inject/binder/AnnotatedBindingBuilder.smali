.class public interface abstract Lcom/facebook/inject/binder/AnnotatedBindingBuilder;
.super Ljava/lang/Object;
.source "AnnotatedBindingBuilder.java"

# interfaces
.implements Lcom/facebook/inject/binder/LinkedBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/inject/binder/LinkedBindingBuilder",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract annotatedWith(Ljava/lang/Class;)Lcom/facebook/inject/binder/LinkedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/facebook/inject/binder/LinkedBindingBuilder",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract annotatedWith(Ljava/lang/annotation/Annotation;)Lcom/facebook/inject/binder/LinkedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/facebook/inject/binder/LinkedBindingBuilder",
            "<TT;>;"
        }
    .end annotation
.end method
