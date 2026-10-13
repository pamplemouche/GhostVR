.class public LOs0;
.super Lg11;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/page_info/PageInfoController;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/page_info/PageInfoController;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    iput-object p1, p0, LOs0;->a:Lorg/chromium/chrome/browser/page_info/PageInfoController;

    invoke-direct {p0, p2}, Lg11;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lg11;->destroy()V

    .line 2
    iget-object v0, p0, LOs0;->a:Lorg/chromium/chrome/browser/page_info/PageInfoController;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->C:LWs0;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, LWs0;->a(Z)V

    return-void
.end method

.method public navigationEntryCommitted()V
    .locals 2

    .line 1
    iget-object v0, p0, LOs0;->a:Lorg/chromium/chrome/browser/page_info/PageInfoController;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->C:LWs0;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, LWs0;->a(Z)V

    return-void
.end method

.method public wasHidden()V
    .locals 2

    .line 1
    iget-object v0, p0, LOs0;->a:Lorg/chromium/chrome/browser/page_info/PageInfoController;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->C:LWs0;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, LWs0;->a(Z)V

    return-void
.end method
