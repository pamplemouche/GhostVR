.class public Lcom/oculus/localmedia/metadata/FilenameMetadataParser;
.super Ljava/lang/Object;
.source "FilenameMetadataParser.java"


# static fields
.field private static final TOKENS_180:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOKENS_360:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOKENS_3D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOKENS_RIFT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOKENS_SPHERE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOKENS_VRDESKTOP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "/3D/"

    aput-object v2, v1, v4

    const-string v2, "_3D."

    aput-object v2, v1, v5

    const-string v2, "_3D_"

    aput-object v2, v1, v6

    const-string v2, "_3D-"

    aput-object v2, v1, v7

    const-string v2, "-3D."

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "-3D_"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "-3D-"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->TOKENS_3D:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "/360VIDEOS/"

    aput-object v2, v1, v4

    const-string v2, "/GEAR 360/"

    aput-object v2, v1, v5

    const-string v2, "_360."

    aput-object v2, v1, v6

    const-string v2, "_360_"

    aput-object v2, v1, v7

    const-string v2, "_360-"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "--360."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "-360_"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "-360-"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->TOKENS_360:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "/180VIDEOS/"

    aput-object v2, v1, v4

    const-string v2, "_180."

    aput-object v2, v1, v5

    const-string v2, "_180_"

    aput-object v2, v1, v6

    const-string v2, "_180-"

    aput-object v2, v1, v7

    const-string v2, "-180."

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "-180_"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "-180-"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "_180X180."

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "_180X180_"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "_180X180-"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "-180X180."

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "-180X180_"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "-180X180-"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->TOKENS_180:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "_SPHERE_"

    aput-object v2, v1, v4

    const-string v2, "_SPHERE."

    aput-object v2, v1, v5

    const-string v2, "_SPHERICAL_"

    aput-object v2, v1, v6

    const-string v2, "_SPHERICAL."

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->TOKENS_SPHERE:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "-OCULUSRIFT."

    aput-object v2, v1, v4

    const-string v2, "-OCULUSRIFT-"

    aput-object v2, v1, v5

    const-string v2, "_SMARTPHONEVR."

    aput-object v2, v1, v6

    const-string v2, "_SMARTPHONEVR_"

    aput-object v2, v1, v7

    const-string v2, "_SMARTPHONEVR30."

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "_SMARTPHONEVR60."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "_SMARTPHONEVR60_"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->TOKENS_RIFT:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_VRDESKTOP."

    aput-object v2, v1, v4

    const-string v2, "_VRDESKTOP_"

    aput-object v2, v1, v5

    const-string v2, "_VRDESKTOPHD."

    aput-object v2, v1, v6

    const-string v2, "_VRDESKTOPHD_"

    aput-object v2, v1, v7

    const-string v2, "_VRDESKTOPSD."

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "_VRDESKTOPSD_"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->TOKENS_VRDESKTOP:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;Lcom/oculus/localmedia/MediaType;)Lcom/oculus/localmedia/metadata/FilenameMetadata;
    .locals 5

    .prologue
    const/high16 v4, 0x43340000    # 180.0f

    .line 32
    invoke-static {}, Lcom/oculus/localmedia/metadata/FilenameMetadata;->builder()Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;

    move-result-object v1

    .line 34
    new-instance v0, Ljava/util/StringTokenizer;

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "?.#"

    invoke-direct {v0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {v1, v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setTitle(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    if-eq p1, v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->build()Lcom/oculus/localmedia/metadata/FilenameMetadata;

    move-result-object v0

    return-object v0

    .line 40
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".ext"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_2
    sget-object v2, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->TOKENS_3D:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->pathContainsToken(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    const-string v2, "3D"

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    .line 51
    :cond_3
    sget-object v2, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->TOKENS_360:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->pathContainsToken(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 52
    const-string v2, "SPHERICAL"

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setPresentationFormat(Ljava/lang/String;)V

    .line 58
    :cond_4
    :goto_1
    const-string v2, "/VR/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_8

    .line 59
    const-string v2, "3D"

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    .line 60
    const-string v2, "SPHERICAL"

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setPresentationFormat(Ljava/lang/String;)V

    .line 67
    :cond_5
    :goto_2
    sget-object v2, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->TOKENS_SPHERE:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->pathContainsToken(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 68
    const-string v2, "SPHERICAL"

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setPresentationFormat(Ljava/lang/String;)V

    .line 75
    :cond_6
    :goto_3
    sget-object v2, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->TOKENS_RIFT:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->pathContainsToken(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 76
    invoke-virtual {v1, v4}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFovX(F)V

    .line 77
    const-string v0, "3DLR"

    invoke-virtual {v1, v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_7
    sget-object v2, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->TOKENS_180:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->pathContainsToken(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 54
    const-string v2, "SPHERICAL"

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setPresentationFormat(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, v4}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFovX(F)V

    goto :goto_1

    .line 61
    :cond_8
    const-string v2, "/180VR/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    .line 62
    const-string v2, "3D"

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    .line 63
    const-string v2, "SPHERICAL"

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setPresentationFormat(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v4}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFovX(F)V

    goto :goto_2

    .line 69
    :cond_9
    const-string v2, "_CUBEMAP_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_a

    const-string v2, "_CUBEMAP."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_b

    .line 70
    :cond_a
    const-string v2, "UNPADDED_CUBEMAP_32"

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setPresentationFormat(Ljava/lang/String;)V

    goto :goto_3

    .line 71
    :cond_b
    const-string v2, "_BARREL_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_c

    const-string v2, "_BARREL."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_6

    .line 72
    :cond_c
    const-string v2, "BARREL"

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setPresentationFormat(Ljava/lang/String;)V

    goto :goto_3

    .line 78
    :cond_d
    sget-object v2, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->TOKENS_VRDESKTOP:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->pathContainsToken(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 79
    invoke-virtual {v1, v4}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFovX(F)V

    .line 80
    const-string v0, "3DLR"

    invoke-virtual {v1, v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :cond_e
    const-string v2, "_TB_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_f

    const-string v2, "_TB."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_10

    .line 82
    :cond_f
    const-string v0, "3DTB"

    invoke-virtual {v1, v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    :cond_10
    const-string v2, "_BT_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_11

    const-string v2, "_BT."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_12

    .line 84
    :cond_11
    const-string v0, "3DBT"

    invoke-virtual {v1, v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    :cond_12
    const-string v2, "_TBF_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_13

    const-string v2, "_TBF."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_14

    .line 86
    :cond_13
    const-string v0, "3DTBF"

    invoke-virtual {v1, v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :cond_14
    const-string v2, "_BTF_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_15

    const-string v2, "_BTF."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_16

    .line 88
    :cond_15
    const-string v0, "3DBTF"

    invoke-virtual {v1, v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :cond_16
    const-string v2, "_LR_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_17

    const-string v2, "_LR."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_18

    .line 90
    :cond_17
    const-string v0, "3DLR"

    invoke-virtual {v1, v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    :cond_18
    const-string v2, "_RL_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_19

    const-string v2, "_RL."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1a

    .line 92
    :cond_19
    const-string v0, "3DRL"

    invoke-virtual {v1, v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :cond_1a
    const-string v2, "_LRF_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1b

    const-string v2, "_LRF."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1c

    .line 94
    :cond_1b
    const-string v0, "3DLRF"

    invoke-virtual {v1, v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 95
    :cond_1c
    const-string v2, "_RLF_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1d

    const-string v2, "_RLF."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1e

    .line 96
    :cond_1d
    const-string v0, "3DRLF"

    invoke-virtual {v1, v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_1e
    const-string v2, "_3DV_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1f

    const-string v2, "_3DV."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_20

    .line 98
    :cond_1f
    const-string v0, "3DTB"

    invoke-virtual {v1, v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :cond_20
    const-string v2, "_3DH_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_21

    const-string v2, "_3DH."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 100
    :cond_21
    const-string v0, "3DLR"

    invoke-virtual {v1, v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static pathContainsToken(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
