.class synthetic Lcom/oculus/assistant/service/api/AssistantServiceConnection$2;
.super Ljava/lang/Object;
.source "AssistantServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/assistant/service/api/AssistantServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oculus$assistant$service$api$attention$AssistantInteractionState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    invoke-static {}, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->values()[Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oculus/assistant/service/api/AssistantServiceConnection$2;->$SwitchMap$com$oculus$assistant$service$api$attention$AssistantInteractionState:[I

    :try_start_0
    sget-object v0, Lcom/oculus/assistant/service/api/AssistantServiceConnection$2;->$SwitchMap$com$oculus$assistant$service$api$attention$AssistantInteractionState:[I

    sget-object v1, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->INACTIVE:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    invoke-virtual {v1}, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
