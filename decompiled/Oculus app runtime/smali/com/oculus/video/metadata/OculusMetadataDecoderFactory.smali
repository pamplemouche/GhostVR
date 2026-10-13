.class public Lcom/oculus/video/metadata/OculusMetadataDecoderFactory;
.super Ljava/lang/Object;
.source "OculusMetadataDecoderFactory.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDecoder(Lcom/oculus/android/exoplayer2/Format;)Lcom/oculus/android/exoplayer2/metadata/MetadataDecoder;
    .locals 2

    .line 20
    iget-object v0, p1, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "application/x-camera-motion"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance p1, Lcom/oculus/video/metadata/CameraMotionDecoder;

    invoke-direct {p1}, Lcom/oculus/video/metadata/CameraMotionDecoder;-><init>()V

    return-object p1

    .line 23
    :cond_0
    sget-object v0, Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;->DEFAULT:Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;

    invoke-interface {v0, p1}, Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;->createDecoder(Lcom/oculus/android/exoplayer2/Format;)Lcom/oculus/android/exoplayer2/metadata/MetadataDecoder;

    move-result-object p1

    return-object p1
.end method

.method public supportsFormat(Lcom/oculus/android/exoplayer2/Format;)Z
    .locals 1

    .line 12
    sget-object v0, Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;->DEFAULT:Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;

    invoke-interface {v0, p1}, Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;->supportsFormat(Lcom/oculus/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 15
    :cond_0
    iget-object p1, p1, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "application/x-camera-motion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
