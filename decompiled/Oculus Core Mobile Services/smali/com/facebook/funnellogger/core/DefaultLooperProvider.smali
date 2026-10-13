.class public Lcom/facebook/funnellogger/core/DefaultLooperProvider;
.super Ljava/lang/Object;
.source "DefaultLooperProvider.java"

# interfaces
.implements Lcom/facebook/funnellogger/core/LooperProvider;


# instance fields
.field private mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.os.HandlerThread._Constructor"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/facebook/funnellogger/core/DefaultLooperProvider;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "funnellogger-worker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 20
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 21
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/funnellogger/core/DefaultLooperProvider;->mLooper:Landroid/os/Looper;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/facebook/funnellogger/core/DefaultLooperProvider;->mLooper:Landroid/os/Looper;

    return-object v0
.end method
