.class public Lorg/chromium/chrome/browser/infobar/translate/TranslateTabContent;
.super Landroid/widget/FrameLayout;
.source "PG"


# instance fields
.field public w:Landroid/widget/TextView;

.field public x:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0b04bf

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabContent;->w:Landroid/widget/TextView;

    const v0, 0x7f0b04be

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabContent;->x:Landroid/widget/ProgressBar;

    return-void
.end method
