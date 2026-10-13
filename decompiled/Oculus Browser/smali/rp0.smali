.class public final Lrp0;
.super Lg11;
.source "PG"


# direct methods
.method public constructor <init>(Lsp0;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lg11;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public didFinishNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lorg/chromium/content_public/browser/NavigationHandle;->e:Z

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p1, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    if-eqz v0, :cond_3

    .line 3
    iget-boolean v0, p1, Lorg/chromium/content_public/browser/NavigationHandle;->f:Z

    if-nez v0, :cond_3

    .line 4
    iget-object p1, p1, Lorg/chromium/content_public/browser/NavigationHandle;->d:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lg11;->mWebContents:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->v()Lorg/chromium/content_public/browser/RenderFrameHost;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 9
    iget-wide v2, v1, Lorg/chromium/components/search_engines/TemplateUrlService;->c:J

    .line 10
    invoke-static {v2, v3, v1, p1}, LJ/N;->MF3JCGn0(JLjava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-interface {v0}, Lorg/chromium/content_public/browser/RenderFrameHost;->c()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 12
    throw p1

    .line 13
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lg11;->destroy()V

    return-void
.end method
