.class public LS10;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;
.source "PG"


# instance fields
.field public f:LWT;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/profiles/Profile;->b()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    .line 3
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, LS10;->f:LWT;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->a()V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->c:Z

    return v0
.end method
