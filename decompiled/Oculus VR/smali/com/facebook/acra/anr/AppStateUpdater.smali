.class public abstract Lcom/facebook/acra/anr/AppStateUpdater;
.super Ljava/lang/Object;
.source "AppStateUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/acra/anr/AppStateUpdater$AnrState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateAnrState(Lcom/facebook/acra/anr/AppStateUpdater$AnrState;)Z
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Method needs to be overridden"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAnrState(Lcom/facebook/acra/anr/AppStateUpdater$AnrState;Ljava/lang/Runnable;)Z
    .locals 1
    .param p2    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/facebook/acra/anr/AppStateUpdater;->updateAnrState(Lcom/facebook/acra/anr/AppStateUpdater$AnrState;)Z

    move-result v0

    return v0
.end method
