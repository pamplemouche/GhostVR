.class public final Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;
.super Ljava/lang/Object;
.source "OVRErrorOrReleaseCallback.java"


# instance fields
.field final mClientErrorCallbackPointer:J

.field final mClientReleaseCallbackPointer:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;->mClientReleaseCallbackPointer:J

    .line 21
    iput-wide p3, p0, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;->mClientErrorCallbackPointer:J

    .line 22
    return-void
.end method


# virtual methods
.method public onClientError(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;->mClientErrorCallbackPointer:J

    invoke-static {p1, p2, v0, v1}, Lcom/oculus/platform/OVR;->nativeHttpError(ILjava/lang/String;J)V

    .line 30
    return-void
.end method

.method public onClientRelease()V
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;->mClientReleaseCallbackPointer:J

    invoke-static {v0, v1}, Lcom/oculus/platform/OVR;->nativeHttpClientRelease(J)V

    .line 26
    return-void
.end method
