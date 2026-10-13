.class public final synthetic Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$jPxenqOyb0t3JP81w92wwRTTBJk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/oculus/assistant/service/api/AssistantServiceConnection$Callback;


# instance fields
.field private final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$jPxenqOyb0t3JP81w92wwRTTBJk;->f$0:F

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$jPxenqOyb0t3JP81w92wwRTTBJk;->f$0:F

    check-cast p1, Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;

    invoke-static {v0, p1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection$1;->lambda$onInteractionPropertiesChanged$1(FLcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;)Z

    move-result p1

    return p1
.end method
