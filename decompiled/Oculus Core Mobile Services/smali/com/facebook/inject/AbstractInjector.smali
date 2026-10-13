.class public abstract Lcom/facebook/inject/AbstractInjector;
.super Lcom/facebook/inject/FbInjector;
.source "AbstractInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/inject/FbInjector;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract injectComponent(Ljava/lang/Class;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation
.end method
