.class synthetic Lcom/oculus/horizon/service_media/OVRMediaServiceManager$4;
.super Ljava/lang/Object;
.source "OVRMediaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service_media/OVRMediaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oculus$horizon$service_media$OVRMediaServiceManager$CaptureErrorType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 766
    invoke-static {}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;->values()[Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$4;->$SwitchMap$com$oculus$horizon$service_media$OVRMediaServiceManager$CaptureErrorType:[I

    :try_start_0
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$4;->$SwitchMap$com$oculus$horizon$service_media$OVRMediaServiceManager$CaptureErrorType:[I

    sget-object v1, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;->STOPPED_BY_ANOTHER_CAPTURE:Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;

    invoke-virtual {v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
