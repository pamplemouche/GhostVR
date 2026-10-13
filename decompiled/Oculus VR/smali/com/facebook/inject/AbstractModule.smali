.class public abstract Lcom/facebook/inject/AbstractModule;
.super Ljava/lang/Object;
.source "AbstractModule.java"

# interfaces
.implements Lcom/facebook/inject/Module;


# instance fields
.field protected mBinder:Lcom/facebook/inject/Binder;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected bindScope(Ljava/lang/Class;Lcom/facebook/inject/Scope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/facebook/inject/Scope;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/facebook/inject/AbstractModule;->mBinder:Lcom/facebook/inject/Binder;

    invoke-interface {v0, p1, p2}, Lcom/facebook/inject/Binder;->bindScope(Ljava/lang/Class;Lcom/facebook/inject/Scope;)V

    .line 179
    return-void
.end method
