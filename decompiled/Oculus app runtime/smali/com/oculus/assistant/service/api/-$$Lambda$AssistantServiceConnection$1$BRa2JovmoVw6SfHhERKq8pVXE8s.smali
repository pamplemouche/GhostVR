.class public final synthetic Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$BRa2JovmoVw6SfHhERKq8pVXE8s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/oculus/assistant/service/api/AssistantServiceConnection$Callback;


# instance fields
.field private final synthetic f$0:Lcom/oculus/assistant/service/api/attention/AssistantErrorType;


# direct methods
.method public synthetic constructor <init>(Lcom/oculus/assistant/service/api/attention/AssistantErrorType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$BRa2JovmoVw6SfHhERKq8pVXE8s;->f$0:Lcom/oculus/assistant/service/api/attention/AssistantErrorType;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$BRa2JovmoVw6SfHhERKq8pVXE8s;->f$0:Lcom/oculus/assistant/service/api/attention/AssistantErrorType;

    check-cast p1, Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;

    invoke-static {v0, p1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection$1;->lambda$onError$5(Lcom/oculus/assistant/service/api/attention/AssistantErrorType;Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;)Z

    move-result p1

    return p1
.end method
