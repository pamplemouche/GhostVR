.class public final enum Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;
.super Ljava/lang/Enum;
.source "AssistantInteractionState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FINISHED_PROCESSING:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

.field public static final enum INACTIVE:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

.field public static final enum LISTENING:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

.field public static final enum PROCESSING:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

.field public static final enum RESPONDING:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

.field public static final enum SPEECH_ENDING:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

.field public static final enum SPEECH_PREPARED:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

.field public static final enum SPEECH_STARTING:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 10
    new-instance v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    const/4 v1, 0x0

    const-string v2, "INACTIVE"

    invoke-direct {v0, v2, v1}, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->INACTIVE:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    .line 11
    new-instance v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    const/4 v2, 0x1

    const-string v3, "LISTENING"

    invoke-direct {v0, v3, v2}, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->LISTENING:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    .line 12
    new-instance v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    const/4 v3, 0x2

    const-string v4, "FINISHED_PROCESSING"

    invoke-direct {v0, v4, v3}, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->FINISHED_PROCESSING:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    .line 13
    new-instance v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    const/4 v4, 0x3

    const-string v5, "PROCESSING"

    invoke-direct {v0, v5, v4}, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->PROCESSING:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    .line 14
    new-instance v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    const/4 v5, 0x4

    const-string v6, "RESPONDING"

    invoke-direct {v0, v6, v5}, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->RESPONDING:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    .line 15
    new-instance v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    const/4 v6, 0x5

    const-string v7, "SPEECH_PREPARED"

    invoke-direct {v0, v7, v6}, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->SPEECH_PREPARED:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    .line 16
    new-instance v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    const/4 v7, 0x6

    const-string v8, "SPEECH_STARTING"

    invoke-direct {v0, v8, v7}, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->SPEECH_STARTING:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    .line 17
    new-instance v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    const/4 v8, 0x7

    const-string v9, "SPEECH_ENDING"

    invoke-direct {v0, v9, v8}, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->SPEECH_ENDING:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    const/16 v0, 0x8

    .line 9
    new-array v0, v0, [Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    sget-object v9, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->INACTIVE:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    aput-object v9, v0, v1

    sget-object v1, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->LISTENING:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->FINISHED_PROCESSING:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->PROCESSING:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->RESPONDING:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->SPEECH_PREPARED:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->SPEECH_STARTING:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->SPEECH_ENDING:Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    aput-object v1, v0, v8

    sput-object v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->$VALUES:[Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    .line 19
    new-instance v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState$1;

    invoke-direct {v0}, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState$1;-><init>()V

    sput-object v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;
    .locals 1

    .line 9
    const-class v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    return-object p0
.end method

.method public static values()[Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;
    .locals 1

    .line 9
    sget-object v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->$VALUES:[Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    invoke-virtual {v0}, [Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
