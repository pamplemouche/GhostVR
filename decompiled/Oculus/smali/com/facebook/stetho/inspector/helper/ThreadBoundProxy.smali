.class public abstract Lcom/facebook/stetho/inspector/helper/ThreadBoundProxy;
.super Ljava/lang/Object;
.source "ThreadBoundProxy.java"

# interfaces
.implements Lcom/facebook/stetho/common/ThreadBound;


# instance fields
.field private final mEnforcer:Lcom/facebook/stetho/common/ThreadBound;


# direct methods
.method public constructor <init>(Lcom/facebook/stetho/common/ThreadBound;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/facebook/stetho/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/stetho/common/ThreadBound;

    iput-object v0, p0, Lcom/facebook/stetho/inspector/helper/ThreadBoundProxy;->mEnforcer:Lcom/facebook/stetho/common/ThreadBound;

    .line 27
    return-void
.end method


# virtual methods
.method public final verifyThreadAccess()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/stetho/inspector/helper/ThreadBoundProxy;->mEnforcer:Lcom/facebook/stetho/common/ThreadBound;

    invoke-interface {v0}, Lcom/facebook/stetho/common/ThreadBound;->verifyThreadAccess()V

    .line 37
    return-void
.end method
