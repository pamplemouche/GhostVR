.class public final enum Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;
.super Ljava/lang/Enum;
.source "AssistantInteractionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

.field public static final enum FINISHED_PROCESSING:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

.field public static final enum INACTIVE:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

.field public static final enum LISTENING:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

.field public static final enum PROCESSING:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

.field public static final enum RESPONDING:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

.field public static final enum SPEECH_ENDING:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

.field public static final enum SPEECH_PREPARED:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

.field public static final enum SPEECH_STARTING:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 6
    new-instance v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    const/4 v1, 0x0

    const-string v2, "INACTIVE"

    invoke-direct {v0, v2, v1}, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;->INACTIVE:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    .line 7
    new-instance v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    const/4 v2, 0x1

    const-string v3, "LISTENING"

    invoke-direct {v0, v3, v2}, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;->LISTENING:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    .line 8
    new-instance v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    const/4 v3, 0x2

    const-string v4, "PROCESSING"

    invoke-direct {v0, v4, v3}, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;->PROCESSING:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    .line 9
    new-instance v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    const/4 v4, 0x3

    const-string v5, "FINISHED_PROCESSING"

    invoke-direct {v0, v5, v4}, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;->FINISHED_PROCESSING:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    .line 10
    new-instance v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    const/4 v5, 0x4

    const-string v6, "RESPONDING"

    invoke-direct {v0, v6, v5}, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;->RESPONDING:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    .line 11
    new-instance v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    const/4 v6, 0x5

    const-string v7, "SPEECH_PREPARED"

    invoke-direct {v0, v7, v6}, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;->SPEECH_PREPARED:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    .line 12
    new-instance v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    const/4 v7, 0x6

    const-string v8, "SPEECH_STARTING"

    invoke-direct {v0, v8, v7}, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;->SPEECH_STARTING:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    .line 13
    new-instance v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    const/4 v8, 0x7

    const-string v9, "SPEECH_ENDING"

    invoke-direct {v0, v9, v8}, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;->SPEECH_ENDING:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    const/16 v0, 0x8

    .line 5
    new-array v0, v0, [Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    sget-object v9, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;->INACTIVE:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    aput-object v9, v0, v1

    sget-object v1, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;->LISTENING:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;->PROCESSING:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;->FINISHED_PROCESSING:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;->RESPONDING:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;->SPEECH_PREPARED:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;->SPEECH_STARTING:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;->SPEECH_ENDING:Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    aput-object v1, v0, v8

    sput-object v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;->$VALUES:[Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;
    .locals 1

    .line 5
    const-class v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    return-object p0
.end method

.method public static values()[Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;
    .locals 1

    .line 5
    sget-object v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;->$VALUES:[Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    invoke-virtual {v0}, [Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;

    return-object v0
.end method
