.class public final LA30;
.super LDI0;
.source "PG"


# instance fields
.field public final w:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

.field public x:Z

.field public y:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;LpI0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, LDI0;-><init>(LpI0;)V

    .line 2
    iput-object p1, p0, LA30;->w:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    return-void
.end method


# virtual methods
.method public onEnterFullscreenMode(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isUserInteractable()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, LA30;->w:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->a(I)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, LA30;->y:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, LA30;->x:Z

    :goto_0
    return-void
.end method

.method public onInteractabilityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-boolean p1, p0, LA30;->x:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LA30;->y:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, LA30;->w:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->a(I)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, LA30;->x:Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, LA30;->y:Lorg/chromium/chrome/browser/tab/Tab;

    :cond_0
    return-void
.end method

.method public onTabRegistered(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 6

    .line 1
    iget-object v0, p0, LA30;->w:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 2
    iget-wide v1, v0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v3

    .line 4
    invoke-static {v1, v2, v0, p1, v3}, LJ/N;->MRvrWXuI(JLjava/lang/Object;Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method public onTabUnregistered(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 6

    .line 1
    iget-object v0, p0, LA30;->w:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 2
    iget-wide v1, v0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v3

    .line 4
    invoke-static {v1, v2, v0, p1, v3}, LJ/N;->M6M_espa(JLjava/lang/Object;Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method
