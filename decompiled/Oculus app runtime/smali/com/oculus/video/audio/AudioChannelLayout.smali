.class public final enum Lcom/oculus/video/audio/AudioChannelLayout;
.super Ljava/lang/Enum;
.source "AudioChannelLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/video/audio/AudioChannelLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/video/audio/AudioChannelLayout;

.field public static final enum AMBIX_16:Lcom/oculus/video/audio/AudioChannelLayout;

.field public static final enum AMBIX_16_2:Lcom/oculus/video/audio/AudioChannelLayout;

.field public static final enum AMBIX_4:Lcom/oculus/video/audio/AudioChannelLayout;

.field public static final enum AMBIX_4_2:Lcom/oculus/video/audio/AudioChannelLayout;

.field public static final enum AMBIX_9:Lcom/oculus/video/audio/AudioChannelLayout;

.field public static final enum AMBIX_9_2:Lcom/oculus/video/audio/AudioChannelLayout;

.field public static final enum MONO:Lcom/oculus/video/audio/AudioChannelLayout;

.field public static final enum S5_1:Lcom/oculus/video/audio/AudioChannelLayout;

.field public static final enum S7_1:Lcom/oculus/video/audio/AudioChannelLayout;

.field public static final enum STEREO:Lcom/oculus/video/audio/AudioChannelLayout;

.field public static final enum TBE_4:Lcom/oculus/video/audio/AudioChannelLayout;

.field public static final enum TBE_4_2:Lcom/oculus/video/audio/AudioChannelLayout;

.field public static final enum TBE_4_4_2:Lcom/oculus/video/audio/AudioChannelLayout;

.field public static final enum TBE_6:Lcom/oculus/video/audio/AudioChannelLayout;

.field public static final enum TBE_6_2:Lcom/oculus/video/audio/AudioChannelLayout;

.field public static final enum TBE_8:Lcom/oculus/video/audio/AudioChannelLayout;

.field public static final enum TBE_8_2:Lcom/oculus/video/audio/AudioChannelLayout;

.field public static final enum UNKNOWN:Lcom/oculus/video/audio/AudioChannelLayout;


# instance fields
.field public final channelConfiguration:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public final priority:I

