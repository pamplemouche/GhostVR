.class public Lcom/facebook/analytics2/logger/DefaultHandlerThreadFactory;
.super Ljava/lang/Object;
.source "DefaultHandlerThreadFactory.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/HandlerThreadFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAndStartHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.os.HandlerThread._Constructor"
        }
    .end annotation

    .line 17
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-object v0
.end method

.method public createAndStartHandlerThread(Ljava/lang/String;I)Landroid/os/HandlerThread;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.os.HandlerThread._Constructor"
        }
    .end annotation

    .line 25
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 26
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-object v0
.end method
