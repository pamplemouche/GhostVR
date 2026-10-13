.class public Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;
.super Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
.source "PG"


# instance fields
.field public final J:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v2, 0x7f0600e9

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    .line 1
    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;-><init>(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p3, p0, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;->J:Ljava/lang/String;

    return-void
.end method

.method public static show(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/infobar/InfoBar;
    .locals 7

    .line 1
    new-instance v6, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;

    invoke-static {p0}, LGZ;->a(I)I

    move-result v1

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public a(LUf0;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->a(LUf0;)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;->J:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, LUf0;->a()LRf0;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, LRf0;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    :cond_0
    return-void
.end method
