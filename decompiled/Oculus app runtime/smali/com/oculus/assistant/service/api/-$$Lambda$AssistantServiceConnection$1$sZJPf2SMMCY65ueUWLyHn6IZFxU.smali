.class public final synthetic Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$sZJPf2SMMCY65ueUWLyHn6IZFxU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/oculus/assistant/service/api/AssistantServiceConnection$Callback;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$sZJPf2SMMCY65ueUWLyHn6IZFxU;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$sZJPf2SMMCY65ueUWLyHn6IZFxU;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;

    invoke-static {v0, p1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection$1;->lambda$onAssistantResponse$3(Ljava/lang/String;Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;)Z

    move-result p1

    return p1
.end method
