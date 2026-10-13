.class public Lcom/oculus/util/version/VersionUtils;
.super Ljava/lang/Object;
.source "VersionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static meetsMinimumVersion(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 12
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 13
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 14
    array-length v2, v5

    array-length v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v4, v0

    .line 15
    :goto_0
    if-ge v4, v7, :cond_2

    .line 18
    :try_start_0
    array-length v2, v5

    if-ge v4, v2, :cond_4

    .line 19
    aget-object v2, v5, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v3, v2

    .line 22
    :goto_1
    array-length v2, v6

    if-ge v4, v2, :cond_3

    .line 23
    aget-object v2, v6, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 25
    :goto_2
    if-ge v3, v2, :cond_0

    .line 36
    :goto_3
    return v0

    .line 27
    :cond_0
    if-le v3, v2, :cond_1

    move v0, v1

    .line 28
    goto :goto_3

    .line 15
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 36
    goto :goto_3

    .line 31
    :catch_0
    move-exception v1

    goto :goto_3

    :cond_3
    move v2, v0

    goto :goto_2

    :cond_4
    move v3, v0

    goto :goto_1
.end method
