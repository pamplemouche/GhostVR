.class Lcom/facebook/oxygen/sdk/status/impl/PackageInfoUtil;
.super Ljava/lang/Object;
.source "PackageInfoUtil.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detectOrigin$$CLONE(Landroid/content/pm/PackageInfo;)Ljava/lang/Integer;
    .locals 4
    .annotation build Lcom/facebook/annotationprocessors/transformer/api/Clone;
        from = "detectOrigin"
        processor = "com.facebook.thecount.transformer.Transformer"
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 20
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 21
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1

    move v3, v1

    .line 22
    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    move v0, v1

    .line 24
    :goto_1
    if-nez v3, :cond_0

    if-eqz v0, :cond_3

    .line 25
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 27
    :goto_2
    return-object v0

    :cond_1
    move v3, v2

    .line 21
    goto :goto_0

    :cond_2
    move v0, v2

    .line 22
    goto :goto_1

    .line 27
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2
.end method
