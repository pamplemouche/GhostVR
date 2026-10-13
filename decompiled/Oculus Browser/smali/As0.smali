.class public LAs0;
.super Lg11;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    iput-object p1, p0, LAs0;->a:Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;

    invoke-direct {p0, p2}, Lg11;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lg11;->destroy()V

    .line 2
    iget-object v0, p0, LAs0;->a:Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;

    .line 3
    iget-object v1, v0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->x:LBd1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->y:Lle1;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LBd1;->a(Lle1;I)V

    return-void
.end method

.method public navigationEntryCommitted()V
    .locals 3

    .line 1
    iget-object v0, p0, LAs0;->a:Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;

    .line 2
    iget-object v1, v0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->x:LBd1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->y:Lle1;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LBd1;->a(Lle1;I)V

    return-void
.end method
