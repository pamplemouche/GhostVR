.class public Lcom/oculus/localmedia/metadata/SidecarMetadataParser;
.super Ljava/lang/Object;
.source "SidecarMetadataParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/oculus/localmedia/metadata/SidecarMetadata;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 22
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-static {v1}, Lcom/oculus/localmedia/MediaProviderUtils;->readAll(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 24
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 25
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/oculus/localmedia/metadata/SidecarMetadata;->builder()Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;

    move-result-object v1

    .line 28
    const-string v3, "title"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    invoke-virtual {v1, v3}, Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;->setTitle(Ljava/lang/String;)V

    .line 33
    :cond_0
    const-string v3, "format"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    const-string v3, "2d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 36
    const-string v2, "2D"

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;->setFormat(Ljava/lang/String;)V

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;->build()Lcom/oculus/localmedia/metadata/SidecarMetadata;

    move-result-object v0

    .line 54
    :cond_2
    :goto_1
    return-object v0

    .line 37
    :cond_3
    const-string v3, "3d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 38
    const-string v2, "3D"

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    goto :goto_1

    .line 39
    :cond_4
    const-string v3, "3dlr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 40
    const-string v2, "3DLR"

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_5
    const-string v3, "3dlrf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 42
    const-string v2, "3DLRF"

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_6
    const-string v3, "3dtb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 44
    const-string v2, "3DTB"

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_7
    const-string v3, "3dtbf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    const-string v2, "3DTBF"

    invoke-virtual {v1, v2}, Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;->setFormat(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
