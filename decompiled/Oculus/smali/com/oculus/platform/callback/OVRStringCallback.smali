.class public final Lcom/oculus/platform/callback/OVRStringCallback;
.super Ljava/lang/Object;
.source "OVRStringCallback.java"


# instance fields
.field final mClientErrorCallbackPointer:J

.field final mClientSuccessCallbackPointer:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/oculus/platform/callback/OVRStringCallback;->mClientSuccessCallbackPointer:J

    .line 13
    iput-wide p3, p0, Lcom/oculus/platform/callback/OVRStringCallback;->mClientErrorCallbackPointer:J

    .line 14
    return-void
.end method


# virtual methods
.method public onClientError(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/oculus/platform/callback/OVRStringCallback;->mClientErrorCallbackPointer:J

    invoke-static {p1, p2, v0, v1}, Lcom/oculus/platform/OVR;->nativeHttpError(ILjava/lang/String;J)V

    .line 22
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/oculus/platform/callback/OVRStringCallback;->mClientSuccessCallbackPointer:J

    invoke-static {p1, v0, v1}, Lcom/oculus/platform/OVR;->nativeHttpSuccess(Ljava/lang/String;J)V

    .line 18
    return-void
.end method
