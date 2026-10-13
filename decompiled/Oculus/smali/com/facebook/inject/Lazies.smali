.class public final Lcom/facebook/inject/Lazies;
.super Ljava/lang/Object;
.source "Lazies.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    new-instance v0, Lcom/facebook/inject/Lazies$1;

    invoke-direct {v0, p0}, Lcom/facebook/inject/Lazies$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
