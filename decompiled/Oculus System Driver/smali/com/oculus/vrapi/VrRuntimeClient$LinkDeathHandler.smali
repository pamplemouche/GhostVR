.class Lcom/oculus/vrapi/VrRuntimeClient$LinkDeathHandler;
.super Ljava/lang/Object;
.source "VrRuntimeClient.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/VrRuntimeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkDeathHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/vrapi/VrRuntimeClient$1;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/oculus/vrapi/VrRuntimeClient$LinkDeathHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "VrRuntimeClient"

    const-string v1, "VrRuntimeClient: runtime service has died, finishing"

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->finishClient()V

    .line 106
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->access$200()V

    return-void
.end method
