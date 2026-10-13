.class public LmT0;
.super LnT0;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LnT0;-><init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public onProvideVirtualStructure(Landroid/view/ViewStructure;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, LnT0;->c()Le11;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, v1}, Le11;->a(Landroid/view/ViewStructure;Z)V

    :cond_0
    return-void
.end method
