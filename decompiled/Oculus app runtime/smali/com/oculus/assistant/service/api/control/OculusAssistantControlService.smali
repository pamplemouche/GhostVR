.class public Lcom/oculus/assistant/service/api/control/OculusAssistantControlService;
.super Ljava/lang/Object;
.source "OculusAssistantControlService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Assistant:OACS"


# instance fields
.field private final mService:Lcom/oculus/assistant/service/api/control/IOculusAssistantControlService;


# direct methods
.method public constructor <init>(Lcom/oculus/assistant/service/api/control/IOculusAssistantControlService;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oculus/assistant/service/api/control/OculusAssistantControlService;->mService:Lcom/oculus/assistant/service/api/control/IOculusAssistantControlService;

    return-void
.end method


# virtual methods
.method public activateAssistant()V
    .locals 3

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/oculus/assistant/service/api/control/OculusAssistantControlService;->mService:Lcom/oculus/assistant/service/api/control/IOculusAssistantControlService;

    invoke-interface {v0}, Lcom/oculus/assistant/service/api/control/IOculusAssistantControlService;->activateAssistant()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Assistant:OACS"

    const-string v2, "activateAssistant: "

    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public stopAssistant()V
    .locals 3

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/oculus/assistant/service/api/control/OculusAssistantControlService;->mService:Lcom/oculus/assistant/service/api/control/IOculusAssistantControlService;

    invoke-interface {v0}, Lcom/oculus/assistant/service/api/control/IOculusAssistantControlService;->stopAssistant()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Assistant:OACS"

    const-string v2, "stopAssistant: "

    .line 37
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
