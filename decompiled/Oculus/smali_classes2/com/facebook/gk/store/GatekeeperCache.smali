.class public Lcom/facebook/gk/store/GatekeeperCache;
.super Ljava/lang/Object;
.source "GatekeeperCache.java"


# instance fields
.field private final mFinalStates:[Lcom/facebook/common/util/TriState;

.field private final mOverriddenStates:[Lcom/facebook/common/util/TriState;

.field private final mStates:[Lcom/facebook/common/util/TriState;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/facebook/gk/store/GatekeeperCache;->createNonInitializedArray(I)[Lcom/facebook/common/util/TriState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gk/store/GatekeeperCache;->mStates:[Lcom/facebook/common/util/TriState;

    .line 21
    invoke-static {p1}, Lcom/facebook/gk/store/GatekeeperCache;->createNonInitializedArray(I)[Lcom/facebook/common/util/TriState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gk/store/GatekeeperCache;->mOverriddenStates:[Lcom/facebook/common/util/TriState;

    .line 22
    invoke-static {p1}, Lcom/facebook/gk/store/GatekeeperCache;->createNonInitializedArray(I)[Lcom/facebook/common/util/TriState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gk/store/GatekeeperCache;->mFinalStates:[Lcom/facebook/common/util/TriState;

    .line 23
    return-void
.end method

.method private static createNonInitializedArray(I)[Lcom/facebook/common/util/TriState;
    .locals 3

    .prologue
    .line 26
    new-array v1, p0, [Lcom/facebook/common/util/TriState;

    .line 27
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 28
    sget-object v2, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    aput-object v2, v1, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    return-object v1
.end method
