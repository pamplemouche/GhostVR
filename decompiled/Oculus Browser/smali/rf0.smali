.class public Lrf0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lrf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->H:LNf0;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lrf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->H:LNf0;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, LN10;->a()Z

    return-void
.end method
