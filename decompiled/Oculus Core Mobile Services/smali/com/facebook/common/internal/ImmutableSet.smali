.class public Lcom/facebook/common/internal/ImmutableSet;
.super Ljava/util/HashSet;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashSet",
        "<TE;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 23
    return-void
.end method

.method public static copyOf(Ljava/util/Set;)Lcom/facebook/common/internal/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Lcom/facebook/common/internal/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/facebook/common/internal/ImmutableSet;

    invoke-direct {v0, p0}, Lcom/facebook/common/internal/ImmutableSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
