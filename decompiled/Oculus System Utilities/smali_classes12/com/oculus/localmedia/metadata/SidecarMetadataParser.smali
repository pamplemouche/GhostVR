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
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 22
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const-string v9, "."

    invoke-virtual {p0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .local v3, "sidecarFile":Ljava/io/File;
    invoke-static {v3}, Lcom/oculus/localmedia/MediaProviderUtils;->readAll(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "json":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 25
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .local v4, "sidecarJson":Lorg/json/JSONObject;
    invoke-static {}, Lcom/oculus/localmedia/metadata/SidecarMetadata;->builder()Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;

    move-result-object v0

    .line 28
    .local v0, "builder":Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;
    const-string v7, "title"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 29
    .local v5, "title":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 30
    invoke-virtual {v0, v5}, Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;->setTitle(Ljava/lang/String;)V

    .line 33
    :cond_0
    const-string v7, "format"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "format":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 35
    const-string v7, "2d"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 36
    const-string v7, "2D"

    invoke-virtual {v0, v7}, Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;->setFormat(Ljava/lang/String;)V

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;->build()Lcom/oculus/localmedia/metadata/SidecarMetadata;

    move-result-object v6

    .line 54
    .end local v0    # "builder":Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;
    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "sidecarFile":Ljava/io/File;
    .end local v4    # "sidecarJson":Lorg/json/JSONObject;
    .end local v5    # "title":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v6

    .line 37
    .restart local v0    # "builder":Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;
    .restart local v1    # "format":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    .restart local v3    # "sidecarFile":Ljava/io/File;
    .restart local v4    # "sidecarJson":Lorg/json/JSONObject;
    .restart local v5    # "title":Ljava/lang/String;
    :cond_3
    const-string v7, "3d"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 38
    const-string v7, "3D"

    invoke-virtual {v0, v7}, Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v0    # "builder":Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;
    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "sidecarFile":Ljava/io/File;
    .end local v4    # "sidecarJson":Lorg/json/JSONObject;
    .end local v5    # "title":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_1

    .line 39
    .restart local v0    # "builder":Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;
    .restart local v1    # "format":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    .restart local v3    # "sidecarFile":Ljava/io/File;
    .restart local v4    # "sidecarJson":Lorg/json/JSONObject;
    .restart local v5    # "title":Ljava/lang/String;
    :cond_4
    const-string v7, "3dlr"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 40
    const-string v7, "3DLR"

    invoke-virtual {v0, v7}, Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_5
    const-string v7, "3dlrf"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 42
    const-string v7, "3DLRF"

    invoke-virtual {v0, v7}, Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_6
    const-string v7, "3dtb"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 44
    const-string v7, "3DTB"

    invoke-virtual {v0, v7}, Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;->setFormat(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_7
    const-string v7, "3dtbf"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 46
    const-string v7, "3DTBF"

    invoke-virtual {v0, v7}, Lcom/oculus/localmedia/metadata/SidecarMetadata$Builder;->setFormat(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
