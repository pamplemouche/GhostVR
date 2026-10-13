.class final Lcom/oculus/platform/util/Util$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/util/Util;->handleClientError(Landroid/os/Handler;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Lcom/oculus/platform/util/OVRError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$error:Lcom/oculus/platform/util/OVRError;

.field final synthetic val$nullableCallback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;


# direct methods
.method constructor <init>(Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Lcom/oculus/platform/util/OVRError;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/oculus/platform/util/Util$2;->val$nullableCallback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    iput-object p2, p0, Lcom/oculus/platform/util/Util$2;->val$error:Lcom/oculus/platform/util/OVRError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oculus/platform/util/Util$2;->val$nullableCallback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    iget-object v1, p0, Lcom/oculus/platform/util/Util$2;->val$error:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    iget-object v2, p0, Lcom/oculus/platform/util/Util$2;->val$error:Lcom/oculus/platform/util/OVRError;

    iget-object v2, v2, Lcom/oculus/platform/util/OVRError;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;->onClientError(ILjava/lang/String;)V

    .line 114
    return-void
.end method
