.class synthetic Lcom/oculus/video/Video$1;
.super Ljava/lang/Object;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oculus$video$projection$ImageStereoMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 378
    invoke-static {}, Lcom/oculus/video/projection/ImageStereoMode;->values()[Lcom/oculus/video/projection/ImageStereoMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oculus/video/Video$1;->$SwitchMap$com$oculus$video$projection$ImageStereoMode:[I

    :try_start_0
    sget-object v0, Lcom/oculus/video/Video$1;->$SwitchMap$com$oculus$video$projection$ImageStereoMode:[I

    sget-object v1, Lcom/oculus/video/projection/ImageStereoMode;->SM_LEFT_RIGHT_3D:Lcom/oculus/video/projection/ImageStereoMode;

    invoke-virtual {v1}, Lcom/oculus/video/projection/ImageStereoMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/oculus/video/Video$1;->$SwitchMap$com$oculus$video$projection$ImageStereoMode:[I

    sget-object v1, Lcom/oculus/video/projection/ImageStereoMode;->SM_RIGHT_LEFT_3D:Lcom/oculus/video/projection/ImageStereoMode;

    invoke-virtual {v1}, Lcom/oculus/video/projection/ImageStereoMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/oculus/video/Video$1;->$SwitchMap$com$oculus$video$projection$ImageStereoMode:[I

    sget-object v1, Lcom/oculus/video/projection/ImageStereoMode;->SM_TOP_BOTTOM_3D:Lcom/oculus/video/projection/ImageStereoMode;

    invoke-virtual {v1}, Lcom/oculus/video/projection/ImageStereoMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/oculus/video/Video$1;->$SwitchMap$com$oculus$video$projection$ImageStereoMode:[I

    sget-object v1, Lcom/oculus/video/projection/ImageStereoMode;->SM_BOTTOM_TOP_3D:Lcom/oculus/video/projection/ImageStereoMode;

    invoke-virtual {v1}, Lcom/oculus/video/projection/ImageStereoMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/oculus/video/Video$1;->$SwitchMap$com$oculus$video$projection$ImageStereoMode:[I

    sget-object v1, Lcom/oculus/video/projection/ImageStereoMode;->SM_2D:Lcom/oculus/video/projection/ImageStereoMode;

    invoke-virtual {v1}, Lcom/oculus/video/projection/ImageStereoMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/oculus/video/Video$1;->$SwitchMap$com$oculus$video$projection$ImageStereoMode:[I

    sget-object v1, Lcom/oculus/video/projection/ImageStereoMode;->UNKNOWN:Lcom/oculus/video/projection/ImageStereoMode;

    invoke-virtual {v1}, Lcom/oculus/video/projection/ImageStereoMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
