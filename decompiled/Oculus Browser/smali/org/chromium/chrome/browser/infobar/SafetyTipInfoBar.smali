.class public Lorg/chromium/chrome/browser/infobar/SafetyTipInfoBar;
.super Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
.source "PG"


# instance fields
.field public J:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;-><init>(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p8, p0, Lorg/chromium/chrome/browser/infobar/SafetyTipInfoBar;->J:Ljava/lang/String;

    return-void
.end method

.method public static create(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
    .locals 9

    .line 1
    invoke-static {p0}, LGZ;->a(I)I

    move-result v1

    .line 2
    new-instance p0, Lorg/chromium/chrome/browser/infobar/SafetyTipInfoBar;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/chromium/chrome/browser/infobar/SafetyTipInfoBar;-><init>(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public a(LUf0;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->a(LUf0;)V

    .line 2
    iget-object p1, p1, LUf0;->G:LRf0;

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/SafetyTipInfoBar;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, LRf0;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    return-void
.end method
