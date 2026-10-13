.class public Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;
.super Ljava/lang/Object;
.source "SphericalVideoMetadataParser.java"


# static fields
.field private static final SPHERICAL_BOX_UUID:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->SPHERICAL_BOX_UUID:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x34t
        -0x7et
        0x63t
        -0x8t
        0x55t
        0x4at
        -0x6dt
        -0x78t
        0x14t
        0x58t
        0x7at
        0x2t
        0x52t
        0x1ft
        -0x23t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 97
    :goto_0
    return-object v0

    .line 44
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 45
    new-instance v0, Lcom/coremedia/iso/IsoFile;

    invoke-direct {v0, p0}, Lcom/coremedia/iso/IsoFile;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Lcom/coremedia/iso/IsoFile;->getMovieBox()Lcom/coremedia/iso/boxes/MovieBox;

    move-result-object v0

    .line 47
    const-class v4, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {v0, v4}, Lcom/coremedia/iso/boxes/MovieBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/TrackBox;

    .line 48
    const-class v5, Lcom/coremedia/iso/boxes/UserBox;

    invoke-virtual {v0, v5}, Lcom/coremedia/iso/boxes/TrackBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/UserBox;

    .line 49
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/UserBox;->getUserType()[B

    move-result-object v6

    .line 50
    sget-object v7, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->SPHERICAL_BOX_UUID:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 51
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/UserBox;->getData()[B

    move-result-object v0

    .line 52
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 53
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 56
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 57
    const-string v4, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v6, 0x0

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 58
    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 60
    invoke-static {}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->builder()Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;

    move-result-object v4

    .line 61
    :cond_3
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_a

    .line 62
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 66
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 67
    const-string v6, "rdf:SphericalVideo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 69
    const-string v6, "GSpherical:Spherical"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 70
    invoke-static {v0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->setSpherical(Z)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error while scanning mp4 header : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v0, v1

    .line 97
    goto/16 :goto_0

    .line 72
    :cond_5
    :try_start_1
    const-string v6, "GSpherical:ProjectionType"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 73
    invoke-static {v0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->setProjectionType(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;

    goto :goto_1

    .line 74
    :cond_6
    const-string v6, "GSpherical:StereoMode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 75
    invoke-static {v0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    .line 76
    const-string v6, "mono"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 77
    const-string v5, "2D"

    invoke-virtual {v4, v5}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->setFormat(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;

    goto :goto_1

    .line 78
    :cond_7
    const-string v6, "left-right"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 79
    const-string v5, "3DLR"

    invoke-virtual {v4, v5}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->setFormat(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;

    goto/16 :goto_1

    .line 80
    :cond_8
    const-string v6, "top-bottom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 81
    const-string v5, "3DTB"

    invoke-virtual {v4, v5}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->setFormat(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;

    goto/16 :goto_1

    .line 84
    :cond_9
    invoke-static {v0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 87
    :cond_a
    invoke-virtual {v4}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->build()Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    move-result-object v0

    .line 88
    sget-object v4, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video media mp4 header scan took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msec, found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 101
    const-string v0, ""

    .line 102
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 103
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 106
    :cond_0
    return-object v0
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 113
    :cond_0
    const/4 v0, 0x1

    .line 114
    :goto_0
    if-eqz v0, :cond_1

    .line 115
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 120
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 118
    goto :goto_0

    .line 124
    :cond_1
    return-void

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
