.class public interface abstract Lcom/facebook/inject/InjectorLike;
.super Ljava/lang/Object;
.source "InjectorLike.java"

# interfaces
.implements Lcom/facebook/inject/Injector;


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# virtual methods
.method public abstract getApplicationInjector()Lcom/facebook/inject/InjectorLike;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getInjectorThreadStack()Lcom/facebook/inject/InjectorThreadStack;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
