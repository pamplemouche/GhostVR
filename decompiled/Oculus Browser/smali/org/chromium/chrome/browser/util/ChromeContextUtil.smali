.class public final Lorg/chromium/chrome/browser/util/ChromeContextUtil;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static getSmallestDIPWidth()I
    .locals 1

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    return v0
.end method
