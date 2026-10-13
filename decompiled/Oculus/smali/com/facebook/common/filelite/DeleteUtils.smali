.class public Lcom/facebook/common/filelite/DeleteUtils;
.super Ljava/lang/Object;
.source "DeleteUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteContents(Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 32
    invoke-static {v4}, Lcom/facebook/common/filelite/DeleteUtils;->deleteRecursively(Ljava/io/File;)Z

    move-result v4

    and-int/2addr v0, v4

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 37
    :cond_1
    return v0
.end method

.method public static deleteRecursively(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0}, Lcom/facebook/common/filelite/DeleteUtils;->deleteContents(Ljava/io/File;)Z

    .line 52
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method
