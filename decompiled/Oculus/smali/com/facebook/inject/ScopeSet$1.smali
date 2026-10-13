.class final Lcom/facebook/inject/ScopeSet$1;
.super Ljava/lang/ThreadLocal;
.source "ScopeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/inject/ScopeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/facebook/inject/ScopeSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/facebook/inject/ScopeSet;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/facebook/inject/ScopeSet;

    invoke-direct {v0}, Lcom/facebook/inject/ScopeSet;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/facebook/inject/ScopeSet$1;->initialValue()Lcom/facebook/inject/ScopeSet;

    move-result-object v0

    return-object v0
.end method
