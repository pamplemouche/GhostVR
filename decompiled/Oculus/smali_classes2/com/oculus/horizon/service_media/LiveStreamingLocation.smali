.class final enum Lcom/oculus/horizon/service_media/LiveStreamingLocation;
.super Ljava/lang/Enum;
.source "OVRMediaServiceEnums.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/service_media/LiveStreamingLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/service_media/LiveStreamingLocation;

.field public static final enum GROUP:Lcom/oculus/horizon/service_media/LiveStreamingLocation;

.field public static final INTENT_KEY:Ljava/lang/String; = "location_selector"

.field public static final enum PAGE:Lcom/oculus/horizon/service_media/LiveStreamingLocation;

.field public static final enum TIMELINE:Lcom/oculus/horizon/service_media/LiveStreamingLocation;


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

    .line 53
    new-instance v0, Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    const-string v1, "TIMELINE"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/service_media/LiveStreamingLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->TIMELINE:Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    .line 54
    new-instance v0, Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    const-string v1, "GROUP"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/service_media/LiveStreamingLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->GROUP:Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    .line 55
    new-instance v0, Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    const-string v1, "PAGE"

    invoke-direct {v0, v1, v3, v5}, Lcom/oculus/horizon/service_media/LiveStreamingLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->PAGE:Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    .line 52
    new-array v0, v5, [Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    sget-object v1, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->TIMELINE:Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->GROUP:Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->PAGE:Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->$VALUES:[Lcom/oculus/horizon/service_media/LiveStreamingLocation;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->value:I

    .line 62
    return-void
.end method

.method public static fromValue(I)Lcom/oculus/horizon/service_media/LiveStreamingLocation;
    .locals 5

    .prologue
    .line 69
    invoke-static {}, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->values()[Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 70
    invoke-virtual {v3}, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 71
    return-object v3

    .line 69
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/service_media/LiveStreamingLocation;
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/service_media/LiveStreamingLocation;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->$VALUES:[Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    invoke-virtual {v0}, [Lcom/oculus/horizon/service_media/LiveStreamingLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/service_media/LiveStreamingLocation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/oculus/horizon/service_media/LiveStreamingLocation;->value:I

    return v0
.end method
