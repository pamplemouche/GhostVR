.class public Lcom/facebook/fbreact/autoupdater/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# instance fields
.field private final mFilesDir:Ljava/io/File;

.field protected final mNativeBuildNumber:I


# virtual methods
.method public cleanActivatedUpdateFolder(Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;)V
    .locals 4

    .prologue
    .line 200
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/fbreact/autoupdater/Storage;->mFilesDir:Ljava/io/File;

    const-string v2, "updates"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    new-instance v1, Ljava/io/File;

    iget v2, p0, Lcom/facebook/fbreact/autoupdater/Storage;->mNativeBuildNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/facebook/fbreact/autoupdater/Storage;->mNativeBuildNumber:I

    aput v3, v0, v2

    const/4 v2, 0x1

    .line 215
    invoke-virtual {p1}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getNextBundle()I

    move-result v3

    aput v3, v0, v2

    .line 214
    invoke-static {v1, v0}, Lcom/facebook/common/releng/io/FileIOUtils;->cleanNumberedSubDirectories(Ljava/io/File;[I)V

    goto :goto_0
.end method

.method public cleanPendingUpdatesFolder(Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;)V
    .locals 4

    .prologue
    .line 179
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/fbreact/autoupdater/Storage;->mFilesDir:Ljava/io/File;

    const-string v2, "updates"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    new-instance v1, Ljava/io/File;

    iget v2, p0, Lcom/facebook/fbreact/autoupdater/Storage;->mNativeBuildNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/facebook/fbreact/autoupdater/Storage;->mNativeBuildNumber:I

    aput v3, v0, v2

    const/4 v2, 0x1

    .line 194
    invoke-virtual {p1}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getActivatedBundle()I

    move-result v3

    aput v3, v0, v2

    .line 193
    invoke-static {v1, v0}, Lcom/facebook/common/releng/io/FileIOUtils;->cleanNumberedSubDirectories(Ljava/io/File;[I)V

    goto :goto_0
.end method

.method public getDeveloperManifestIfExists()Ljava/io/File;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "developer"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "updates"

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ota_info.json"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/fbreact/autoupdater/Storage;->mFilesDir:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUpdatePersistFolder(I)Ljava/io/File;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updates"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/fbreact/autoupdater/Storage;->mNativeBuildNumber:I

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/fbreact/autoupdater/Storage;->mFilesDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    return-object v1
.end method
