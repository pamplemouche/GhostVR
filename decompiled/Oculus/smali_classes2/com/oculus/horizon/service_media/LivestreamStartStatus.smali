.class final enum Lcom/oculus/horizon/service_media/LivestreamStartStatus;
.super Ljava/lang/Enum;
.source "OVRMediaServiceEnums.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/service_media/LivestreamStartStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/service_media/LivestreamStartStatus;

.field public static final enum MISSING_PARAMETERS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

.field public static final enum NO_FB_CONNECT:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

.field public static final enum NO_PACKAGE_SET:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

.field public static final enum NO_SESSION_ID:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

.field public static final enum SUCCESS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 7
    new-instance v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4, v3}, Lcom/oculus/horizon/service_media/LivestreamStartStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->SUCCESS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    .line 8
    new-instance v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    const-string v1, "NO_PACKAGE_SET"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/horizon/service_media/LivestreamStartStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->NO_PACKAGE_SET:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    .line 9
    new-instance v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    const-string v1, "NO_FB_CONNECT"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/horizon/service_media/LivestreamStartStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->NO_FB_CONNECT:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    .line 10
    new-instance v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    const-string v1, "NO_SESSION_ID"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/oculus/horizon/service_media/LivestreamStartStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->NO_SESSION_ID:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    .line 11
    new-instance v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    const-string v1, "MISSING_PARAMETERS"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/oculus/horizon/service_media/LivestreamStartStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->MISSING_PARAMETERS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    sget-object v1, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->SUCCESS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->NO_PACKAGE_SET:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->NO_FB_CONNECT:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->NO_SESSION_ID:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->MISSING_PARAMETERS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    aput-object v1, v0, v7

    sput-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->$VALUES:[Lcom/oculus/horizon/service_media/LivestreamStartStatus;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->value:I

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/service_media/LivestreamStartStatus;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/service_media/LivestreamStartStatus;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->$VALUES:[Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-virtual {v0}, [Lcom/oculus/horizon/service_media/LivestreamStartStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->value:I

    return v0
.end method
