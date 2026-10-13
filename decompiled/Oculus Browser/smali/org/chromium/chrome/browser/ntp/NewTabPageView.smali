.class public Lorg/chromium/chrome/browser/ntp/NewTabPageView;
.super Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;
.source "PG"


# instance fields
.field public A:Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;

.field public z:LVm0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, LVm0;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, LVm0;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->z:LVm0;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->z:LVm0;

    const/4 v0, 0x0

    const v1, 0x7f0e0123

    .line 4
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;

    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->A:Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 2
    throw v0
.end method
