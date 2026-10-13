.class public interface abstract Lcom/oculus/modules/codegen/Resolver;
.super Ljava/lang/Object;
.source "Resolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract reject(Ljava/lang/Throwable;)V
.end method

.method public abstract resolve(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
