.class public Lcom/facebook/cameracore/audio/common/AudioUtils;
.super Ljava/lang/Object;
.source "AudioUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytesLengthFromDurationMs(JIJ)I
    .locals 4

    .prologue
    .line 36
    mul-long v0, p0, p3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 37
    invoke-static {p2}, Lcom/facebook/cameracore/audio/common/AudioUtils;->getBytesPerSample(I)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getBytesPerSample(I)I
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 47
    packed-switch p0, :pswitch_data_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :pswitch_0
    const/4 v0, 0x1

    .line 55
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getDurationUs(JIJ)J
    .locals 4

    .prologue
    .line 22
    invoke-static {p2}, Lcom/facebook/cameracore/audio/common/AudioUtils;->getBytesPerSample(I)I

    move-result v0

    int-to-long v0, v0

    div-long v0, p0, v0

    .line 23
    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    div-long/2addr v0, p3

    return-wide v0
.end method
