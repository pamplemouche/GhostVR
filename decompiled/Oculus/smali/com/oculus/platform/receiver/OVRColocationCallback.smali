.class public Lcom/oculus/platform/receiver/OVRColocationCallback;
.super Ljava/lang/Object;
.source "OVRColocationCallback.java"

# interfaces
.implements Lcom/oculus/platform/receiver/OVRPlatformResultReceiver$Listener;


# static fields
.field private static final EXTRA_KEY_RESULT:Ljava/lang/String; = "result_key"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/oculus/platform/callback/OVRStringCallback;

.field private final mResultsHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/oculus/platform/receiver/OVRColocationCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/platform/receiver/OVRColocationCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/platform/callback/OVRStringCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/oculus/platform/receiver/OVRColocationCallback;->mResultsHandler:Landroid/os/Handler;

    .line 22
    iput-object p1, p0, Lcom/oculus/platform/receiver/OVRColocationCallback;->mCallback:Lcom/oculus/platform/callback/OVRStringCallback;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/platform/receiver/OVRColocationCallback;)Lcom/oculus/platform/callback/OVRStringCallback;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/oculus/platform/receiver/OVRColocationCallback;->mCallback:Lcom/oculus/platform/callback/OVRStringCallback;

    return-object v0
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 31
    sget-object v0, Lcom/oculus/platform/receiver/OVRColocationCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "result_key"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string/jumbo v0, "result_key"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/oculus/platform/receiver/OVRColocationCallback;->mResultsHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oculus/platform/receiver/OVRColocationCallback$1;

    invoke-direct {v2, p0, v0}, Lcom/oculus/platform/receiver/OVRColocationCallback$1;-><init>(Lcom/oculus/platform/receiver/OVRColocationCallback;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/oculus/platform/receiver/OVRColocationCallback;->mResultsHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oculus/platform/receiver/OVRColocationCallback$2;

    invoke-direct {v2, p0, v0}, Lcom/oculus/platform/receiver/OVRColocationCallback$2;-><init>(Lcom/oculus/platform/receiver/OVRColocationCallback;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
