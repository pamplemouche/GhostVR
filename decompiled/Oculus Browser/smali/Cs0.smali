.class public final synthetic LCs0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/page_info/PageInfoController;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/page_info/PageInfoController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LCs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoController;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, LCs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoController;

    .line 1
    iget-object v1, v0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->y:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    iget-object v1, v1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 3
    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->m()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xa

    .line 4
    iget-wide v2, v0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->A:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 5
    invoke-static {v2, v3, v0, v1}, LJ/N;->MPH$pinU(JLjava/lang/Object;I)V

    .line 6
    :cond_0
    iget-object v1, v0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->w:Landroid/content/Context;

    iget-object v0, v0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->y:Lorg/chromium/chrome/browser/tab/Tab;

    .line 7
    new-instance v2, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;

    invoke-direct {v2, v1, v0}, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/tab/Tab;)V

    :cond_1
    return-void
.end method
