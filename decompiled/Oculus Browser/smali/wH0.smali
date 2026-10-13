.class public LwH0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LQG0;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/tab/Tab;

.field public b:Z


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LwH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    new-instance v0, LvH0;

    invoke-direct {v0, p0}, LvH0;-><init>(LwH0;)V

    .line 4
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, v0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 6

    const-string v0, "DontAutoHideBrowserControls"

    .line 1
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, LwH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LwH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->O0()LkK0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LwH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 4
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->O0()LkK0;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, LwH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 7
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 8
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->m()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    .line 9
    :cond_2
    iget-object v2, p0, LwH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    const-string v5, "chrome://"

    .line 10
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    xor-int/2addr v5, v3

    and-int/2addr v4, v5

    const-string v5, "chrome-native://"

    .line 11
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v3

    and-int/2addr v2, v4

    .line 12
    iget-object v4, p0, LwH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->l()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    and-int/2addr v2, v4

    .line 13
    invoke-static {}, LuO0;->a()Z

    move-result v4

    xor-int/2addr v4, v3

    and-int/2addr v2, v4

    .line 14
    invoke-static {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object v4

    .line 15
    invoke-interface {v4}, LX01;->e()Z

    move-result v4

    xor-int/2addr v4, v3

    and-int/2addr v2, v4

    .line 16
    iget-object v4, p0, LwH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 17
    iget-boolean v4, v4, Lorg/chromium/chrome/browser/tab/Tab;->o:Z

    xor-int/2addr v4, v3

    and-int/2addr v2, v4

    .line 18
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->C()Z

    move-result v0

    xor-int/2addr v0, v3

    and-int/2addr v0, v2

    .line 19
    iget-object v2, p0, LwH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 20
    iget-boolean v4, v2, Lorg/chromium/chrome/browser/tab/Tab;->z:Z

    xor-int/2addr v4, v3

    and-int/2addr v0, v4

    .line 21
    iget-boolean v2, v2, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    xor-int/2addr v2, v3

    and-int/2addr v0, v2

    .line 22
    invoke-static {}, LZ60;->b()LZ60;

    move-result-object v2

    iget-boolean v2, v2, LZ60;->e:Z

    and-int/2addr v0, v2

    .line 23
    iget-boolean v2, p0, LwH0;->b:Z

    xor-int/2addr v2, v3

    and-int/2addr v0, v2

    .line 24
    iget-object v2, p0, LwH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 25
    invoke-static {v2}, LeH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LeH0;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 26
    iget-object v4, v2, LeH0;->w:Ljava/util/Map;

    const-string v5, "isTabModalDialogShowing"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v5}, LeH0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 27
    :cond_5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v3

    and-int/2addr v0, v1

    return v0

    :cond_6
    :goto_3
    return v1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
