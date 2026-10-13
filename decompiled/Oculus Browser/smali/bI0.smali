.class public abstract LbI0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createFrozenTab(LtH0;II)Lorg/chromium/chrome/browser/tab/Tab;
.end method

.method public abstract createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;ILorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;
.end method

.method public final createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;I)Z
    .locals 1

    .line 1
    invoke-interface {p2}, Lorg/chromium/content_public/browser/WebContents;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LbI0;->createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public abstract createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;ILjava/lang/String;)Z
.end method

.method public abstract createsTabsAsynchronously()Z
.end method

.method public final launchNTP()V
    .locals 3

    const-string v0, "TabCreator.launchNTP"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "chrome-native://newtab/"

    const/4 v2, 0x2

    .line 2
    invoke-virtual {p0, v1, v2}, LbI0;->launchUrl(Ljava/lang/String;I)Lorg/chromium/chrome/browser/tab/Tab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract launchUrl(Ljava/lang/String;I)Lorg/chromium/chrome/browser/tab/Tab;
.end method
