.class public Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;
.super Ljava/lang/Object;
.source "SphericalVideoMetadataParser.java"


# static fields
.field private static final ENABLED:Z = true

.field private static final SPHERICAL_BOX_UUID:[B

.field private static final SPHERICAL_VIDEO_BOX_NAME:Ljava/lang/String; = "sv3d"

.field private static final SPHERICAL_VIDEO_HEADER_V1_VR180_PROJECTION_SUPPORTED:Z = false

.field private static final SPHERICAL_VIDEO_STEREO_BOX_NAME:Ljava/lang/String; = "st3d"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
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
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dump(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)V
    .locals 6
    .param p0, "b"    # Lcom/googlecode/mp4parser/AbstractContainerBox;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getBoxes()Ljava/util/List;

    move-result-object v1

    .line 259
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 260
    .local v0, "box":Lcom/coremedia/iso/boxes/Box;
    sget-object v3, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    instance-of v3, v0, Lcom/googlecode/mp4parser/AbstractContainerBox;

    if-eqz v3, :cond_0

    .line 262
    check-cast v0, Lcom/googlecode/mp4parser/AbstractContainerBox;

    .end local v0    # "box":Lcom/coremedia/iso/boxes/Box;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->dump(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_1
    return-void
.end method

.method private static getFirstBox(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;
    .locals 4
    .param p0, "parent"    # Lcom/coremedia/iso/boxes/Container;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-interface {p0}, Lcom/coremedia/iso/boxes/Container;->getBoxes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 217
    .local v0, "box":Lcom/coremedia/iso/boxes/Box;
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    .end local v0    # "box":Lcom/coremedia/iso/boxes/Box;
    :goto_0
    return-object v0

    .line 220
    .restart local v0    # "box":Lcom/coremedia/iso/boxes/Box;
    :cond_1
    instance-of v3, v0, Lcom/coremedia/iso/boxes/Container;

    if-eqz v3, :cond_0

    .line 221
    check-cast v0, Lcom/coremedia/iso/boxes/Container;

    .end local v0    # "box":Lcom/coremedia/iso/boxes/Box;
    invoke-static {v0, p1}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->getFirstBox(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    .line 222
    .local v1, "ret":Lcom/coremedia/iso/boxes/Box;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 223
    goto :goto_0

    .line 227
    .end local v1    # "ret":Lcom/coremedia/iso/boxes/Box;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    const/4 v0, 0x0

    .line 64
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :cond_1
    invoke-static {p0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->parseSphericalVideoV2(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    move-result-object v0

    .line 60
    .local v0, "metadata":Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;
    if-nez v0, :cond_0

    .line 61
    invoke-static {p0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->parseSphericalVideoV1(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseProjectionType(Lcom/googlecode/mp4parser/AbstractContainerBox;)Ljava/lang/String;
    .locals 11
    .param p0, "parent"    # Lcom/googlecode/mp4parser/AbstractContainerBox;

    .prologue
    const/16 v10, 0x6d

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 191
    const-string v3, "sv3d"

    invoke-static {p0, v3}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->getFirstBox(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/UnknownBox;

    .line 192
    .local v0, "box":Lcom/coremedia/iso/boxes/UnknownBox;
    sget-object v3, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseProjectionType box : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-eqz v0, :cond_3

    .line 194
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/UnknownBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 195
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 199
    const/4 v3, 0x4

    new-array v2, v3, [B

    .line 200
    .local v2, "values":[B
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 201
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 202
    aget-byte v3, v2, v6

    const/16 v4, 0x63

    if-ne v3, v4, :cond_1

    aget-byte v3, v2, v7

    const/16 v4, 0x62

    if-ne v3, v4, :cond_1

    aget-byte v3, v2, v8

    if-ne v3, v10, :cond_1

    aget-byte v3, v2, v9

    const/16 v4, 0x70

    if-ne v3, v4, :cond_1

    .line 203
    const-string v3, "CUBEMAP"

    .line 212
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "values":[B
    :goto_0
    return-object v3

    .line 204
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "values":[B
    :cond_1
    aget-byte v3, v2, v6

    const/16 v4, 0x65

    if-ne v3, v4, :cond_2

    aget-byte v3, v2, v7

    const/16 v4, 0x71

    if-ne v3, v4, :cond_2

    aget-byte v3, v2, v8

    const/16 v4, 0x75

    if-ne v3, v4, :cond_2

    aget-byte v3, v2, v9

    const/16 v4, 0x69

    if-ne v3, v4, :cond_2

    .line 205
    const-string v3, "EQUIRECTANGULAR"

    goto :goto_0

    .line 206
    :cond_2
    aget-byte v3, v2, v6

    if-ne v3, v10, :cond_0

    aget-byte v3, v2, v7

    const/16 v4, 0x73

    if-ne v3, v4, :cond_0

    aget-byte v3, v2, v8

    const/16 v4, 0x68

    if-ne v3, v4, :cond_0

    aget-byte v3, v2, v9

    const/16 v4, 0x70

    if-ne v3, v4, :cond_0

    .line 207
    const-string v3, "VR180"

    goto :goto_0

    .line 211
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "values":[B
    :cond_3
    sget-object v3, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v4, "parseProjectionType return null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static parseSphericalVideoV1(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;
    .locals 24
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 75
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 76
    .local v12, "startTime":J
    new-instance v6, Lcom/coremedia/iso/IsoFile;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/coremedia/iso/IsoFile;-><init>(Ljava/lang/String;)V

    .line 77
    .local v6, "isoFile":Lcom/coremedia/iso/IsoFile;
    invoke-virtual {v6}, Lcom/coremedia/iso/IsoFile;->getMovieBox()Lcom/coremedia/iso/boxes/MovieBox;

    move-result-object v8

    .line 78
    .local v8, "moov":Lcom/coremedia/iso/boxes/MovieBox;
    const-class v20, Lcom/coremedia/iso/boxes/TrackBox;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/coremedia/iso/boxes/MovieBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/coremedia/iso/boxes/TrackBox;

    .line 79
    .local v16, "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    const-class v21, Lcom/coremedia/iso/boxes/UserBox;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/TrackBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/coremedia/iso/boxes/UserBox;

    .line 80
    .local v17, "userBox":Lcom/coremedia/iso/boxes/UserBox;
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/UserBox;->getUserType()[B

    move-result-object v18

    .line 81
    .local v18, "userType":[B
    sget-object v22, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->SPHERICAL_BOX_UUID:[B

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 82
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/UserBox;->getData()[B

    move-result-object v4

    .line 83
    .local v4, "data":[B
    new-instance v14, Ljava/lang/String;

    const-string v20, "UTF-8"

    move-object/from16 v0, v20

    invoke-direct {v14, v4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 85
    .local v14, "str":Ljava/lang/String;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 86
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v11, Ljava/io/StringReader;

    invoke-direct {v11, v14}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 87
    .local v11, "reader":Ljava/io/StringReader;
    const-string v20, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 88
    invoke-interface {v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 90
    invoke-static {}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->builder()Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;

    move-result-object v2

    .line 91
    .local v2, "builder":Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;
    const/4 v3, 0x0

    .line 92
    .local v3, "croppedAreaImageWidthPixels":I
    const/4 v5, 0x0

    .line 94
    .local v5, "fullPanoWidthPixels":I
    :cond_2
    :goto_0
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    .line 95
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 99
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 100
    .local v9, "name":Ljava/lang/String;
    const-string v20, "rdf:SphericalVideo"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 102
    const-string v20, "GSpherical:Spherical"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 103
    invoke-static {v10}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v19

    .line 104
    .local v19, "value":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 105
    const-string v20, "EQUIRECTANGULAR"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->setProjectionType(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    .end local v2    # "builder":Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;
    .end local v3    # "croppedAreaImageWidthPixels":I
    .end local v4    # "data":[B
    .end local v5    # "fullPanoWidthPixels":I
    .end local v6    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .end local v8    # "moov":Lcom/coremedia/iso/boxes/MovieBox;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "reader":Ljava/io/StringReader;
    .end local v12    # "startTime":J
    .end local v14    # "str":Ljava/lang/String;
    .end local v16    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    .end local v17    # "userBox":Lcom/coremedia/iso/boxes/UserBox;
    .end local v18    # "userType":[B
    .end local v19    # "value":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 140
    .local v15, "throwable":Ljava/lang/Throwable;
    sget-object v20, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unexpected error while scanning mp4 header V1 : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v15    # "throwable":Ljava/lang/Throwable;
    :cond_3
    const/4 v7, 0x0

    :goto_1
    return-object v7

    .line 107
    .restart local v2    # "builder":Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;
    .restart local v3    # "croppedAreaImageWidthPixels":I
    .restart local v4    # "data":[B
    .restart local v5    # "fullPanoWidthPixels":I
    .restart local v6    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .restart local v8    # "moov":Lcom/coremedia/iso/boxes/MovieBox;
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "reader":Ljava/io/StringReader;
    .restart local v12    # "startTime":J
    .restart local v14    # "str":Ljava/lang/String;
    .restart local v16    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    .restart local v17    # "userBox":Lcom/coremedia/iso/boxes/UserBox;
    .restart local v18    # "userType":[B
    :cond_4
    :try_start_1
    const-string v20, "GSpherical:StereoMode"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 108
    invoke-static {v10}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v19

    .line 109
    .restart local v19    # "value":Ljava/lang/String;
    const-string v20, "mono"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 110
    const-string v20, "2D"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->setFormat(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;

    goto :goto_0

    .line 111
    :cond_5
    const-string v20, "left-right"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 112
    const-string v20, "3DLR"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->setFormat(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;

    goto/16 :goto_0

    .line 113
    :cond_6
    const-string v20, "top-bottom"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 114
    const-string v20, "3DTB"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->setFormat(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;

    goto/16 :goto_0

    .line 116
    .end local v19    # "value":Ljava/lang/String;
    :cond_7
    const-string v20, "GSpherical:CroppedAreaImageWidthPixels"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 117
    invoke-static {v10}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v19

    .line 118
    .restart local v19    # "value":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 119
    goto/16 :goto_0

    .end local v19    # "value":Ljava/lang/String;
    :cond_8
    const-string v20, "GSpherical:FullPanoWidthPixels"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 120
    invoke-static {v10}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v19

    .line 121
    .restart local v19    # "value":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 122
    goto/16 :goto_0

    .line 123
    .end local v19    # "value":Ljava/lang/String;
    :cond_9
    invoke-static {v10}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 133
    .end local v9    # "name":Ljava/lang/String;
    :cond_a
    invoke-virtual {v2}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->build()Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    move-result-object v7

    .line 134
    .local v7, "metadata":Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;
    sget-object v20, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Video media mp4 V1 header scan took "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v12

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " msec, found: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static parseSphericalVideoV2(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;
    .locals 12
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 153
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 154
    .local v4, "startTime":J
    const/4 v1, 0x0

    .line 155
    .local v1, "metadata":Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;
    new-instance v0, Lcom/coremedia/iso/IsoFile;

    invoke-direct {v0, p0}, Lcom/coremedia/iso/IsoFile;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "isoFile":Lcom/coremedia/iso/IsoFile;
    invoke-virtual {v0}, Lcom/coremedia/iso/IsoFile;->getMovieBox()Lcom/coremedia/iso/boxes/MovieBox;

    move-result-object v2

    .line 157
    .local v2, "moov":Lcom/coremedia/iso/boxes/MovieBox;
    invoke-static {v2}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->parseStereoMode(Lcom/googlecode/mp4parser/AbstractContainerBox;)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "stereoMode":Ljava/lang/String;
    invoke-static {v2}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->parseProjectionType(Lcom/googlecode/mp4parser/AbstractContainerBox;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "projectionType":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 160
    invoke-static {}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;->builder()Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;

    move-result-object v8

    .line 161
    invoke-virtual {v8, v6}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->setFormat(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;

    move-result-object v8

    .line 162
    invoke-virtual {v8, v3}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->setProjectionType(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;

    move-result-object v8

    .line 163
    invoke-virtual {v8}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadata$Builder;->build()Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;

    move-result-object v1

    .line 165
    :cond_0
    sget-object v8, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Video media mp4 header V2 scan took "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " msec, found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v0    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .end local v1    # "metadata":Lcom/oculus/localmedia/metadata/SphericalVideoMetadata;
    .end local v2    # "moov":Lcom/coremedia/iso/boxes/MovieBox;
    .end local v3    # "projectionType":Ljava/lang/String;
    .end local v4    # "startTime":J
    .end local v6    # "stereoMode":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 167
    :catch_0
    move-exception v7

    .line 168
    .local v7, "throwable":Ljava/lang/Throwable;
    sget-object v8, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected error while scanning mp4 header V2 : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseStereoMode(Lcom/googlecode/mp4parser/AbstractContainerBox;)Ljava/lang/String;
    .locals 4
    .param p0, "parent"    # Lcom/googlecode/mp4parser/AbstractContainerBox;

    .prologue
    .line 174
    const-string v3, "st3d"

    invoke-static {p0, v3}, Lcom/oculus/localmedia/metadata/SphericalVideoMetadataParser;->getFirstBox(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/UnknownBox;

    .line 175
    .local v0, "box":Lcom/coremedia/iso/boxes/UnknownBox;
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/UnknownBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 177
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 178
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 180
    .local v2, "value":B
    packed-switch v2, :pswitch_data_0

    .line 187
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "value":B
    :cond_0
    const-string v3, "2D"

    :goto_0
    return-object v3

    .line 182
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "value":B
    :pswitch_0
    const-string v3, "3DTB"

    goto :goto_0

    .line 184
    :pswitch_1
    const-string v3, "3DLR"

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 231
    const-string v0, ""

    .line 232
    .local v0, "result":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 233
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 236
    :cond_0
    return-object v0
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 241
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 243
    :cond_0
    const/4 v0, 0x1

    .line 244
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_1

    .line 245
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 250
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 248
    goto :goto_0

    .line 254
    :cond_1
    return-void

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
