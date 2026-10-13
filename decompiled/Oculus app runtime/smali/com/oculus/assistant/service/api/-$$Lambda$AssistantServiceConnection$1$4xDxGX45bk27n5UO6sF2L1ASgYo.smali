.class public final synthetic Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$4xDxGX45bk27n5UO6sF2L1ASgYo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/oculus/assistant/service/api/AssistantServiceConnection$Callback;


# instance fields
.field private final synthetic f$0:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;


# direct methods
.method public synthetic constructor <init>(Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$4xDxGX45bk27n5UO6sF2L1ASgYo;->f$0:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$4xDxGX45bk27n5UO6sF2L1ASgYo;->f$0:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    check-cast p1, Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;

    invoke-static {v0, p1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection$1;->lambda$onInteractionStateChanged$0(Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;)Z

    move-result p1

    return p1
.end method
