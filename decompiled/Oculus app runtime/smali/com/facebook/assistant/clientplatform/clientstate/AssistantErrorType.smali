.class public final enum Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;
.super Ljava/lang/Enum;
.source "AssistantErrorType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

.field public static final enum CONNECTION_NOT_AVAILABLE:Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum MIC_NOT_AVAILABLE:Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

.field public static final enum NOT_LOGGED_IN:Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

.field public static final enum SERVER_ERROR:Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

.field public static final enum UNKNOWN:Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;->UNKNOWN:Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

    .line 11
    new-instance v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

    const/4 v2, 0x1

    const-string v3, "MIC_NOT_AVAILABLE"

    invoke-direct {v0, v3, v2}, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;->MIC_NOT_AVAILABLE:Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

    .line 12
    new-instance v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

    const/4 v3, 0x2

    const-string v4, "CONNECTION_NOT_AVAILABLE"

    invoke-direct {v0, v4, v3}, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;->CONNECTION_NOT_AVAILABLE:Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

    .line 13
    new-instance v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

    const/4 v4, 0x3

    const-string v5, "NOT_LOGGED_IN"

    invoke-direct {v0, v5, v4}, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;->NOT_LOGGED_IN:Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

    .line 14
    new-instance v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

    const/4 v5, 0x4

    const-string v6, "SERVER_ERROR"

    invoke-direct {v0, v6, v5}, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;->SERVER_ERROR:Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

    const/4 v0, 0x5

    .line 9
    new-array v0, v0, [Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

    sget-object v6, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;->UNKNOWN:Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;->MIC_NOT_AVAILABLE:Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;->CONNECTION_NOT_AVAILABLE:Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;->NOT_LOGGED_IN:Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;->SERVER_ERROR:Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;->$VALUES:[Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

    .line 16
    new-instance v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType$1;

    invoke-direct {v0}, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType$1;-><init>()V

    sput-object v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;
    .locals 1

    .line 9
    const-class v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;
    .locals 1

    .line 9
    sget-object v0, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;->$VALUES:[Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

    invoke-virtual {v0}, [Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;

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

    .line 31
    invoke-virtual {p0}, Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
