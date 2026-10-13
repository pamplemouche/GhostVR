.class public interface abstract Lcom/facebook/inject/ScopeAwareInjector;
.super Ljava/lang/Object;
.source "ScopeAwareInjector.java"

# interfaces
.implements Lcom/facebook/inject/BasicScopeAwareInjector;


# annotations
.annotation build Lcom/facebook/infer/annotation/ThreadSafe;
.end annotation


# virtual methods
.method public abstract getInjectorContext()Landroid/content/Context;
.end method

.method public abstract getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;
.end method
