.class public Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
.super Lorg/chromium/chrome/browser/infobar/InfoBar;
.source "PG"


# instance fields
.field public final G:Ljava/lang/String;

.field public final H:Ljava/lang/String;

.field public final I:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4, p3}, Lorg/chromium/chrome/browser/infobar/InfoBar;-><init>(IILjava/lang/CharSequence;Landroid/graphics/Bitmap;)V

    .line 2
    iput-object p6, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->G:Ljava/lang/String;

    .line 3
    iput-object p7, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->H:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->I:Ljava/lang/String;

    return-void
.end method

.method public static create(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
    .locals 8

    .line 1
    invoke-static {p0}, LGZ;->a(I)I

    move-result v1

    .line 2
    new-instance p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;-><init>(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public a(LUf0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->G:Ljava/lang/String;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->H:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->a(LUf0;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->I:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->I:Ljava/lang/String;

    invoke-virtual {p1, v0}, LUf0;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(LUf0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p1, p2, p3}, LUf0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBar;->b(I)V

    return-void
.end method
