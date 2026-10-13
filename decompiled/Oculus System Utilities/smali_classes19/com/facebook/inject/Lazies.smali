.class public final Lcom/facebook/inject/Lazies;
.super Ljava/lang/Object;
.source "Lazies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/inject/Lazies$ProviderMemoizingLazy;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Ljavax/inject/Provider;)Lcom/facebook/inject/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider",
            "<TT;>;)",
            "Lcom/facebook/inject/Lazy",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    instance-of v0, p0, Lcom/facebook/inject/Lazy;

    if-eqz v0, :cond_0

    .line 34
    check-cast p0, Lcom/facebook/inject/Lazy;

    .line 36
    .end local p0    # "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    :cond_0
    new-instance v0, Lcom/facebook/inject/Lazies$ProviderMemoizingLazy;

    invoke-direct {v0, p0}, Lcom/facebook/inject/Lazies$ProviderMemoizingLazy;-><init>(Ljavax/inject/Provider;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static of(Ljava/lang/Object;)Lcom/facebook/inject/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/facebook/inject/Lazy",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/facebook/inject/Lazies$1;

    invoke-direct {v0, p0}, Lcom/facebook/inject/Lazies$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
