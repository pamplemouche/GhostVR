.class public Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;
.super Lg11;
.source "PG"


# instance fields
.field public a:J

.field public final b:LWT;

.field public final c:LVT;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/webcontents/WebContentsImpl;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lg11;-><init>()V

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    invoke-static {p0, p1}, LJ/N;->MTpUzW91(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iput-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->a:J

    .line 5
    new-instance p1, LWT;

    invoke-direct {p1}, LWT;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->b:LWT;

    .line 6
    invoke-virtual {p1}, LWT;->a()LVT;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0}, Lg11;->destroy()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->b:LWT;

    invoke-virtual {v0}, LWT;->clear()V

    .line 5
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 6
    invoke-static {v0, v1, p0}, LJ/N;->M7giG0Ri(JLjava/lang/Object;)V

    .line 7
    iput-wide v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->a:J

    :cond_1
    return-void
.end method

.method public didAttachInterstitialPage()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0}, Lg11;->didAttachInterstitialPage()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didChangeThemeColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0, p1}, Lg11;->didChangeThemeColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didDetachInterstitialPage()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0}, Lg11;->didDetachInterstitialPage()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didFailLoad(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0, p1, p2, p3, p4}, Lg11;->didFailLoad(ZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didFinishLoad(JLjava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0, p1, p2, p3, p4}, Lg11;->didFinishLoad(JLjava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didFinishNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0, p1}, Lg11;->didFinishNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didFirstVisuallyNonEmptyPaint()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0}, Lg11;->didFirstVisuallyNonEmptyPaint()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didRedirectNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0, p1}, Lg11;->didRedirectNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didStartLoading(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0, p1}, Lg11;->didStartLoading(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didStartNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0, p1}, Lg11;->didStartNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didStopLoading(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0, p1}, Lg11;->didStopLoading(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public documentAvailableInMainFrame()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0}, Lg11;->documentAvailableInMainFrame()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public documentLoadedInFrame(JZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0, p1, p2, p3}, Lg11;->documentLoadedInFrame(JZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hasEffectivelyFullscreenVideoChange(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0, p1}, Lg11;->hasEffectivelyFullscreenVideoChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public navigationEntriesChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0}, Lg11;->navigationEntriesChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public navigationEntriesDeleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0}, Lg11;->navigationEntriesDeleted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public navigationEntryCommitted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0}, Lg11;->navigationEntryCommitted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onWebContentsFocused()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0}, Lg11;->onWebContentsFocused()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onWebContentsLostFocus()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0}, Lg11;->onWebContentsLostFocus()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public renderProcessGone(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0, p1}, Lg11;->renderProcessGone(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public renderViewReady()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0}, Lg11;->renderViewReady()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public titleWasSet(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0, p1}, Lg11;->titleWasSet(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public viewportFitChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0, p1}, Lg11;->viewportFitChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public wasHidden()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0}, Lg11;->wasHidden()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public wasShown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg11;

    invoke-virtual {v0}, Lg11;->wasShown()V

    goto :goto_0

    :cond_0
    return-void
.end method
