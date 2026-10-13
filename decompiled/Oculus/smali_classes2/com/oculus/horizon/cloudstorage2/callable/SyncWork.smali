.class public abstract Lcom/oculus/horizon/cloudstorage2/callable/SyncWork;
.super Lcom/oculus/horizon/cloudstorage2/Reportable;
.source "SyncWork.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oculus/horizon/cloudstorage2/Reportable;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/cloudstorage2/Reporter;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/oculus/horizon/cloudstorage2/Reportable;-><init>(Lcom/oculus/horizon/cloudstorage2/Reporter;)V

    .line 12
    return-void
.end method
