.class public final synthetic Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$OdxV3IVeP_IqgnwSbCUmsLQXaqQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/oculus/assistant/service/api/AssistantServiceConnection$Callback;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$OdxV3IVeP_IqgnwSbCUmsLQXaqQ;->f$0:Z

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$OdxV3IVeP_IqgnwSbCUmsLQXaqQ;->f$0:Z

    check-cast p1, Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;

    invoke-static {v0, p1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection$1;->lambda$onInteractionCompleted$4(ZLcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;)Z

    move-result p1

    return p1
.end method
