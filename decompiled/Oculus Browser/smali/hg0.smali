.class public Lhg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhg0;->w:Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lhg0;->w:Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    .line 3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->e()V

    const/4 p1, 0x3

    .line 4
    invoke-static {p1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->f(I)V

    .line 5
    iget-object p1, p0, Lhg0;->w:Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->d(I)V

    .line 7
    iget-object p1, p0, Lhg0;->w:Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;

    .line 8
    iget-object v1, p1, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->M:Log0;

    .line 9
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->m()I

    move-result p1

    .line 10
    invoke-virtual {v1, v0, p1}, Log0;->a(II)V

    .line 11
    iget-object p1, p0, Lhg0;->w:Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p1, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->R:Z

    return-void
.end method
