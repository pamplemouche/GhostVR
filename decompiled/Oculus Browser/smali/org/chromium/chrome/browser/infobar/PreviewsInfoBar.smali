.class public Lorg/chromium/chrome/browser/infobar/PreviewsInfoBar;
.super Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
.source "PG"


# instance fields
.field public final J:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v2, 0x7f0600e9

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;-><init>(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p4, p0, Lorg/chromium/chrome/browser/infobar/PreviewsInfoBar;->J:Ljava/lang/String;

    return-void
.end method

.method public static show(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/infobar/InfoBar;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/infobar/PreviewsInfoBar;

    .line 2
    invoke-static {p0}, LGZ;->a(I)I

    move-result p0

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/infobar/PreviewsInfoBar;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 5
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    const v0, 0x7f130507

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(LUf0;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->a(LUf0;)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/PreviewsInfoBar;->J:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p1, LUf0;->G:LRf0;

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/PreviewsInfoBar;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, LRf0;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    return-void
.end method
