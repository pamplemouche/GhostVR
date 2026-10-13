.class final Lcom/oculus/video/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lcom/oculus/video/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lcom/oculus/video/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;,
        Lcom/oculus/video/extractor/mp4/AtomParsers$TkhdData;,
        Lcom/oculus/video/extractor/mp4/AtomParsers$ChunkIterator;
    }
.end annotation


# static fields
.field private static final SPHERICAL_V1_UUID:[I

.field private static final TAG:Ljava/lang/String; = "AtomParsers"

.field private static final TYPE_cenc:I

.field private static final TYPE_clcp:I

.field private static final TYPE_meta:I

.field private static final TYPE_sbtl:I

.field private static final TYPE_soun:I

.field private static final TYPE_subt:I

.field private static final TYPE_text:I

.field private static final TYPE_vide:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vide"

    .line 52
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/video/extractor/mp4/AtomParsers;->TYPE_vide:I

    const-string v0, "soun"

    .line 53
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/video/extractor/mp4/AtomParsers;->TYPE_soun:I

    const-string v0, "text"

    .line 54
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/video/extractor/mp4/AtomParsers;->TYPE_text:I

    const-string v0, "sbtl"

    .line 55
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/video/extractor/mp4/AtomParsers;->TYPE_sbtl:I

    const-string v0, "subt"

    .line 56
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/video/extractor/mp4/AtomParsers;->TYPE_subt:I

    const-string v0, "clcp"

    .line 57
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/video/extractor/mp4/AtomParsers;->TYPE_clcp:I

    const-string v0, "cenc"

    .line 58
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/video/extractor/mp4/AtomParsers;->TYPE_cenc:I

    const-string v0, "meta"

    .line 59
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/video/extractor/mp4/AtomParsers;->TYPE_meta:I

    const/4 v0, 0x4

    .line 61
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oculus/video/extractor/mp4/AtomParsers;->SPHERICAL_V1_UUID:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x337d9d
        -0x7aab56d
        -0x77eba786
        0x2521fdd
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findEsdsPosition(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;II)I
    .locals 4

    .line 978
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 980
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 981
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    .line 982
    invoke-static {v2, v3}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 983
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 984
    sget v3, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v2, v3, :cond_1

    return v0

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static parseAudioSampleEntry(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/oculus/android/exoplayer2/drm/DrmInitData;Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v14, p5

    move-object/from16 v15, p7

    move-object/from16 v13, p8

    add-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    add-int/2addr v3, v4

    .line 851
    invoke-virtual {v0, v3}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v3, 0x6

    const/4 v12, 0x0

    if-eqz p6, :cond_0

    .line 855
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 856
    invoke-virtual {v0, v3}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 858
    :cond_0
    invoke-virtual {v0, v4}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v4, 0x0

    :goto_0
    const/4 v11, 0x2

    const/16 v5, 0x10

    const/4 v10, 0x1

    if-eqz v4, :cond_3

    if-ne v4, v10, :cond_1

    goto :goto_1

    :cond_1
    if-ne v4, v11, :cond_2

    .line 873
    invoke-virtual {v0, v5}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 875
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v4, v3

    .line 876
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    const/16 v5, 0x14

    .line 880
    invoke-virtual {v0, v5}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move v6, v3

    move v3, v4

    goto :goto_2

    :cond_2
    return-void

    .line 865
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 866
    invoke-virtual {v0, v3}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 867
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v3

    if-ne v4, v10, :cond_4

    .line 870
    invoke-virtual {v0, v5}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 886
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 887
    sget v5, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_enca:I

    move/from16 v7, p1

    if-ne v7, v5, :cond_5

    move/from16 v5, p9

    .line 888
    invoke-static {v0, v1, v2, v13, v5}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;IILcom/oculus/video/extractor/mp4/AtomParsers$StsdData;I)I

    move-result v5

    .line 889
    invoke-virtual {v0, v4}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move v7, v5

    .line 894
    :cond_5
    sget v5, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_ac_3:I

    const-string v9, "audio/raw"

    const/16 v16, 0x0

    if-ne v7, v5, :cond_6

    const-string v5, "audio/ac3"

    goto :goto_5

    .line 896
    :cond_6
    sget v5, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_ec_3:I

    if-ne v7, v5, :cond_7

    const-string v5, "audio/eac3"

    goto :goto_5

    .line 898
    :cond_7
    sget v5, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_dtsc:I

    if-ne v7, v5, :cond_8

    const-string v5, "audio/vnd.dts"

    goto :goto_5

    .line 900
    :cond_8
    sget v5, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v7, v5, :cond_11

    sget v5, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_dtsl:I

    if-ne v7, v5, :cond_9

    goto :goto_4

    .line 902
    :cond_9
    sget v5, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_dtse:I

    if-ne v7, v5, :cond_a

    const-string v5, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_5

    .line 904
    :cond_a
    sget v5, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_samr:I

    if-ne v7, v5, :cond_b

    const-string v5, "audio/3gpp"

    goto :goto_5

    .line 906
    :cond_b
    sget v5, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_sawb:I

    if-ne v7, v5, :cond_c

    const-string v5, "audio/amr-wb"

    goto :goto_5

    .line 908
    :cond_c
    sget v5, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_lpcm:I

    if-eq v7, v5, :cond_10

    sget v5, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_sowt:I

    if-ne v7, v5, :cond_d

    goto :goto_3

    .line 910
    :cond_d
    sget v5, Lcom/oculus/video/extractor/mp4/Atom;->TYPE__mp3:I

    if-ne v7, v5, :cond_e

    const-string v5, "audio/mpeg"

    goto :goto_5

    .line 912
    :cond_e
    sget v5, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_alac:I

    if-ne v7, v5, :cond_f

    const-string v5, "audio/alac"

    goto :goto_5

    :cond_f
    move-object/from16 v5, v16

    goto :goto_5

    :cond_10
    :goto_3
    move-object v5, v9

    goto :goto_5

    :cond_11
    :goto_4
    const-string v5, "audio/vnd.dts.hd"

    :goto_5
    move/from16 v18, v3

    move v8, v4

    move-object v7, v5

    move/from16 v17, v6

    move-object/from16 v19, v16

    :goto_6
    sub-int v3, v8, v1

    const/4 v4, -0x1

    if-ge v3, v2, :cond_1c

    .line 918
    invoke-virtual {v0, v8}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 919
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    if-lez v6, :cond_12

    const/4 v3, 0x1

    goto :goto_7

    :cond_12
    const/4 v3, 0x0

    :goto_7
    const-string v5, "childAtomSize should be positive"

    .line 920
    invoke-static {v3, v5}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 922
    sget v5, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_esds:I

    if-eq v3, v5, :cond_18

    if-eqz p6, :cond_13

    sget v5, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_wave:I

    if-ne v3, v5, :cond_13

    goto/16 :goto_a

    .line 942
    :cond_13
    sget v4, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_dac3:I

    if-ne v3, v4, :cond_14

    add-int/lit8 v3, v8, 0x8

    .line 943
    invoke-virtual {v0, v3}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 944
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v15}, Lcom/oculus/android/exoplayer2/audio/Ac3Util;->parseAc3AnnexFFormat(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/android/exoplayer2/drm/DrmInitData;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v13, Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;->format:Lcom/oculus/android/exoplayer2/Format;

    :goto_8
    move v5, v6

    move-object/from16 v25, v7

    move v6, v8

    move-object/from16 v27, v9

    move-object v2, v13

    const/4 v7, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x2

    goto/16 :goto_d

    .line 946
    :cond_14
    sget v4, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_dec3:I

    if-ne v3, v4, :cond_15

    add-int/lit8 v3, v8, 0x8

    .line 947
    invoke-virtual {v0, v3}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 948
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v15}, Lcom/oculus/android/exoplayer2/audio/Ac3Util;->parseEAc3AnnexFFormat(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/android/exoplayer2/drm/DrmInitData;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v13, Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;->format:Lcom/oculus/android/exoplayer2/Format;

    goto :goto_8

    .line 950
    :cond_15
    sget v4, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_ddts:I

    if-ne v3, v4, :cond_16

    .line 951
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v4, v7

    move/from16 v24, v6

    move/from16 v6, v20

    move-object/from16 v25, v7

    move/from16 v7, v21

    move/from16 v26, v8

    move/from16 v8, v17

    move-object/from16 v27, v9

    move/from16 v9, v18

    const/16 v20, 0x1

    move-object/from16 v10, v22

    const/16 v21, 0x2

    move-object/from16 v11, p7

    move/from16 v12, v23

    move-object v2, v13

    move-object/from16 v13, p5

    invoke-static/range {v3 .. v13}, Lcom/oculus/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/oculus/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v2, Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;->format:Lcom/oculus/android/exoplayer2/Format;

    goto :goto_9

    :cond_16
    move/from16 v24, v6

    move-object/from16 v25, v7

    move/from16 v26, v8

    move-object/from16 v27, v9

    move-object v2, v13

    const/16 v20, 0x1

    const/16 v21, 0x2

    .line 954
    sget v4, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_alac:I

    if-ne v3, v4, :cond_17

    move/from16 v5, v24

    .line 955
    new-array v3, v5, [B

    move/from16 v6, v26

    .line 956
    invoke-virtual {v0, v6}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v7, 0x0

    .line 957
    invoke-virtual {v0, v3, v7, v5}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v19, v3

    goto :goto_d

    :cond_17
    :goto_9
    move/from16 v5, v24

    move/from16 v6, v26

    const/4 v7, 0x0

    goto :goto_d

    :cond_18
    :goto_a
    move v5, v6

    move-object/from16 v25, v7

    move v6, v8

    move-object/from16 v27, v9

    move-object v2, v13

    const/4 v7, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x2

    .line 923
    sget v8, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v3, v8, :cond_19

    move v8, v6

    goto :goto_b

    .line 924
    :cond_19
    invoke-static {v0, v6, v5}, Lcom/oculus/video/extractor/mp4/AtomParsers;->findEsdsPosition(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;II)I

    move-result v8

    :goto_b
    if-eq v8, v4, :cond_1a

    .line 927
    invoke-static {v0, v8}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v3

    .line 928
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 929
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v3

    check-cast v19, [B

    const-string v3, "audio/mp4a-latm"

    .line 930
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 935
    :try_start_0
    invoke-static/range {v19 .. v19}, Lcom/oculus/android/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v3

    .line 936
    iget-object v8, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 937
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Lcom/oculus/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v17, v3

    goto :goto_c

    :cond_1a
    move-object/from16 v4, v25

    :catch_0
    :cond_1b
    :goto_c
    move-object/from16 v25, v4

    :goto_d
    add-int v8, v6, v5

    move-object v13, v2

    move-object/from16 v7, v25

    move-object/from16 v9, v27

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    move/from16 v2, p3

    goto/16 :goto_6

    :cond_1c
    move-object/from16 v25, v7

    move-object/from16 v27, v9

    move-object v2, v13

    const/16 v21, 0x2

    .line 962
    iget-object v0, v2, Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;->format:Lcom/oculus/android/exoplayer2/Format;

    if-nez v0, :cond_1f

    move-object/from16 v5, v25

    if-eqz v5, :cond_1f

    move-object/from16 v0, v27

    .line 965
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v7, 0x2

    goto :goto_e

    :cond_1d
    const/4 v7, -0x1

    .line 966
    :goto_e
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v6, -0x1

    if-nez v19, :cond_1e

    move-object/from16 v8, v16

    goto :goto_f

    .line 968
    :cond_1e
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v8, v1

    :goto_f
    const/4 v10, 0x0

    move-object v1, v5

    move-object v12, v2

    move-object v2, v3

    move v3, v4

    move v4, v6

    move/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v9, p7

    move-object/from16 v11, p5

    .line 966
    invoke-static/range {v0 .. v11}, Lcom/oculus/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/oculus/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v12, Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;->format:Lcom/oculus/android/exoplayer2/Format;

    :cond_1f
    return-void
.end method

.method private static parseEdts(Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 817
    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_elst:I

    invoke-virtual {p0, v0}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_3

    .line 820
    :cond_0
    iget-object p0, p0, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x8

    .line 821
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 822
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 823
    invoke-static {v0}, Lcom/oculus/video/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    .line 824
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 825
    new-array v2, v1, [J

    .line 826
    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 829
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    :goto_1
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_2

    .line 830
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    int-to-long v6, v6

    :goto_2
    aput-wide v6, v3, v4

    .line 831
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v6

    if-ne v6, v5, :cond_3

    const/4 v5, 0x2

    .line 836
    invoke-virtual {p0, v5}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 834
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 838
    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    const/4 p0, 0x0

    .line 818
    invoke-static {p0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseEsdsFromParent(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    .line 996
    invoke-virtual {p0, p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 p1, 0x1

    .line 998
    invoke-virtual {p0, p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 999
    invoke-static {p0}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)I

    const/4 v0, 0x2

    .line 1000
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1002
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 1004
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 1007
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 1010
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1014
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1015
    invoke-static {p0}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)I

    .line 1018
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1019
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mpeg"

    .line 1020
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts"

    .line 1021
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts.hd"

    .line 1022
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    .line 1026
    invoke-virtual {p0, v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1029
    invoke-virtual {p0, p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1030
    invoke-static {p0}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)I

    move-result p1

    .line 1031
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 1032
    invoke-virtual {p0, v1, v2, p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1033
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 1023
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseExpandableClassSize(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)I
    .locals 3

    .line 1158
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 1161
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static parseHdlr(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)I
    .locals 1

    const/16 v0, 0x10

    .line 580
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 581
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    .line 582
    sget v0, Lcom/oculus/video/extractor/mp4/AtomParsers;->TYPE_soun:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 584
    :cond_0
    sget v0, Lcom/oculus/video/extractor/mp4/AtomParsers;->TYPE_vide:I

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 586
    :cond_1
    sget v0, Lcom/oculus/video/extractor/mp4/AtomParsers;->TYPE_text:I

    if-eq p0, v0, :cond_4

    sget v0, Lcom/oculus/video/extractor/mp4/AtomParsers;->TYPE_sbtl:I

    if-eq p0, v0, :cond_4

    sget v0, Lcom/oculus/video/extractor/mp4/AtomParsers;->TYPE_subt:I

    if-eq p0, v0, :cond_4

    sget v0, Lcom/oculus/video/extractor/mp4/AtomParsers;->TYPE_clcp:I

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 589
    :cond_2
    sget v0, Lcom/oculus/video/extractor/mp4/AtomParsers;->TYPE_meta:I

    if-ne p0, v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method private static parseIlst(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)Lcom/oculus/android/exoplayer2/metadata/Metadata;
    .locals 2

    const/16 v0, 0x8

    .line 489
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 492
    invoke-static {p0}, Lcom/oculus/video/extractor/mp4/MetadataUtil;->parseIlstElement(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)Lcom/oculus/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 494
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 497
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/oculus/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lcom/oculus/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_1
    return-object p0
.end method

.method private static parseMdhd(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 604
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 605
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 606
    invoke-static {v1}, Lcom/oculus/video/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    .line 607
    :goto_0
    invoke-virtual {p0, v2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 608
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    if-nez v1, :cond_1

    const/4 v0, 0x4

    .line 609
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 610
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 614
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseMetaAtom(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)Lcom/oculus/android/exoplayer2/metadata/Metadata;
    .locals 4

    const/16 v0, 0xc

    .line 474
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 475
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 476
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 477
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 478
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 479
    sget v3, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_ilst:I

    if-ne v2, v3, :cond_0

    .line 480
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v0, v1

    .line 481
    invoke-static {p0, v0}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseIlst(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)Lcom/oculus/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, -0x8

    .line 483
    invoke-virtual {p0, v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseMetaXmlAtom(Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;)Ljava/lang/String;
    .locals 2

    .line 107
    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_xml:I

    invoke-virtual {p0, v0}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 110
    iget-object v0, p0, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object p0, p0, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseMvhd(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)J
    .locals 2

    const/16 v0, 0x8

    .line 507
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 508
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 509
    invoke-static {v1}, Lcom/oculus/video/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 510
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 511
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method private static parsePaspFromParent(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)F
    .locals 0

    add-int/lit8 p1, p1, 0x8

    .line 842
    invoke-virtual {p0, p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 843
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    .line 844
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private static parseProjFromParent(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;II)[B
    .locals 4

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    .line 1143
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1144
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1145
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1146
    sget v3, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_proj:I

    if-ne v2, v3, :cond_0

    .line 1147
    iget-object p0, p0, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseSampleEntryEncryptionData(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;IILcom/oculus/video/extractor/mp4/AtomParsers$StsdData;I)I
    .locals 4

    .line 1042
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_2

    .line 1044
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1045
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v3, "childAtomSize should be positive"

    .line 1046
    invoke-static {v2, v3}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1047
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1048
    sget v3, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_sinf:I

    if-ne v2, v3, :cond_1

    .line 1049
    invoke-static {p0, v0, v1}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseSinfFromParent(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1052
    iget-object p0, p3, Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/oculus/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object p1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/oculus/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object p1, p0, p4

    .line 1053
    iget-object p0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private static parseSchiFromParent(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/oculus/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .locals 11

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_4

    .line 1103
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1104
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1105
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 1106
    sget v4, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_tenc:I

    if-ne v3, v4, :cond_3

    .line 1107
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 1108
    invoke-static {p1}, Lcom/oculus/video/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result p1

    const/4 p2, 0x1

    .line 1109
    invoke-virtual {p0, p2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1113
    invoke-virtual {p0, p2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_1

    .line 1115
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    .line 1119
    :goto_1
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    if-ne p1, p2, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 1120
    :goto_2
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    const/16 p1, 0x10

    .line 1121
    new-array v7, p1, [B

    .line 1122
    array-length p1, v7

    invoke-virtual {p0, v7, v0, p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    .line 1125
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    .line 1126
    new-array v2, p1, [B

    .line 1127
    invoke-virtual {p0, v2, v0, p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    :cond_2
    move-object v10, v2

    .line 1129
    new-instance p0, Lcom/oculus/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Lcom/oculus/android/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object p0

    :cond_3
    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method private static parseSinfFromParent(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/oculus/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v4

    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_0
    sub-int v8, v0, p1

    if-ge v8, p2, :cond_3

    .line 1070
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1071
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 1072
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 1073
    sget v10, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_frma:I

    if-ne v9, v10, :cond_0

    .line 1074
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    .line 1075
    :cond_0
    sget v10, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_schm:I

    if-ne v9, v10, :cond_1

    const/4 v4, 0x4

    .line 1076
    invoke-virtual {p0, v4}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1078
    invoke-virtual {p0, v4}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1079
    :cond_1
    sget v10, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_schi:I

    if-ne v9, v10, :cond_2

    move v6, v0

    move v7, v8

    :cond_2
    :goto_1
    add-int/2addr v0, v8

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_7

    const/4 p1, 0x1

    if-eqz v5, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    const-string v0, "frma atom is mandatory"

    .line 1087
    invoke-static {p2, v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-eq v6, v1, :cond_5

    const/4 p2, 0x1

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    :goto_3
    const-string v0, "schi atom is mandatory"

    .line 1088
    invoke-static {p2, v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1090
    invoke-static {p0, v6, v7, v4}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseSchiFromParent(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/oculus/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object p0

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_4
    const-string p2, "tenc atom is mandatory"

    .line 1092
    invoke-static {p1, p2}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1093
    invoke-static {v5, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v2
.end method

.method public static parseStbl(Lcom/oculus/android/exoplayer2/extractor/mp4/Track;Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;Lcom/oculus/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/oculus/video/extractor/mp4/TrackSampleTable;
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 150
    sget v3, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_stsz:I

    invoke-virtual {v1, v3}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 152
    new-instance v4, Lcom/oculus/video/extractor/mp4/AtomParsers$StszSampleSizeBox;

    invoke-direct {v4, v3}, Lcom/oculus/video/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_0

    .line 154
    :cond_0
    sget v3, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_stz2:I

    invoke-virtual {v1, v3}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 158
    new-instance v4, Lcom/oculus/video/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v4, v3}, Lcom/oculus/video/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;)V

    .line 161
    :goto_0
    invoke-interface {v4}, Lcom/oculus/video/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 163
    new-instance v0, Lcom/oculus/video/extractor/mp4/TrackSampleTable;

    new-array v7, v5, [J

    new-array v8, v5, [I

    const/4 v9, 0x0

    new-array v10, v5, [J

    new-array v11, v5, [I

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/oculus/video/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    return-object v0

    .line 168
    :cond_1
    sget v6, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_stco:I

    invoke-virtual {v1, v6}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    .line 171
    sget v6, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_co64:I

    invoke-virtual {v1, v6}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 173
    :goto_1
    iget-object v6, v6, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    .line 175
    sget v9, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_stsc:I

    invoke-virtual {v1, v9}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;

    move-result-object v9

    iget-object v9, v9, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    .line 177
    sget v10, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_stts:I

    invoke-virtual {v1, v10}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    iget-object v10, v10, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    .line 179
    sget v11, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_stss:I

    invoke-virtual {v1, v11}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    .line 180
    iget-object v11, v11, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    goto :goto_2

    :cond_3
    move-object v11, v12

    .line 182
    :goto_2
    sget v13, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_ctts:I

    invoke-virtual {v1, v13}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 183
    iget-object v1, v1, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    goto :goto_3

    :cond_4
    move-object v1, v12

    .line 186
    :goto_3
    new-instance v13, Lcom/oculus/video/extractor/mp4/AtomParsers$ChunkIterator;

    invoke-direct {v13, v9, v6, v8}, Lcom/oculus/video/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;Lcom/oculus/android/exoplayer2/util/ParsableByteArray;Z)V

    const/16 v6, 0xc

    .line 189
    invoke-virtual {v10, v6}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 190
    invoke-virtual {v10}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    sub-int/2addr v8, v7

    .line 191
    invoke-virtual {v10}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    .line 192
    invoke-virtual {v10}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    if-eqz v1, :cond_5

    .line 199
    invoke-virtual {v1, v6}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 200
    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    const/16 v16, -0x1

    if-eqz v11, :cond_7

    .line 206
    invoke-virtual {v11, v6}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 207
    invoke-virtual {v11}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    if-lez v6, :cond_6

    .line 209
    invoke-virtual {v11}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    add-int/lit8 v16, v12, -0x1

    goto :goto_5

    :cond_6
    move-object v11, v12

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    .line 217
    :goto_5
    invoke-interface {v4}, Lcom/oculus/video/extractor/mp4/AtomParsers$SampleSizeBox;->isFixedSampleSize()Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-object v12, v12, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v5, "audio/raw"

    .line 218
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v8, :cond_8

    if-nez v15, :cond_8

    if-nez v6, :cond_8

    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :goto_6
    const-wide/16 v18, 0x0

    if-nez v5, :cond_16

    .line 230
    new-array v5, v3, [J

    .line 231
    new-array v12, v3, [I

    .line 232
    new-array v7, v3, [J

    move/from16 p1, v6

    .line 233
    new-array v6, v3, [I

    move/from16 v0, p1

    move-object/from16 v27, v10

    move v10, v14

    move/from16 v25, v15

    move/from16 v2, v16

    move-wide/from16 v21, v18

    move-wide/from16 v23, v21

    const/16 p1, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v26, 0x0

    move v14, v9

    move v9, v8

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v3, :cond_10

    move-wide/from16 v28, v21

    move/from16 v21, p1

    :goto_8
    if-nez v21, :cond_9

    .line 240
    invoke-virtual {v13}, Lcom/oculus/video/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    move/from16 v22, v9

    move/from16 v30, v10

    .line 241
    iget-wide v9, v13, Lcom/oculus/video/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    move-wide/from16 v28, v9

    .line 242
    iget v9, v13, Lcom/oculus/video/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v21, v9

    move/from16 v9, v22

    move/from16 v10, v30

    goto :goto_8

    :cond_9
    move/from16 v22, v9

    move/from16 v30, v10

    if-eqz v1, :cond_b

    :goto_9
    if-nez v26, :cond_a

    if-lez v25, :cond_a

    .line 248
    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v26

    .line 254
    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v16

    add-int/lit8 v25, v25, -0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v26, v26, -0x1

    :cond_b
    move/from16 v9, v16

    .line 260
    aput-wide v28, v5, v8

    .line 261
    invoke-interface {v4}, Lcom/oculus/video/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v10

    aput v10, v12, v8

    .line 262
    aget v10, v12, v8

    if-le v10, v15, :cond_c

    .line 263
    aget v10, v12, v8

    move/from16 v16, v3

    move v15, v10

    goto :goto_a

    :cond_c
    move/from16 v16, v3

    :goto_a
    move-object v10, v4

    int-to-long v3, v9

    add-long v3, v23, v3

    .line 265
    aput-wide v3, v7, v8

    if-nez v11, :cond_d

    const/4 v3, 0x1

    goto :goto_b

    :cond_d
    const/4 v3, 0x0

    .line 268
    :goto_b
    aput v3, v6, v8

    if-ne v8, v2, :cond_e

    const/4 v3, 0x1

    .line 270
    aput v3, v6, v8

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_e

    .line 273
    invoke-virtual {v11}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    sub-int/2addr v2, v3

    :cond_e
    move v4, v0

    move/from16 p1, v2

    move/from16 v0, v30

    int-to-long v2, v0

    add-long v23, v23, v2

    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_f

    if-lez v22, :cond_f

    .line 281
    invoke-virtual/range {v27 .. v27}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 282
    invoke-virtual/range {v27 .. v27}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    add-int/lit8 v3, v22, -0x1

    move v14, v0

    move v0, v2

    goto :goto_c

    :cond_f
    move/from16 v3, v22

    .line 286
    :goto_c
    aget v2, v12, v8

    move/from16 v22, v3

    int-to-long v2, v2

    add-long v2, v28, v2

    add-int/lit8 v21, v21, -0x1

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v40, v2

    move/from16 v2, p1

    move/from16 v3, v16

    move/from16 p1, v21

    move/from16 v16, v9

    move/from16 v9, v22

    move-wide/from16 v21, v40

    move-object/from16 v42, v10

    move v10, v0

    move v0, v4

    move-object/from16 v4, v42

    goto/16 :goto_7

    :cond_10
    move/from16 v16, v3

    move/from16 v22, v9

    if-nez v26, :cond_11

    const/4 v2, 0x1

    goto :goto_d

    :cond_11
    const/4 v2, 0x0

    .line 290
    :goto_d
    invoke-static {v2}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    :goto_e
    if-lez v25, :cond_13

    .line 293
    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x1

    goto :goto_f

    :cond_12
    const/4 v2, 0x0

    :goto_f
    invoke-static {v2}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 294
    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    add-int/lit8 v25, v25, -0x1

    goto :goto_e

    :cond_13
    if-nez v0, :cond_15

    if-nez v14, :cond_15

    if-nez p1, :cond_15

    if-eqz v22, :cond_14

    goto :goto_10

    :cond_14
    move-object/from16 v0, p0

    goto :goto_11

    .line 302
    :cond_15
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent stbl box for track "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": remainingSynchronizationSamples "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesInChunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingTimestampDeltaChanges "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v22

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AtomParsers"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    move-wide/from16 v1, v23

    move/from16 v24, v15

    goto :goto_13

    :cond_16
    move/from16 v16, v3

    move-object v10, v4

    .line 309
    iget v1, v13, Lcom/oculus/video/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v1, v1, [J

    .line 310
    iget v2, v13, Lcom/oculus/video/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v2, v2, [I

    .line 311
    :goto_12
    invoke-virtual {v13}, Lcom/oculus/video/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 312
    iget v3, v13, Lcom/oculus/video/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget-wide v4, v13, Lcom/oculus/video/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v4, v1, v3

    .line 313
    iget v3, v13, Lcom/oculus/video/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v4, v13, Lcom/oculus/video/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v4, v2, v3

    goto :goto_12

    .line 315
    :cond_17
    invoke-interface {v10}, Lcom/oculus/video/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v3

    int-to-long v4, v14

    .line 316
    invoke-static {v3, v1, v2, v4, v5}, Lcom/oculus/video/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lcom/oculus/video/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v1

    .line 318
    iget-object v5, v1, Lcom/oculus/video/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 319
    iget-object v12, v1, Lcom/oculus/video/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 320
    iget v2, v1, Lcom/oculus/video/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 321
    iget-object v7, v1, Lcom/oculus/video/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 322
    iget-object v6, v1, Lcom/oculus/video/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    move/from16 v24, v2

    move-wide/from16 v1, v18

    .line 325
    :goto_13
    iget-object v3, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    if-eqz v3, :cond_2e

    invoke-virtual/range {p2 .. p2}, Lcom/oculus/android/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v3

    if-eqz v3, :cond_18

    goto/16 :goto_23

    .line 338
    :cond_18
    iget-object v3, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    iget v3, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->type:I

    if-ne v3, v4, :cond_1a

    array-length v3, v7

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1a

    .line 343
    iget-object v3, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v4, 0x0

    aget-wide v10, v3, v4

    .line 344
    iget-object v3, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v25, v3, v4

    iget-wide v13, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->timescale:J

    iget-wide v8, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v27, v13

    move-wide/from16 v29, v8

    invoke-static/range {v25 .. v30}, Lcom/oculus/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    add-long/2addr v8, v10

    .line 347
    aget-wide v13, v7, v4

    cmp-long v3, v13, v10

    if-gtz v3, :cond_1a

    const/4 v3, 0x1

    aget-wide v13, v7, v3

    cmp-long v4, v10, v13

    if-gez v4, :cond_1a

    array-length v4, v7

    sub-int/2addr v4, v3

    aget-wide v3, v7, v4

    cmp-long v13, v3, v8

    if-gez v13, :cond_1a

    cmp-long v3, v8, v1

    if-gtz v3, :cond_1a

    sub-long v25, v1, v8

    const/4 v1, 0x0

    .line 350
    aget-wide v2, v7, v1

    sub-long v27, v10, v2

    iget-object v1, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v1, v1, Lcom/oculus/android/exoplayer2/Format;->sampleRate:I

    int-to-long v1, v1

    iget-wide v3, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v29, v1

    move-wide/from16 v31, v3

    invoke-static/range {v27 .. v32}, Lcom/oculus/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    .line 352
    iget-object v3, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v3, v3, Lcom/oculus/android/exoplayer2/Format;->sampleRate:I

    int-to-long v3, v3

    iget-wide v8, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v27, v3

    move-wide/from16 v29, v8

    invoke-static/range {v25 .. v30}, Lcom/oculus/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v3

    cmp-long v8, v1, v18

    if-nez v8, :cond_19

    cmp-long v8, v3, v18

    if-eqz v8, :cond_1a

    :cond_19
    const-wide/32 v8, 0x7fffffff

    cmp-long v10, v1, v8

    if-gtz v10, :cond_1a

    cmp-long v10, v3, v8

    if-gtz v10, :cond_1a

    long-to-int v2, v1

    move-object/from16 v1, p2

    .line 356
    iput v2, v1, Lcom/oculus/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    long-to-int v2, v3

    .line 357
    iput v2, v1, Lcom/oculus/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 358
    iget-wide v0, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v2, 0xf4240

    invoke-static {v7, v2, v3, v0, v1}, Lcom/oculus/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 359
    new-instance v0, Lcom/oculus/video/extractor/mp4/TrackSampleTable;

    move-object/from16 v21, v0

    move-object/from16 v22, v5

    move-object/from16 v23, v12

    move-object/from16 v25, v7

    move-object/from16 v26, v6

    invoke-direct/range {v21 .. v26}, Lcom/oculus/video/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    return-object v0

    .line 364
    :cond_1a
    iget-object v1, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    iget-object v1, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/16 v17, 0x0

    aget-wide v2, v1, v17

    cmp-long v1, v2, v18

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    .line 368
    :goto_14
    array-length v2, v7

    if-ge v1, v2, :cond_1b

    .line 369
    aget-wide v2, v7, v1

    iget-object v4, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v8, v4, v17

    sub-long v18, v2, v8

    const-wide/32 v20, 0xf4240

    iget-wide v2, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v22, v2

    invoke-static/range {v18 .. v23}, Lcom/oculus/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    aput-wide v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v17, 0x0

    goto :goto_14

    .line 372
    :cond_1b
    new-instance v0, Lcom/oculus/video/extractor/mp4/TrackSampleTable;

    move-object/from16 v21, v0

    move-object/from16 v22, v5

    move-object/from16 v23, v12

    move-object/from16 v25, v7

    move-object/from16 v26, v6

    invoke-direct/range {v21 .. v26}, Lcom/oculus/video/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    return-object v0

    .line 376
    :cond_1c
    iget v1, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x1

    goto :goto_15

    :cond_1d
    const/4 v1, 0x0

    :goto_15
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 382
    :goto_16
    iget-object v9, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v9, v9

    const-wide/16 v10, -0x1

    if-ge v2, v9, :cond_20

    .line 383
    iget-object v9, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v13, v9, v2

    cmp-long v9, v13, v10

    if-eqz v9, :cond_1f

    .line 385
    iget-object v9, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v25, v9, v2

    iget-wide v9, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object/from16 p1, v12

    iget-wide v11, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v27, v9

    move-wide/from16 v29, v11

    invoke-static/range {v25 .. v30}, Lcom/oculus/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    const/4 v11, 0x1

    .line 387
    invoke-static {v7, v13, v14, v11, v11}, Lcom/oculus/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v12

    add-long/2addr v13, v9

    const/4 v9, 0x0

    .line 388
    invoke-static {v7, v13, v14, v1, v9}, Lcom/oculus/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v10

    sub-int v9, v10, v12

    add-int/2addr v4, v9

    if-eq v8, v12, :cond_1e

    const/4 v8, 0x1

    goto :goto_17

    :cond_1e
    const/4 v8, 0x0

    :goto_17
    or-int/2addr v3, v8

    move v8, v10

    goto :goto_18

    :cond_1f
    move-object/from16 p1, v12

    :goto_18
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, p1

    goto :goto_16

    :cond_20
    move-object/from16 p1, v12

    move/from16 v2, v16

    if-eq v4, v2, :cond_21

    const/4 v2, 0x1

    goto :goto_19

    :cond_21
    const/4 v2, 0x0

    :goto_19
    or-int/2addr v2, v3

    if-eqz v2, :cond_22

    .line 398
    new-array v3, v4, [J

    goto :goto_1a

    :cond_22
    move-object v3, v5

    :goto_1a
    if-eqz v2, :cond_23

    .line 399
    new-array v12, v4, [I

    goto :goto_1b

    :cond_23
    move-object/from16 v12, p1

    :goto_1b
    if-eqz v2, :cond_24

    const/16 v24, 0x0

    :cond_24
    if-eqz v2, :cond_25

    .line 401
    new-array v8, v4, [I

    goto :goto_1c

    :cond_25
    move-object v8, v6

    .line 402
    :goto_1c
    new-array v4, v4, [J

    move/from16 v28, v24

    const/4 v9, 0x0

    const/4 v13, 0x0

    .line 405
    :goto_1d
    iget-object v14, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v14, v14

    if-ge v9, v14, :cond_2a

    .line 406
    iget-object v14, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v10, v14, v9

    .line 407
    iget-object v14, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v29, v14, v9

    const-wide/16 v14, -0x1

    cmp-long v16, v10, v14

    if-eqz v16, :cond_29

    .line 409
    iget-wide v14, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object/from16 v16, v8

    move/from16 v27, v9

    iget-wide v8, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v21, v29

    move-wide/from16 v23, v14

    move-wide/from16 v25, v8

    invoke-static/range {v21 .. v26}, Lcom/oculus/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    add-long/2addr v8, v10

    const/4 v14, 0x1

    .line 411
    invoke-static {v7, v10, v11, v14, v14}, Lcom/oculus/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v15

    const/4 v14, 0x0

    .line 412
    invoke-static {v7, v8, v9, v1, v14}, Lcom/oculus/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v8

    if-eqz v2, :cond_26

    sub-int v9, v8, v15

    .line 415
    invoke-static {v5, v15, v3, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v14, p1

    .line 416
    invoke-static {v14, v15, v12, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 p1, v1

    move-object/from16 v1, v16

    .line 417
    invoke-static {v6, v15, v1, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1e

    :cond_26
    move-object/from16 v14, p1

    move/from16 p1, v1

    move-object/from16 v1, v16

    :goto_1e
    move/from16 v9, v28

    :goto_1f
    if-ge v15, v8, :cond_28

    const-wide/32 v23, 0xf4240

    move-object/from16 v16, v5

    move-object/from16 v33, v6

    .line 420
    iget-wide v5, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v21, v18

    move-wide/from16 v25, v5

    invoke-static/range {v21 .. v26}, Lcom/oculus/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    .line 421
    aget-wide v21, v7, v15

    sub-long v34, v21, v10

    const-wide/32 v36, 0xf4240

    move-wide/from16 v21, v10

    iget-wide v10, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v38, v10

    invoke-static/range {v34 .. v39}, Lcom/oculus/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    add-long/2addr v5, v10

    .line 423
    aput-wide v5, v4, v13

    if-eqz v2, :cond_27

    .line 424
    aget v5, v12, v13

    if-le v5, v9, :cond_27

    .line 425
    aget v9, v14, v15

    :cond_27
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v16

    move-wide/from16 v10, v21

    move-object/from16 v6, v33

    goto :goto_1f

    :cond_28
    move-object/from16 v16, v5

    move-object/from16 v33, v6

    move/from16 v28, v9

    goto :goto_20

    :cond_29
    move-object/from16 v14, p1

    move/from16 p1, v1

    move-object/from16 v16, v5

    move-object/from16 v33, v6

    move-object v1, v8

    move/from16 v27, v9

    :goto_20
    add-long v18, v18, v29

    add-int/lit8 v9, v27, 0x1

    move-object v8, v1

    move-object/from16 v5, v16

    move-object/from16 v6, v33

    const-wide/16 v10, -0x1

    move/from16 v1, p1

    move-object/from16 p1, v14

    goto/16 :goto_1d

    :cond_2a
    move-object v1, v8

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 434
    :goto_21
    array-length v5, v1

    if-ge v0, v5, :cond_2c

    if-nez v2, :cond_2c

    .line 435
    aget v5, v1, v0

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_2b

    const/4 v5, 0x1

    goto :goto_22

    :cond_2b
    const/4 v5, 0x0

    :goto_22
    or-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_2c
    if-eqz v2, :cond_2d

    .line 441
    new-instance v0, Lcom/oculus/video/extractor/mp4/TrackSampleTable;

    move-object/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v27, v12

    move-object/from16 v29, v4

    move-object/from16 v30, v1

    invoke-direct/range {v25 .. v30}, Lcom/oculus/video/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    return-object v0

    .line 438
    :cond_2d
    new-instance v0, Lcom/oculus/android/exoplayer2/ParserException;

    const-string v1, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    :goto_23
    move-object/from16 v16, v5

    move-object/from16 v33, v6

    move-object v14, v12

    .line 328
    iget-wide v0, v0, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v2, 0xf4240

    invoke-static {v7, v2, v3, v0, v1}, Lcom/oculus/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 329
    new-instance v0, Lcom/oculus/video/extractor/mp4/TrackSampleTable;

    move-object/from16 v21, v0

    move-object/from16 v22, v16

    move-object/from16 v23, v14

    move-object/from16 v25, v7

    move-object/from16 v26, v33

    invoke-direct/range {v21 .. v26}, Lcom/oculus/video/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    return-object v0

    .line 156
    :cond_2f
    new-instance v0, Lcom/oculus/android/exoplayer2/ParserException;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseStsd(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/oculus/android/exoplayer2/drm/DrmInitData;Z)Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v10, p0

    const/16 v0, 0xc

    .line 630
    invoke-virtual {v10, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 632
    new-instance v12, Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;

    invoke-direct {v12, v11}, Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v11, :cond_8

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v15

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v16

    if-lez v16, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const-string v1, "childAtomSize should be positive"

    .line 636
    invoke-static {v0, v1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 637
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 638
    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_avc1:I

    if-eq v1, v0, :cond_7

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_avc3:I

    if-eq v1, v0, :cond_7

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_encv:I

    if-eq v1, v0, :cond_7

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_mp4v:I

    if-eq v1, v0, :cond_7

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_hvc1:I

    if-eq v1, v0, :cond_7

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_hev1:I

    if-eq v1, v0, :cond_7

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_s263:I

    if-eq v1, v0, :cond_7

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_vp08:I

    if-eq v1, v0, :cond_7

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_vp09:I

    if-ne v1, v0, :cond_1

    goto/16 :goto_4

    .line 645
    :cond_1
    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_mp4a:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_enca:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_ac_3:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_ec_3:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_dtsc:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_dtse:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_dtsl:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_samr:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_sawb:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_lpcm:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_sowt:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE__mp3:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_alac:I

    if-ne v1, v0, :cond_2

    goto :goto_3

    .line 654
    :cond_2
    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_TTML:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_tx3g:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_wvtt:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_stpp:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_c608:I

    if-ne v1, v0, :cond_3

    goto :goto_2

    .line 659
    :cond_3
    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_camm:I

    if-ne v1, v0, :cond_4

    .line 660
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "application/x-camera-motion"

    move-object/from16 v9, p4

    invoke-static {v0, v3, v1, v2, v9}, Lcom/oculus/android/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/oculus/android/exoplayer2/drm/DrmInitData;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v12, Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;->format:Lcom/oculus/android/exoplayer2/Format;

    goto :goto_5

    :cond_4
    move-object/from16 v9, p4

    goto :goto_5

    :cond_5
    :goto_2
    move-object/from16 v9, p4

    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v12

    .line 657
    invoke-static/range {v0 .. v7}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseTextSampleEntry(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/oculus/android/exoplayer2/drm/DrmInitData;Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;)V

    goto :goto_5

    :cond_6
    :goto_3
    move-object/from16 v9, p4

    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, v12

    move v9, v14

    .line 652
    invoke-static/range {v0 .. v9}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/oculus/android/exoplayer2/drm/DrmInitData;Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_5

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v12

    move v8, v14

    .line 643
    invoke-static/range {v0 .. v8}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;IIIIILcom/oculus/android/exoplayer2/drm/DrmInitData;Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;I)V

    :goto_5
    add-int v15, v15, v16

    .line 663
    invoke-virtual {v10, v15}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v12
.end method

.method private static parseTextSampleEntry(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/oculus/android/exoplayer2/drm/DrmInitData;Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p7

    add-int/lit8 v3, p2, 0x8

    add-int/lit8 v3, v3, 0x8

    .line 671
    invoke-virtual {v0, v3}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 678
    sget v3, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_TTML:I

    const-string v4, "application/ttml+xml"

    const/4 v5, 0x0

    const-wide v6, 0x7fffffffffffffffL

    if-ne v1, v3, :cond_0

    :goto_0
    move-object v9, v4

    move-object/from16 v18, v5

    move-wide/from16 v16, v6

    goto :goto_1

    .line 680
    :cond_0
    sget v3, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_tx3g:I

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, p3, -0x8

    add-int/lit8 v1, v1, -0x8

    .line 683
    new-array v3, v1, [B

    const/4 v4, 0x0

    .line 684
    invoke-virtual {v0, v3, v4, v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 685
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v4, "application/x-quicktime-tx3g"

    goto :goto_0

    .line 686
    :cond_1
    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_wvtt:I

    if-ne v1, v0, :cond_2

    const-string v4, "application/x-mp4-vtt"

    goto :goto_0

    .line 688
    :cond_2
    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_stpp:I

    if-ne v1, v0, :cond_3

    const-wide/16 v6, 0x0

    goto :goto_0

    .line 691
    :cond_3
    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_c608:I

    if-ne v1, v0, :cond_4

    const/4 v0, 0x1

    .line 694
    iput v0, v2, Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    const-string v4, "application/x-mp4-cea-608"

    goto :goto_0

    .line 700
    :goto_1
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v14, -0x1

    move-object/from16 v13, p5

    move-object/from16 v15, p6

    invoke-static/range {v8 .. v18}, Lcom/oculus/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/oculus/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v2, Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;->format:Lcom/oculus/android/exoplayer2/Format;

    return-void

    .line 697
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static parseTkhd(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)Lcom/oculus/video/extractor/mp4/AtomParsers$TkhdData;
    .locals 11

    const/16 v0, 0x8

    .line 520
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 521
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 522
    invoke-static {v1}, Lcom/oculus/video/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    .line 524
    :goto_0
    invoke-virtual {p0, v3}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 525
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    const/4 v4, 0x4

    .line 527
    invoke-virtual {p0, v4}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 529
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    if-nez v1, :cond_1

    const/4 v0, 0x4

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_3

    .line 532
    iget-object v8, p0, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    :goto_2
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_4

    .line 539
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_4

    :cond_4
    if-nez v1, :cond_5

    .line 542
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_3
    const-wide/16 v9, 0x0

    cmp-long v5, v0, v9

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    move-wide v7, v0

    .line 550
    :goto_4
    invoke-virtual {p0, v2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 551
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 552
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 553
    invoke-virtual {p0, v4}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 554
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 555
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    const/high16 v4, 0x10000

    const/high16 v5, -0x10000

    if-nez v0, :cond_7

    if-ne v1, v4, :cond_7

    if-ne v2, v5, :cond_7

    if-nez p0, :cond_7

    const/16 v6, 0x5a

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    if-ne v1, v5, :cond_8

    if-ne v2, v4, :cond_8

    if-nez p0, :cond_8

    const/16 v6, 0x10e

    goto :goto_5

    :cond_8
    if-ne v0, v5, :cond_9

    if-nez v1, :cond_9

    if-nez v2, :cond_9

    if-ne p0, v5, :cond_9

    const/16 v6, 0xb4

    .line 570
    :cond_9
    :goto_5
    new-instance p0, Lcom/oculus/video/extractor/mp4/AtomParsers$TkhdData;

    invoke-direct {p0, v3, v7, v8, v6}, Lcom/oculus/video/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object p0
.end method

.method public static parseTrak(Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;JLcom/oculus/android/exoplayer2/drm/DrmInitData;Z)Lcom/oculus/android/exoplayer2/extractor/mp4/Track;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 76
    sget v1, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_mdia:I

    invoke-virtual {v0, v1}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;

    move-result-object v1

    .line 77
    sget v2, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_hdlr:I

    invoke-virtual {v1, v2}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseHdlr(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v5, v3, :cond_0

    return-object v2

    .line 82
    :cond_0
    sget v3, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_tkhd:I

    invoke-virtual {v0, v3}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    iget-object v3, v3, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseTkhd(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)Lcom/oculus/video/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v3

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v6

    if-nez v4, :cond_1

    .line 84
    invoke-static {v3}, Lcom/oculus/video/extractor/mp4/AtomParsers$TkhdData;->access$000(Lcom/oculus/video/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v8

    move-object/from16 v4, p1

    goto :goto_0

    :cond_1
    move-object/from16 v4, p1

    move-wide/from16 v8, p2

    .line 86
    :goto_0
    iget-object v4, v4, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v4}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseMvhd(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v14

    cmp-long v4, v8, v6

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const-wide/32 v10, 0xf4240

    move-wide v12, v14

    .line 91
    invoke-static/range {v8 .. v13}, Lcom/oculus/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    :goto_1
    move-wide v10, v6

    .line 93
    sget v4, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_minf:I

    invoke-virtual {v1, v4}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    sget v6, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_stbl:I

    .line 94
    invoke-virtual {v4, v6}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    .line 96
    sget v6, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_mdhd:I

    invoke-virtual {v1, v6}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v1}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseMdhd(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v1

    .line 97
    sget v6, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_stsd:I

    invoke-virtual {v4, v6}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v4, v4, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lcom/oculus/video/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/oculus/video/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v17

    .line 98
    invoke-static {v3}, Lcom/oculus/video/extractor/mp4/AtomParsers$TkhdData;->access$200(Lcom/oculus/video/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v18

    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v6

    check-cast v19, Ljava/lang/String;

    move-object/from16 v16, v4

    move-object/from16 v20, p4

    move/from16 v21, p5

    .line 97
    invoke-static/range {v16 .. v21}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseStsd(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/oculus/android/exoplayer2/drm/DrmInitData;Z)Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;

    move-result-object v4

    .line 99
    sget v6, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_edts:I

    invoke-virtual {v0, v6}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseEdts(Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v0

    .line 100
    iget-object v6, v4, Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;->format:Lcom/oculus/android/exoplayer2/Format;

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;

    .line 101
    invoke-static {v3}, Lcom/oculus/video/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/oculus/video/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v6

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v12, v4, Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;->format:Lcom/oculus/android/exoplayer2/Format;

    iget v13, v4, Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    iget-object v1, v4, Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/oculus/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget v9, v4, Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v3

    check-cast v16, [J

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [J

    move-object v3, v2

    move v4, v6

    move-wide v6, v7

    move v0, v9

    move-wide v8, v14

    move-object v14, v1

    move v15, v0

    invoke-direct/range {v3 .. v17}, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLcom/oculus/android/exoplayer2/Format;I[Lcom/oculus/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    :goto_2
    return-object v2
.end method

.method public static parseUdta(Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;Z)Lcom/oculus/android/exoplayer2/metadata/Metadata;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 458
    :cond_0
    iget-object p0, p0, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    const/16 p1, 0x8

    .line 459
    invoke-virtual {p0, p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 460
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lt v1, p1, :cond_2

    .line 461
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 462
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 463
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 464
    sget v4, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_meta:I

    if-ne v3, v4, :cond_1

    .line 465
    invoke-virtual {p0, v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v1, v2

    .line 466
    invoke-static {p0, v1}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseMetaAtom(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)Lcom/oculus/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, -0x8

    .line 468
    invoke-virtual {p0, v2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static parseUuidAtomForSphericalV1(Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 121
    iget-object v1, p0, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    .line 122
    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    sget-object v2, Lcom/oculus/video/extractor/mp4/AtomParsers;->SPHERICAL_V1_UUID:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0xc

    if-gt v1, v2, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v1, 0x0

    .line 128
    :goto_0
    sget-object v2, Lcom/oculus/video/extractor/mp4/AtomParsers;->SPHERICAL_V1_UUID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 129
    iget-object v2, p0, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    sget-object v3, Lcom/oculus/video/extractor/mp4/AtomParsers;->SPHERICAL_V1_UUID:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object p0, p0, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static parseVideoSampleEntry(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;IIIIILcom/oculus/android/exoplayer2/drm/DrmInitData;Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p7

    add-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x8

    .line 708
    invoke-virtual {v0, v4}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v4, 0x10

    .line 710
    invoke-virtual {v0, v4}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    const/16 v4, 0x32

    .line 715
    invoke-virtual {v0, v4}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 718
    sget v5, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_encv:I

    move/from16 v6, p1

    if-ne v6, v5, :cond_0

    move/from16 v5, p8

    .line 719
    invoke-static {v0, v1, v2, v3, v5}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;IILcom/oculus/video/extractor/mp4/AtomParsers$StsdData;I)I

    move-result v5

    .line 720
    invoke-virtual {v0, v4}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v6, v7

    move-object v13, v6

    move-object/from16 v16, v13

    const/4 v7, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v17, -0x1

    :goto_1
    sub-int v9, v4, v1

    if-ge v9, v2, :cond_16

    .line 729
    invoke-virtual {v0, v4}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    if-nez v12, :cond_1

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v14

    sub-int/2addr v14, v1

    if-ne v14, v2, :cond_1

    goto/16 :goto_a

    :cond_1
    if-lez v12, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    const-string v14, "childAtomSize should be positive"

    .line 736
    invoke-static {v8, v14}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 737
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 738
    sget v14, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_avcC:I

    const/4 v1, 0x3

    if-ne v8, v14, :cond_5

    if-nez v6, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 739
    :goto_3
    invoke-static {v1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    add-int/lit8 v9, v9, 0x8

    .line 741
    invoke-virtual {v0, v9}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 742
    invoke-static/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/video/AvcConfig;->parse(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)Lcom/oculus/android/exoplayer2/video/AvcConfig;

    move-result-object v1

    .line 743
    iget-object v13, v1, Lcom/oculus/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 744
    iget v6, v1, Lcom/oculus/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v6, v3, Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-nez v7, :cond_4

    .line 746
    iget v15, v1, Lcom/oculus/android/exoplayer2/video/AvcConfig;->pixelWidthAspectRatio:F

    :cond_4
    const-string v6, "video/avc"

    goto/16 :goto_9

    .line 748
    :cond_5
    sget v14, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_hvcC:I

    if-ne v8, v14, :cond_7

    if-nez v6, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 749
    :goto_4
    invoke-static {v1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    add-int/lit8 v9, v9, 0x8

    .line 751
    invoke-virtual {v0, v9}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 752
    invoke-static/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/video/HevcConfig;->parse(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)Lcom/oculus/android/exoplayer2/video/HevcConfig;

    move-result-object v1

    .line 753
    iget-object v13, v1, Lcom/oculus/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 754
    iget v1, v1, Lcom/oculus/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v1, v3, Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    const-string v6, "video/hevc"

    goto/16 :goto_9

    .line 755
    :cond_7
    sget v14, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_vpcC:I

    if-ne v8, v14, :cond_a

    if-nez v6, :cond_8

    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    .line 756
    :goto_5
    invoke-static {v1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 757
    sget v1, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_vp08:I

    if-ne v5, v1, :cond_9

    const-string v1, "video/x-vnd.on2.vp8"

    goto :goto_6

    :cond_9
    const-string v1, "video/x-vnd.on2.vp9"

    :goto_6
    move-object v6, v1

    goto/16 :goto_9

    .line 758
    :cond_a
    sget v14, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_d263:I

    if-ne v8, v14, :cond_c

    if-nez v6, :cond_b

    const/4 v1, 0x1

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    .line 759
    :goto_7
    invoke-static {v1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    const-string v6, "video/3gpp"

    goto :goto_9

    .line 761
    :cond_c
    sget v14, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v8, v14, :cond_e

    if-nez v6, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    .line 762
    :goto_8
    invoke-static {v1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 764
    invoke-static {v0, v9}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v1

    .line 765
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 766
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    goto :goto_9

    .line 767
    :cond_e
    sget v14, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_pasp:I

    if-ne v8, v14, :cond_f

    .line 768
    invoke-static {v0, v9}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parsePaspFromParent(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)F

    move-result v15

    const/4 v7, 0x1

    goto :goto_9

    .line 770
    :cond_f
    sget v14, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_sv3d:I

    if-ne v8, v14, :cond_10

    .line 771
    invoke-static {v0, v9, v12}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseProjFromParent(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;II)[B

    move-result-object v16

    goto :goto_9

    .line 772
    :cond_10
    sget v9, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_st3d:I

    if-ne v8, v9, :cond_15

    .line 773
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 774
    invoke-virtual {v0, v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    if-nez v8, :cond_15

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    if-eqz v8, :cond_14

    const/4 v9, 0x1

    if-eq v8, v9, :cond_13

    const/4 v14, 0x2

    if-eq v8, v14, :cond_12

    if-eq v8, v1, :cond_11

    goto :goto_9

    :cond_11
    const/16 v17, 0x3

    goto :goto_9

    :cond_12
    const/16 v17, 0x2

    goto :goto_9

    :cond_13
    const/16 v17, 0x1

    goto :goto_9

    :cond_14
    const/16 v17, 0x0

    :cond_15
    :goto_9
    add-int/2addr v4, v12

    move/from16 v1, p2

    goto/16 :goto_1

    :cond_16
    :goto_a
    if-nez v6, :cond_17

    return-void

    .line 803
    :cond_17
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/16 v18, 0x0

    move/from16 v14, p5

    move-object/from16 v19, p6

    invoke-static/range {v5 .. v19}, Lcom/oculus/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/oculus/android/exoplayer2/video/ColorInfo;Lcom/oculus/android/exoplayer2/drm/DrmInitData;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v3, Lcom/oculus/video/extractor/mp4/AtomParsers$StsdData;->format:Lcom/oculus/android/exoplayer2/Format;

    return-void
.end method
