.class public LKJ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lq0;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, LKJ0;->w:Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lv0;)V
    .locals 0

    return-void
.end method

.method public b(Lv0;)V
    .locals 0

    return-void
.end method

.method public c(Lv0;)V
    .locals 2

    .line 1
    iget-object p1, p0, LKJ0;->w:Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;

    .line 2
    iget-object v0, p1, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->o0:Lv0;

    .line 3
    invoke-virtual {v0}, Lv0;->a()Z

    move-result v0

    .line 4
    iget-object v1, p1, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->w0:LpI0;

    if-eqz v1, :cond_2

    .line 5
    check-cast v1, LrI0;

    invoke-virtual {v1}, LrI0;->f()Z

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p1, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->w0:LpI0;

    invoke-interface {v1}, LpI0;->d()V

    .line 7
    iget-object v1, p1, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->w0:LpI0;

    invoke-interface {v1, v0}, LpI0;->a(Z)V

    if-eqz v0, :cond_1

    const v0, 0x7f1300ff

    goto :goto_0

    :cond_1
    const v0, 0x7f130101

    .line 8
    :goto_0
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method
