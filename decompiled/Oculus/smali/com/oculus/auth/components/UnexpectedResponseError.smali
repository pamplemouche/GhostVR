.class public final Lcom/oculus/auth/components/UnexpectedResponseError;
.super Lcom/oculus/auth/components/MarshallableError;
.source "UnexpectedResponseError.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, -0x7

    invoke-direct {p0, v0}, Lcom/oculus/auth/components/MarshallableError;-><init>(I)V

    .line 14
    return-void
.end method
