.class public Lcom/oculus/localmedia/metadata/ImageHeaderMetadataParser;
.super Ljava/lang/Object;
.source "ImageHeaderMetadataParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;II)Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 35
    const-string v9, "image/jpeg"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object v6, v8

    .line 79
    :goto_0
    return-object v6

    .line 39
    :cond_0
    const/4 v3, 0x0

    .line 40
    .local v3, "is3D":Z
    const/4 v4, 0x0

    .line 41
    .local v4, "notEquirect":Z
    if-nez p2, :cond_1

    if-eqz p3, :cond_3

    .line 42
    :cond_1
    if-ne p2, p3, :cond_4

    move v3, v6

    .line 43
    :goto_1
    if-nez v3, :cond_2

    mul-int/lit8 v9, p3, 0x2

    if-eq p2, v9, :cond_2

    .line 45
    const/4 v4, 0x1

    .line 47
    :cond_2
    const/16 v9, 0x400

    if-gt p3, v9, :cond_3

    .line 49
    const/4 v4, 0x1

    .line 55
    :cond_3
    if-eqz v4, :cond_5

    invoke-static {}, Lcom/oculus/localmedia/LocalMediaManager;->isStandaloneDevice()Z

    move-result v9

    if-nez v9, :cond_5

    move-object v6, v8

    .line 56
    goto :goto_0

    :cond_4
    move v3, v7

    .line 42
    goto :goto_1

    .line 59
    :cond_5
    const/4 v0, 0x0

    .line 60
    .local v0, "audioMimeType":Ljava/lang/String;
    invoke-static {p0}, Lcom/oculus/localmedia/MediaProviderUtils;->extractProjectionFromXMPHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "projection":Ljava/lang/String;
    if-nez v5, :cond_7

    .line 62
    invoke-static {p0}, Lcom/oculus/localmedia/MediaProviderUtils;->extractProjectionFromExifHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    :goto_2
    if-eqz v5, :cond_b

    .line 68
    invoke-static {p0, p1}, Lcom/oculus/localmedia/MediaProviderUtils;->getImageOrientationDegrees(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 69
    .local v1, "degrees":I
    const-string v9, "EQUIRECTANGULAR"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "VR180"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 70
    :cond_6
    const-string v8, "EQUIRECTANGULAR"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    if-eqz v3, :cond_8

    const-string v2, "3DTB"

    .line 71
    .local v2, "format":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;->builder()Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;

    move-result-object v8

    .line 72
    invoke-virtual {v8, v5}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->setProjectionType(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;

    move-result-object v8

    .line 73
    invoke-virtual {v8, v2}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->setFormat(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;

    move-result-object v8

    .line 74
    invoke-virtual {v8, v1}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->setOrientation(I)Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;

    move-result-object v8

    if-eqz v0, :cond_a

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    :goto_4
    invoke-virtual {v8, v6}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->setHasAudio(Z)Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;

    move-result-object v6

    .line 76
    invoke-virtual {v6}, Lcom/oculus/localmedia/metadata/ImageHeaderMetadata$Builder;->build()Lcom/oculus/localmedia/metadata/ImageHeaderMetadata;

    move-result-object v6

    goto :goto_0

    .line 64
    .end local v1    # "degrees":I
    .end local v2    # "format":Ljava/lang/String;
    :cond_7
    invoke-static {p0}, Lcom/oculus/localmedia/MediaProviderUtils;->extractAudioMimeTypeFromXMPHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 70
    .restart local v1    # "degrees":I
    :cond_8
    const-string v2, "2D"

    goto :goto_3

    :cond_9
    const-string v2, "3DLR"

    goto :goto_3

    .restart local v2    # "format":Ljava/lang/String;
    :cond_a
    move v6, v7

    .line 75
    goto :goto_4

    .end local v1    # "degrees":I
    .end local v2    # "format":Ljava/lang/String;
    :cond_b
    move-object v6, v8

    .line 79
    goto :goto_0
.end method
