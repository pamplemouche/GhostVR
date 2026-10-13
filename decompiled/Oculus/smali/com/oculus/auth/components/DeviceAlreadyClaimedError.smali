.class final Lcom/oculus/auth/components/DeviceAlreadyClaimedError;
.super Lcom/oculus/auth/components/MarshallableError;
.source "DeviceAlreadyClaimedError.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 13
    const/16 v0, -0xe

    invoke-direct {p0, v0}, Lcom/oculus/auth/components/MarshallableError;-><init>(I)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/oculus/auth/components/DeviceAlreadyClaimedError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 15
    return-void
.end method
