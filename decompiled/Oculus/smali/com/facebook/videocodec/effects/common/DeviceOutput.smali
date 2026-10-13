.class public final enum Lcom/facebook/videocodec/effects/common/DeviceOutput;
.super Ljava/lang/Enum;
.source "DeviceOutput.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/videocodec/effects/common/DeviceOutput;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/videocodec/effects/common/DeviceOutput;

.field public static final enum CAPTURE:Lcom/facebook/videocodec/effects/common/DeviceOutput;

.field public static final enum CAPTURE_IMAGE:Lcom/facebook/videocodec/effects/common/DeviceOutput;

.field public static final enum OVERLAY:Lcom/facebook/videocodec/effects/common/DeviceOutput;

.field public static final enum PREVIEW:Lcom/facebook/videocodec/effects/common/DeviceOutput;


# instance fields
.field private final mOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/facebook/videocodec/effects/common/DeviceOutput;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/videocodec/effects/common/DeviceOutput;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/videocodec/effects/common/DeviceOutput;->PREVIEW:Lcom/facebook/videocodec/effects/common/DeviceOutput;

    .line 17
    new-instance v0, Lcom/facebook/videocodec/effects/common/DeviceOutput;

    const-string v1, "CAPTURE"

    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/videocodec/effects/common/DeviceOutput;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/videocodec/effects/common/DeviceOutput;->CAPTURE:Lcom/facebook/videocodec/effects/common/DeviceOutput;

    .line 20
    new-instance v0, Lcom/facebook/videocodec/effects/common/DeviceOutput;

    const-string v1, "CAPTURE_IMAGE"

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/videocodec/effects/common/DeviceOutput;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/videocodec/effects/common/DeviceOutput;->CAPTURE_IMAGE:Lcom/facebook/videocodec/effects/common/DeviceOutput;

    .line 23
    new-instance v0, Lcom/facebook/videocodec/effects/common/DeviceOutput;

    const-string v1, "OVERLAY"

    invoke-direct {v0, v1, v5, v5}, Lcom/facebook/videocodec/effects/common/DeviceOutput;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/videocodec/effects/common/DeviceOutput;->OVERLAY:Lcom/facebook/videocodec/effects/common/DeviceOutput;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/videocodec/effects/common/DeviceOutput;

    sget-object v1, Lcom/facebook/videocodec/effects/common/DeviceOutput;->PREVIEW:Lcom/facebook/videocodec/effects/common/DeviceOutput;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/videocodec/effects/common/DeviceOutput;->CAPTURE:Lcom/facebook/videocodec/effects/common/DeviceOutput;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/videocodec/effects/common/DeviceOutput;->CAPTURE_IMAGE:Lcom/facebook/videocodec/effects/common/DeviceOutput;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/videocodec/effects/common/DeviceOutput;->OVERLAY:Lcom/facebook/videocodec/effects/common/DeviceOutput;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/videocodec/effects/common/DeviceOutput;->$VALUES:[Lcom/facebook/videocodec/effects/common/DeviceOutput;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/facebook/videocodec/effects/common/DeviceOutput;->mOrder:I

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/videocodec/effects/common/DeviceOutput;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/facebook/videocodec/effects/common/DeviceOutput;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/videocodec/effects/common/DeviceOutput;

    return-object v0
.end method

.method public static values()[Lcom/facebook/videocodec/effects/common/DeviceOutput;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/facebook/videocodec/effects/common/DeviceOutput;->$VALUES:[Lcom/facebook/videocodec/effects/common/DeviceOutput;

    invoke-virtual {v0}, [Lcom/facebook/videocodec/effects/common/DeviceOutput;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/videocodec/effects/common/DeviceOutput;

    return-object v0
.end method


# virtual methods
.method public getOrder()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/facebook/videocodec/effects/common/DeviceOutput;->mOrder:I

    return v0
.end method
