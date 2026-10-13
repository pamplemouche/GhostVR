.class public abstract LPY;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 2
    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    invoke-static {}, LJ/N;->MgqDG5LY()Z

    move-result v0

    return v0
.end method
