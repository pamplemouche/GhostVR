.class public Lorg/chromium/chrome/browser/snackbar/BottomContainer;
.super Landroid/widget/FrameLayout;
.source "PG"

# interfaces
.implements Lad0;


# instance fields
.field public w:Lbd0;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(IIZ)V
    .locals 0

    .line 1
    iget p1, p0, Lorg/chromium/chrome/browser/snackbar/BottomContainer;->x:F

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/snackbar/BottomContainer;->setTranslationY(F)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/chromium/chrome/browser/snackbar/BottomContainer;->x:F

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/snackbar/BottomContainer;->w:Lbd0;

    .line 3
    iget v0, p1, Lbd0;->H:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    throw v0

    .line 5
    :cond_0
    throw v0
.end method
