.class public abstract LX30;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(I)V
    .locals 2

    const-string v0, "ContextMenu.LensSupportStatus"

    const/4 v1, 0x6

    .line 5
    invoke-static {v0, p0, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->j:Z

    if-eqz v0, :cond_0

    const-string p0, "ContextMenu.SelectedOptionAndroid.Video"

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->i:Z

    if-eqz v0, :cond_2

    .line 3
    iget-boolean p0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->h:Z

    if-eqz p0, :cond_1

    const-string p0, "ContextMenu.SelectedOptionAndroid.ImageLink"

    goto :goto_0

    :cond_1
    const-string p0, "ContextMenu.SelectedOptionAndroid.Image"

    goto :goto_0

    :cond_2
    const-string p0, "ContextMenu.SelectedOptionAndroid.Link"

    :goto_0
    const/16 v0, 0x1d

    .line 4
    invoke-static {p0, p1, v0}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public static b(I)V
    .locals 2

    const-string v0, "MobileDownload.ContextMenu.SaveImage"

    const/4 v1, 0x6

    .line 1
    invoke-static {v0, p0, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method
