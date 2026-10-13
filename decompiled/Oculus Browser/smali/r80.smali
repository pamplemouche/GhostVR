.class public Lr80;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lwf0;


# instance fields
.field public final synthetic w:Lu80;


# direct methods
.method public constructor <init>(Lu80;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr80;->w:Lu80;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;F)V
    .locals 0

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;Lorg/chromium/chrome/browser/infobar/InfoBar;Z)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/infobar/InfoBar;->g()I

    move-result p2

    const/16 p3, 0x52

    if-eq p2, p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lr80;->w:Lu80;

    const/4 p3, 0x0

    .line 3
    iput-object p3, p2, Lu80;->G:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;

    .line 4
    iget-object p1, p1, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->z:LWT;

    invoke-virtual {p1, p0}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;Lorg/chromium/chrome/browser/infobar/InfoBar;Z)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/infobar/InfoBar;->g()I

    move-result p1

    const/16 p3, 0x52

    if-eq p1, p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lr80;->w:Lu80;

    check-cast p2, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;

    .line 3
    iput-object p2, p1, Lu80;->G:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;

    return-void
.end method
