.class public interface abstract Lcom/facebook/graphservice/interfaces/GraphQLBaseConsistency;
.super Ljava/lang/Object;
.source "GraphQLBaseConsistency.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# virtual methods
.method public abstract lookup(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract subscribe(Ljava/lang/Object;Lcom/facebook/graphservice/interfaces/GraphQLService$DataCallbacks;Ljava/util/concurrent/Executor;)Lcom/facebook/graphservice/interfaces/GraphQLService$Token;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/facebook/graphservice/interfaces/GraphQLService$DataCallbacks;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/facebook/graphservice/interfaces/GraphQLService$Token;"
        }
    .end annotation
.end method

.method public abstract subscribeWithFullConsistency(Ljava/lang/Object;Lcom/facebook/graphservice/interfaces/GraphQLService$DataCallbacks;Ljava/util/concurrent/Executor;)Lcom/facebook/graphservice/interfaces/GraphQLService$Token;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/facebook/graphservice/interfaces/GraphQLService$DataCallbacks;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/facebook/graphservice/interfaces/GraphQLService$Token;"
        }
    .end annotation
.end method
