.class public abstract Lj00;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(ZZ)Lorg/chromium/content_public/browser/WebContents;
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p0, p1, v1}, LJ/N;->MDMZjIJS(Ljava/lang/Object;ZZZ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content_public/browser/WebContents;

    return-object p0
.end method
