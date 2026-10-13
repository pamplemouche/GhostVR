.class Lcom/oculus/vrguardianservice/VrGuardianClient$LinkDeathHandler;
.super Ljava/lang/Object;
.source "VrGuardianClient.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrguardianservice/VrGuardianClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkDeathHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrguardianservice/VrGuardianClient;


# direct methods
.method private constructor <init>(Lcom/oculus/vrguardianservice/VrGuardianClient;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/oculus/vrguardianservice/VrGuardianClient$LinkDeathHandler;->this$0:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/vrguardianservice/VrGuardianClient;Lcom/oculus/vrguardianservice/VrGuardianClient$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/oculus/vrguardianservice/VrGuardianClient$LinkDeathHandler;-><init>(Lcom/oculus/vrguardianservice/VrGuardianClient;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "VrGuardianClient"

    const-string v1, "VrGuardianClient: guardian service has died, finishing"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient$LinkDeathHandler;->this$0:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-static {v0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->access$100(Lcom/oculus/vrguardianservice/VrGuardianClient;)Lcom/oculus/vrguardianservice/IVrGuardianService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient$LinkDeathHandler;->this$0:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-static {v0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->access$200(Lcom/oculus/vrguardianservice/VrGuardianClient;)Lcom/oculus/vrguardianservice/IVrGuardianClient;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    iget-object v1, p0, Lcom/oculus/vrguardianservice/VrGuardianClient$LinkDeathHandler;->this$0:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-static {v1}, Lcom/oculus/vrguardianservice/VrGuardianClient;->access$300(Lcom/oculus/vrguardianservice/VrGuardianClient;)V

    if-eqz v0, :cond_1

    const-string v0, "VrGuardianClient"

    const-string v1, "VrGuardianClient: guardian service has died, reconnecting"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient$LinkDeathHandler;->this$0:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-virtual {v0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->ensureConnection()Z

    :cond_1
    return-void
.end method
