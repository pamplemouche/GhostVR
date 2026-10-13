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
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/oculus/localmedia/MediaType;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x43340000    # 180.0f

    .line 32
    invoke-static {}, Lcom/oculus/localmedia/metadata/FilenameMetadata;->builder()Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;

    move-result-object v0

    .line 34
    .local v0, "builder":Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;
    new-instance v5, Ljava/util/StringTokenizer;

    const/16 v6, 0x2f

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "?#"

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, "title":Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 36
    .local v2, "index":I
    const/4 v3, 0x0

    .line 37
    .local v3, "isCardboardMedia":Z
    if-lez v2, :cond_0

    .line 38
    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 41
    const-string v5, ".vr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 42
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 43
    const/4 v3, 0x1

    .line 46
    :cond_0
    invoke-virtual {v0, v4}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setTitle(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v3}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setIsCardboard(Z)V

    .line 49
    sget-object v5, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    if-eq p1, v5, :cond_2

    .line 50
    if-eqz v3, :cond_1

    .line 51
    const-string v5, "3DTB"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    .line 52
    const-string v5, "SPHERICAL"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setPresentationFormat(Ljava/lang/String;)V

    .line 123
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->build()Lcom/oculus/localmedia/metadata/FilenameMetadata;

    move-result-object v5

    return-object v5

    .line 55
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "filePath":Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".ext"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    :cond_3
    sget-object v5, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->TOKENS_3D:Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->pathContainsToken(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 63
    const-string v5, "3D"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    .line 66
    :cond_4
    sget-object v5, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->TOKENS_360:Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->pathContainsToken(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 67
    const-string v5, "SPHERICAL"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setPresentationFormat(Ljava/lang/String;)V

    .line 73
    :cond_5
    :goto_1
    const-string v5, "/VR/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_a

    .line 74
    const-string v5, "3D"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    .line 75
    const-string v5, "SPHERICAL"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setPresentationFormat(Ljava/lang/String;)V

    .line 82
    :cond_6
    :goto_2
    sget-object v5, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->TOKENS_SPHERE:Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->pathContainsToken(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 83
    const-string v5, "SPHERICAL"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setPresentationFormat(Ljava/lang/String;)V

    .line 90
    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    .line 91
    const-string v5, "VR180"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setPresentationFormat(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v8}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFovX(F)V

    .line 95
    :cond_8
    sget-object v5, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->TOKENS_RIFT:Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->pathContainsToken(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 96
    invoke-virtual {v0, v8}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFovX(F)V

    .line 97
    const-string v5, "3DLR"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_9
    sget-object v5, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->TOKENS_180:Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->pathContainsToken(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 69
    const-string v5, "SPHERICAL"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setPresentationFormat(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v8}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFovX(F)V

    goto :goto_1

    .line 76
    :cond_a
    const-string v5, "/180VR/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_6

    .line 77
    const-string v5, "3D"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    .line 78
    const-string v5, "SPHERICAL"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setPresentationFormat(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v8}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFovX(F)V

    goto :goto_2

    .line 84
    :cond_b
    const-string v5, "_CUBEMAP_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_c

    const-string v5, "_CUBEMAP."

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_d

    .line 85
    :cond_c
    const-string v5, "UNPADDED_CUBEMAP_32"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setPresentationFormat(Ljava/lang/String;)V

    goto :goto_3

    .line 86
    :cond_d
    const-string v5, "_BARREL_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_e

    const-string v5, "_BARREL."

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_7

    .line 87
    :cond_e
    const-string v5, "BARREL"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setPresentationFormat(Ljava/lang/String;)V

    goto :goto_3

    .line 98
    :cond_f
    sget-object v5, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->TOKENS_VRDESKTOP:Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadataParser;->pathContainsToken(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 99
    invoke-virtual {v0, v8}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFovX(F)V

    .line 100
    const-string v5, "3DLR"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_10
    const-string v5, "_TB_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_11

    const-string v5, "_TB."

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_12

    .line 102
    :cond_11
    const-string v5, "3DTB"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :cond_12
    const-string v5, "_BT_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_13

    const-string v5, "_BT."

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_14

    .line 104
    :cond_13
    const-string v5, "3DBT"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_14
    const-string v5, "_TBF_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_15

    const-string v5, "_TBF."

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_16

    .line 106
    :cond_15
    const-string v5, "3DTBF"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_16
    const-string v5, "_BTF_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_17

    const-string v5, "_BTF."

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_18

    .line 108
    :cond_17
    const-string v5, "3DBTF"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_18
    const-string v5, "_LR_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_19

    const-string v5, "_LR."

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1a

    .line 110
    :cond_19
    const-string v5, "3DLR"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_1a
    const-string v5, "_RL_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_1b

    const-string v5, "_RL."

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1c

    .line 112
    :cond_1b
    const-string v5, "3DRL"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_1c
    const-string v5, "_LRF_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_1d

    const-string v5, "_LRF."

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1e

    .line 114
    :cond_1d
    const-string v5, "3DLRF"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :cond_1e
    const-string v5, "_RLF_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_1f

    const-string v5, "_RLF."

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_20

    .line 116
    :cond_1f
    const-string v5, "3DRLF"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :cond_20
    const-string v5, "_3DV_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_21

    const-string v5, "_3DV."

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_22

    .line 118
    :cond_21
    const-string v5, "3DTB"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    :cond_22
    const-string v5, "_3DH_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_23

    const-string v5, "_3DH."

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 120
    :cond_23
    const-string v5, "3DLR"

    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static pathContainsToken(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
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
    .line 127
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    .local v0, "token":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 129
    const/4 v1, 0x1

    .line 132
    .end local v0    # "token":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
