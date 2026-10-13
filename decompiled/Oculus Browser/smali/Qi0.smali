.class public LQi0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lorg/chromium/content_public/browser/WebContents;

.field public final synthetic b:Lorg/chromium/chrome/browser/ChromeActivity;


# direct methods
.method public constructor <init>(LWi0;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, LQi0;->a:Lorg/chromium/content_public/browser/WebContents;

    iput-object p3, p0, LQi0;->b:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 2
    iget-object p1, p0, LQi0;->a:Lorg/chromium/content_public/browser/WebContents;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/chromium/content_public/browser/WebContents;->c(Z)V

    .line 3
    iget-object p1, p0, LQi0;->b:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->a(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->b(Z)V

    return-void
.end method
