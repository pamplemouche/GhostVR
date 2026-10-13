.class synthetic Lcom/oculus/video/audio/TbeAudioSpatializer$1;
.super Ljava/lang/Object;
.source "TbeAudioSpatializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/audio/TbeAudioSpatializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oculus$video$audio$AudioChannelLayout:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 227
    invoke-static {}, Lcom/oculus/video/audio/AudioChannelLayout;->values()[Lcom/oculus/video/audio/AudioChannelLayout;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oculus/video/audio/TbeAudioSpatializer$1;->$SwitchMap$com$oculus$video$audio$AudioChannelLayout:[I

    :try_start_0
    sget-object v0, Lcom/oculus/video/audio/TbeAudioSpatializer$1;->$SwitchMap$com$oculus$video$audio$AudioChannelLayout:[I

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->MONO:Lcom/oculus/video/audio/AudioChannelLayout;

    invoke-virtual {v1}, Lcom/oculus/video/audio/AudioChannelLayout;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/oculus/video/audio/TbeAudioSpatializer$1;->$SwitchMap$com$oculus$video$audio$AudioChannelLayout:[I

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->STEREO:Lcom/oculus/video/audio/AudioChannelLayout;

    invoke-virtual {v1}, Lcom/oculus/video/audio/AudioChannelLayout;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/oculus/video/audio/TbeAudioSpatializer$1;->$SwitchMap$com$oculus$video$audio$AudioChannelLayout:[I

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_4:Lcom/oculus/video/audio/AudioChannelLayout;

    invoke-virtual {v1}, Lcom/oculus/video/audio/AudioChannelLayout;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/oculus/video/audio/TbeAudioSpatializer$1;->$SwitchMap$com$oculus$video$audio$AudioChannelLayout:[I

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_4:Lcom/oculus/video/audio/AudioChannelLayout;

    invoke-virtual {v1}, Lcom/oculus/video/audio/AudioChannelLayout;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/oculus/video/audio/TbeAudioSpatializer$1;->$SwitchMap$com$oculus$video$audio$AudioChannelLayout:[I

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_4_4_2:Lcom/oculus/video/audio/AudioChannelLayout;

    invoke-virtual {v1}, Lcom/oculus/video/audio/AudioChannelLayout;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/oculus/video/audio/TbeAudioSpatializer$1;->$SwitchMap$com$oculus$video$audio$AudioChannelLayout:[I

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->S5_1:Lcom/oculus/video/audio/AudioChannelLayout;

    invoke-virtual {v1}, Lcom/oculus/video/audio/AudioChannelLayout;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/oculus/video/audio/TbeAudioSpatializer$1;->$SwitchMap$com$oculus$video$audio$AudioChannelLayout:[I

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->S7_1:Lcom/oculus/video/audio/AudioChannelLayout;

    invoke-virtual {v1}, Lcom/oculus/video/audio/AudioChannelLayout;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
