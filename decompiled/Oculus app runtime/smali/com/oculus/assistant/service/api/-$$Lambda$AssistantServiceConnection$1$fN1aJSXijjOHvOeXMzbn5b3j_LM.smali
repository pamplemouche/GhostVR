.class public final synthetic Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$fN1aJSXijjOHvOeXMzbn5b3j_LM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/oculus/assistant/service/api/AssistantServiceConnection$Callback;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$fN1aJSXijjOHvOeXMzbn5b3j_LM;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$fN1aJSXijjOHvOeXMzbn5b3j_LM;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$fN1aJSXijjOHvOeXMzbn5b3j_LM;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$fN1aJSXijjOHvOeXMzbn5b3j_LM;->f$1:Z

    check-cast p1, Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;

    invoke-static {v0, v1, p1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection$1;->lambda$onTranscriptionChanged$2(Ljava/lang/String;ZLcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;)Z

    move-result p1

    return p1
.end method
