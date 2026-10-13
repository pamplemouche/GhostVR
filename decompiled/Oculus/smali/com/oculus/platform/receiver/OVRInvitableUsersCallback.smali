.class public Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;
.super Ljava/lang/Object;
.source "OVRInvitableUsersCallback.java"

# interfaces
.implements Lcom/oculus/platform/receiver/OVRPlatformResultReceiver$Listener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/oculus/platform/callback/OVRStringCallback;

.field private final mResultsHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/platform/callback/OVRStringCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;->mResultsHandler:Landroid/os/Handler;

    .line 20
    iput-object p1, p0, Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;->mCallback:Lcom/oculus/platform/callback/OVRStringCallback;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;)Lcom/oculus/platform/callback/OVRStringCallback;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;->mCallback:Lcom/oculus/platform/callback/OVRStringCallback;

    return-object v0
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received OVRInvitableUsersCallback  result code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;->mResultsHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/platform/receiver/OVRInvitableUsersCallback$1;

    invoke-direct {v1, p0}, Lcom/oculus/platform/receiver/OVRInvitableUsersCallback$1;-><init>(Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;->mResultsHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/platform/receiver/OVRInvitableUsersCallback$2;

    invoke-direct {v1, p0}, Lcom/oculus/platform/receiver/OVRInvitableUsersCallback$2;-><init>(Lcom/oculus/platform/receiver/OVRInvitableUsersCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
