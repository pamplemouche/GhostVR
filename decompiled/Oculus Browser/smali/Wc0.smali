.class public final synthetic LWc0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LXc0;

.field public final x:Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;

.field public final y:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method public constructor <init>(LXc0;Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWc0;->w:LXc0;

    iput-object p2, p0, LWc0;->x:Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;

    iput-object p3, p0, LWc0;->y:Lorg/chromium/chrome/browser/tab/Tab;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LWc0;->w:LXc0;

    iget-object v1, p0, LWc0;->x:Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;

    iget-object v2, p0, LWc0;->y:Lorg/chromium/chrome/browser/tab/Tab;

    .line 1
    iget-object v3, v0, LXc0;->w:Lbd0;

    invoke-virtual {v3, v1}, Lkd0;->enterPersistentFullscreenMode(Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;)V

    .line 2
    iget-object v1, v2, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object v1

    .line 4
    invoke-interface {v1}, LX01;->d()V

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v2, v1}, LXc0;->a(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/Runnable;)V

    return-void
.end method
