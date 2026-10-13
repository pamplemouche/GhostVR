.class public LlD0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, LlD0;->w:Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LlD0;->w:Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;

    .line 2
    iget-object v0, v0, Lep0;->G:Lorg/chromium/ui/base/WindowAndroid;

    .line 3
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardDelegate()Lrc1;

    move-result-object v0

    iget-object v1, p0, LlD0;->w:Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;

    invoke-static {v1}, Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;->a(Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;)LKp0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrc1;->b(Landroid/view/View;)V

    return-void
.end method