.field public final totalChannelCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 10
    new-instance v7, Lcom/oculus/video/audio/AudioChannelLayout;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const-string v3, "unknown"

    const/4 v4, -0x1

    const-string v5, "unknown"

    const/4 v6, -0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/oculus/video/audio/AudioChannelLayout;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/oculus/video/audio/AudioChannelLayout;->UNKNOWN:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 11
    new-instance v0, Lcom/oculus/video/audio/AudioChannelLayout;

    const-string v9, "MONO"

    const/4 v10, 0x1

    const-string v11, "mono"

    const/4 v12, 0x0

    const-string v13, "1"

    const/4 v14, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/oculus/video/audio/AudioChannelLayout;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->MONO:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 12
    new-instance v0, Lcom/oculus/video/audio/AudioChannelLayout;

    const-string v2, "STEREO"

    const/4 v3, 0x2

    const-string v4, "stereo"

    const/4 v5, 0x0

    const-string v6, "2"

    const/4 v7, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/oculus/video/audio/AudioChannelLayout;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->STEREO:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 13
    new-instance v0, Lcom/oculus/video/audio/AudioChannelLayout;

    const-string v9, "TBE_4_4_2"

    const/4 v10, 0x3

    const-string v11, "tbe_4.4.2"

    const/4 v12, 0x1

    const-string v13, "tbe_4.4.2"

    const/16 v14, 0xa

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/oculus/video/audio/AudioChannelLayout;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_4_4_2:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 14
    new-instance v0, Lcom/oculus/video/audio/AudioChannelLayout;

    const-string v2, "TBE_4"

    const/4 v3, 0x4

    const-string v4, "tbe_4"

    const/4 v5, 0x2

    const-string v6, "tbe_4"

    const/4 v7, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/oculus/video/audio/AudioChannelLayout;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_4:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 15
    new-instance v0, Lcom/oculus/video/audio/AudioChannelLayout;

    const-string v9, "TBE_4_2"

    const/4 v10, 0x5

    const-string v11, "tbe_4.2"

    const/4 v12, 0x3

    const-string v13, "tbe_4.2"

    const/4 v14, 0x6

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/oculus/video/audio/AudioChannelLayout;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_4_2:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 16
    new-instance v0, Lcom/oculus/video/audio/AudioChannelLayout;

    const-string v2, "TBE_6"

    const/4 v3, 0x6

    const-string v4, "tbe_6"

    const/4 v5, 0x4

    const-string v6, "tbe_6"

    const/4 v7, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/oculus/video/audio/AudioChannelLayout;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_6:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 17
    new-instance v0, Lcom/oculus/video/audio/AudioChannelLayout;

    const-string v9, "TBE_6_2"

    const/4 v10, 0x7

    const-string v11, "tbe_6.2"

    const/4 v12, 0x5

    const-string v13, "tbe_6.2"

    const/16 v14, 0x8

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/oculus/video/audio/AudioChannelLayout;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_6_2:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 18
    new-instance v0, Lcom/oculus/video/audio/AudioChannelLayout;

    const-string v2, "TBE_8"

    const/16 v3, 0x8

    const-string v4, "tbe_8"

    const/4 v5, 0x6

    const-string v6, "tbe_8"

    const/16 v7, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/oculus/video/audio/AudioChannelLayout;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_8:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 19
    new-instance v0, Lcom/oculus/video/audio/AudioChannelLayout;

    const-string v9, "TBE_8_2"

    const/16 v10, 0x9

    const-string v11, "tbe_8.2"

    const/4 v12, 0x7

    const-string v13, "tbe_8.2"

    const/16 v14, 0xa

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/oculus/video/audio/AudioChannelLayout;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_8_2:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 20
    new-instance v0, Lcom/oculus/video/audio/AudioChannelLayout;

    const-string v2, "S5_1"

    const/16 v3, 0xa

    const-string v4, "s5.1"

    const/4 v5, 0x0

    const-string v6, "s5.1"

    const/4 v7, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/oculus/video/audio/AudioChannelLayout;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->S5_1:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 21
    new-instance v0, Lcom/oculus/video/audio/AudioChannelLayout;

    const-string v9, "S7_1"

    const/16 v10, 0xb

    const-string v11, "s7.1"

    const/4 v12, 0x0

    const-string v13, "s7.1"

    const/16 v14, 0x8

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/oculus/video/audio/AudioChannelLayout;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->S7_1:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 22
    new-instance v0, Lcom/oculus/video/audio/AudioChannelLayout;

    const-string v2, "AMBIX_4"

    const/16 v3, 0xc

    const-string v4, "ambiX_4"

    const/4 v5, 0x2

    const-string v6, "ambiX_4"

    const/4 v7, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/oculus/video/audio/AudioChannelLayout;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_4:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 23
    new-instance v0, Lcom/oculus/video/audio/AudioChannelLayout;

    const-string v9, "AMBIX_4_2"

    const/16 v10, 0xd

    const-string v11, "ambiX_4.2"

    const/4 v12, 0x3

    const-string v13, "ambiX_4.2"

    const/4 v14, 0x6

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/oculus/video/audio/AudioChannelLayout;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_4_2:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 24
    new-instance v0, Lcom/oculus/video/audio/AudioChannelLayout;

    const-string v2, "AMBIX_9"

    const/16 v3, 0xe

    const-string v4, "ambiX_9"

    const/16 v5, 0x8

    const-string v6, "ambiX_9"

    const/16 v7, 0x9

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/oculus/video/audio/AudioChannelLayout;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_9:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 25
    new-instance v0, Lcom/oculus/video/audio/AudioChannelLayout;

    const-string v9, "AMBIX_9_2"

    const/16 v10, 0xf

    const-string v11, "ambiX_9.2"

    const/16 v12, 0x9

    const-string v13, "ambiX_9.2"

    const/16 v14, 0xb

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/oculus/video/audio/AudioChannelLayout;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_9_2:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 26
    new-instance v0, Lcom/oculus/video/audio/AudioChannelLayout;

    const-string v2, "AMBIX_16"

    const/16 v3, 0x10

    const-string v4, "ambiX_16"

    const/16 v5, 0xa

    const-string v6, "ambiX_16"

    const/16 v7, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/oculus/video/audio/AudioChannelLayout;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_16:Lcom/oculus/video/audio/AudioChannelLayout;

    .line 27
    new-instance v0, Lcom/oculus/video/audio/AudioChannelLayout;

    const-string v9, "AMBIX_16_2"

    const/16 v10, 0x11

    const-string v11, "ambiX_16.2"

    const/16 v12, 0xb

    const-string v13, "ambiX_16.2"

    const/16 v14, 0x12

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/oculus/video/audio/AudioChannelLayout;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_16_2:Lcom/oculus/video/audio/AudioChannelLayout;

    const/16 v0, 0x12

    .line 7
    new-array v0, v0, [Lcom/oculus/video/audio/AudioChannelLayout;

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->UNKNOWN:Lcom/oculus/video/audio/AudioChannelLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->MONO:Lcom/oculus/video/audio/AudioChannelLayout;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->STEREO:Lcom/oculus/video/audio/AudioChannelLayout;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_4_4_2:Lcom/oculus/video/audio/AudioChannelLayout;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_4:Lcom/oculus/video/audio/AudioChannelLayout;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_4_2:Lcom/oculus/video/audio/AudioChannelLayout;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_6:Lcom/oculus/video/audio/AudioChannelLayout;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_6_2:Lcom/oculus/video/audio/AudioChannelLayout;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_8:Lcom/oculus/video/audio/AudioChannelLayout;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_8_2:Lcom/oculus/video/audio/AudioChannelLayout;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->S5_1:Lcom/oculus/video/audio/AudioChannelLayout;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->S7_1:Lcom/oculus/video/audio/AudioChannelLayout;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_4:Lcom/oculus/video/audio/AudioChannelLayout;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_4_2:Lcom/oculus/video/audio/AudioChannelLayout;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_9:Lcom/oculus/video/audio/AudioChannelLayout;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_9_2:Lcom/oculus/video/audio/AudioChannelLayout;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_16:Lcom/oculus/video/audio/AudioChannelLayout;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_16_2:Lcom/oculus/video/audio/AudioChannelLayout;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->$VALUES:[Lcom/oculus/video/audio/AudioChannelLayout;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lcom/oculus/video/audio/AudioChannelLayout;->key:Ljava/lang/String;

    .line 62
    iput p4, p0, Lcom/oculus/video/audio/AudioChannelLayout;->priority:I

    .line 63
    iput-object p5, p0, Lcom/oculus/video/audio/AudioChannelLayout;->channelConfiguration:Ljava/lang/String;

    .line 64
    iput p6, p0, Lcom/oculus/video/audio/AudioChannelLayout;->totalChannelCount:I

    return-void
.end method

.method public static fromChannelConfiguration(Ljava/lang/String;)Lcom/oculus/video/audio/AudioChannelLayout;
    .locals 5

    .line 113
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object p0, Lcom/oculus/video/audio/AudioChannelLayout;->UNKNOWN:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p0

    .line 116
    :cond_0
    invoke-static {}, Lcom/oculus/video/audio/AudioChannelLayout;->values()[Lcom/oculus/video/audio/AudioChannelLayout;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 117
    iget-object v4, v3, Lcom/oculus/video/audio/AudioChannelLayout;->channelConfiguration:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_2
    sget-object p0, Lcom/oculus/video/audio/AudioChannelLayout;->UNKNOWN:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/oculus/video/audio/AudioChannelLayout;
    .locals 5

    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object p0, Lcom/oculus/video/audio/AudioChannelLayout;->UNKNOWN:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p0

    .line 104
    :cond_0
    invoke-static {}, Lcom/oculus/video/audio/AudioChannelLayout;->values()[Lcom/oculus/video/audio/AudioChannelLayout;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 105
    iget-object v4, v3, Lcom/oculus/video/audio/AudioChannelLayout;->key:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_2
    sget-object p0, Lcom/oculus/video/audio/AudioChannelLayout;->UNKNOWN:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p0
.end method

.method public static getChannelLayoutForChannelCount(I)Lcom/oculus/video/audio/AudioChannelLayout;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x6

    if-eq p0, v0, :cond_5

    const/16 v0, 0xb

    if-eq p0, v0, :cond_4

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x12

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    .line 56
    sget-object p0, Lcom/oculus/video/audio/AudioChannelLayout;->UNKNOWN:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p0

    .line 48
    :cond_0
    sget-object p0, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_9:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p0

    .line 46
    :cond_1
    sget-object p0, Lcom/oculus/video/audio/AudioChannelLayout;->S7_1:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p0

    .line 54
    :cond_2
    sget-object p0, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_16_2:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p0

    .line 52
    :cond_3
    sget-object p0, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_16:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p0

    .line 50
    :cond_4
    sget-object p0, Lcom/oculus/video/audio/AudioChannelLayout;->AMBIX_9_2:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p0

    .line 44
    :cond_5
    sget-object p0, Lcom/oculus/video/audio/AudioChannelLayout;->S5_1:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p0

    .line 42
    :cond_6
    sget-object p0, Lcom/oculus/video/audio/AudioChannelLayout;->STEREO:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p0

    .line 40
    :cond_7
    sget-object p0, Lcom/oculus/video/audio/AudioChannelLayout;->MONO:Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/video/audio/AudioChannelLayout;
    .locals 1

    .line 7
    const-class v0, Lcom/oculus/video/audio/AudioChannelLayout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/video/audio/AudioChannelLayout;

    return-object p0
.end method

.method public static values()[Lcom/oculus/video/audio/AudioChannelLayout;
    .locals 1

    .line 7
    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout;->$VALUES:[Lcom/oculus/video/audio/AudioChannelLayout;

    invoke-virtual {v0}, [Lcom/oculus/video/audio/AudioChannelLayout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/video/audio/AudioChannelLayout;

    return-object v0
.end method


# virtual methods
.method public isSpatializationLayout()Z
    .locals 2

    .line 80
    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout$1;->$SwitchMap$com$oculus$video$audio$AudioChannelLayout:[I

    invoke-virtual {p0}, Lcom/oculus/video/audio/AudioChannelLayout;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isVirtualizationLayout()Z
    .locals 3

    .line 68
    sget-object v0, Lcom/oculus/video/audio/AudioChannelLayout$1;->$SwitchMap$com$oculus$video$audio$AudioChannelLayout:[I

    invoke-virtual {p0}, Lcom/oculus/video/audio/AudioChannelLayout;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/oculus/video/audio/AudioChannelLayout;->key:Ljava/lang/String;

    return-object v0
.end method
