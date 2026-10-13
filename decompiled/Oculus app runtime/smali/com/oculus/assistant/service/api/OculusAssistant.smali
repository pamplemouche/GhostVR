.class public Lcom/oculus/assistant/service/api/OculusAssistant;
.super Ljava/lang/Object;
.source "OculusAssistant.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindService(Landroid/content/Context;)Lcom/oculus/assistant/service/api/AssistantServiceConnection;
    .locals 1

    .line 32
    new-instance v0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    invoke-direct {v0}, Lcom/oculus/assistant/service/api/AssistantServiceConnection;-><init>()V

    invoke-static {p0, v0}, Lcom/oculus/assistant/service/api/OculusAssistant;->bindService(Landroid/content/Context;Lcom/oculus/assistant/service/api/AssistantServiceConnection;)Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    move-result-object p0

    return-object p0
.end method

.method public static bindService(Landroid/content/Context;Lcom/oculus/assistant/service/api/AssistantServiceConnection;)Lcom/oculus/assistant/service/api/AssistantServiceConnection;
    .locals 2

    .line 44
    invoke-static {}, Lcom/oculus/assistant/service/api/OculusAssistant;->getServiceIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-object p1
.end method

.method public static getServiceIntent()Landroid/content/Intent;
    .locals 4

    .line 19
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 20
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.assistant"

    const-string v3, "com.oculus.assistant.service.AssistantService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method
