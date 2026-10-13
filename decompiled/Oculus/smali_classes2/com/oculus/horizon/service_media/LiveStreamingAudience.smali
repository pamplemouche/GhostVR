.class final enum Lcom/oculus/horizon/service_media/LiveStreamingAudience;
.super Ljava/lang/Enum;
.source "OVRMediaServiceEnums.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/service_media/LiveStreamingAudience;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/service_media/LiveStreamingAudience;

.field public static final enum FRIENDS:Lcom/oculus/horizon/service_media/LiveStreamingAudience;

.field public static final INTENT_KEY:Ljava/lang/String; = "audience_selector"

.field public static final enum ONLY_ME:Lcom/oculus/horizon/service_media/LiveStreamingAudience;

.field public static final enum PUBLIC:Lcom/oculus/horizon/service_media/LiveStreamingAudience;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 81
    new-instance v0, Lcom/oculus/horizon/service_media/LiveStreamingAudience;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/service_media/LiveStreamingAudience;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/service_media/LiveStreamingAudience;->PUBLIC:Lcom/oculus/horizon/service_media/LiveStreamingAudience;

    .line 82
    new-instance v0, Lcom/oculus/horizon/service_media/LiveStreamingAudience;

    const-string v1, "FRIENDS"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/service_media/LiveStreamingAudience;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/service_media/LiveStreamingAudience;->FRIENDS:Lcom/oculus/horizon/service_media/LiveStreamingAudience;

    .line 83
    new-instance v0, Lcom/oculus/horizon/service_media/LiveStreamingAudience;

    const-string v1, "ONLY_ME"

    invoke-direct {v0, v1, v3, v5}, Lcom/oculus/horizon/service_media/LiveStreamingAudience;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/service_media/LiveStreamingAudience;->ONLY_ME:Lcom/oculus/horizon/service_media/LiveStreamingAudience;

    .line 80
    new-array v0, v5, [Lcom/oculus/horizon/service_media/LiveStreamingAudience;

    sget-object v1, Lcom/oculus/horizon/service_media/LiveStreamingAudience;->PUBLIC:Lcom/oculus/horizon/service_media/LiveStreamingAudience;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/service_media/LiveStreamingAudience;->FRIENDS:Lcom/oculus/horizon/service_media/LiveStreamingAudience;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/service_media/LiveStreamingAudience;->ONLY_ME:Lcom/oculus/horizon/service_media/LiveStreamingAudience;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/horizon/service_media/LiveStreamingAudience;->$VALUES:[Lcom/oculus/horizon/service_media/LiveStreamingAudience;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput p3, p0, Lcom/oculus/horizon/service_media/LiveStreamingAudience;->value:I

    .line 90
    return-void
.end method

.method public static fromValue(I)Lcom/oculus/horizon/service_media/LiveStreamingAudience;
    .locals 5

    .prologue
    .line 97
    invoke-static {}, Lcom/oculus/horizon/service_media/LiveStreamingAudience;->values()[Lcom/oculus/horizon/service_media/LiveStreamingAudience;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 98
    invoke-virtual {v3}, Lcom/oculus/horizon/service_media/LiveStreamingAudience;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 99
    return-object v3

    .line 97
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/service_media/LiveStreamingAudience;
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/oculus/horizon/service_media/LiveStreamingAudience;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service_media/LiveStreamingAudience;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/service_media/LiveStreamingAudience;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/oculus/horizon/service_media/LiveStreamingAudience;->$VALUES:[Lcom/oculus/horizon/service_media/LiveStreamingAudience;

    invoke-virtual {v0}, [Lcom/oculus/horizon/service_media/LiveStreamingAudience;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/service_media/LiveStreamingAudience;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/oculus/horizon/service_media/LiveStreamingAudience;->value:I

    return v0
.end method

.method public toGraphAPIString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/oculus/horizon/service_media/LiveStreamingAudience$1;->$SwitchMap$com$oculus$horizon$service_media$LiveStreamingAudience:[I

    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/LiveStreamingAudience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 108
    :pswitch_0
    const-string v0, "EVERYONE"

    .line 112
    :goto_0
    return-object v0

    .line 110
    :pswitch_1
    const-string v0, "ALL_FRIENDS"

    goto :goto_0

    .line 112
    :pswitch_2
    const-string v0, "SELF"

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
