.class public Lfg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfg0;->w:Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lfg0;->w:Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;

    .line 2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->l()V

    return-void
.end method
