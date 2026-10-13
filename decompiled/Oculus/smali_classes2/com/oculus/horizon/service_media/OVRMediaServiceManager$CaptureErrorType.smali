.class final enum Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;
.super Ljava/lang/Enum;
.source "OVRMediaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service_media/OVRMediaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CaptureErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;

.field public static final enum GENERIC:Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;

.field public static final enum STOPPED_BY_ANOTHER_CAPTURE:Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    new-instance v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;

    const-string v1, "STOPPED_BY_ANOTHER_CAPTURE"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;->STOPPED_BY_ANOTHER_CAPTURE:Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;

    .line 105
    new-instance v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;

    const-string v1, "GENERIC"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;->GENERIC:Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;

    sget-object v1, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;->STOPPED_BY_ANOTHER_CAPTURE:Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;->GENERIC:Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;->$VALUES:[Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;
    .locals 1

    .prologue
    .line 103
    const-class v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;->$VALUES:[Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;

    invoke-virtual {v0}, [Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;

    return-object v0
.end method
