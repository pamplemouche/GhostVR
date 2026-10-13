.class public final synthetic LqY;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LrY;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(LrY;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LqY;->a:LrY;

    iput-object p2, p0, LqY;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, LqY;->a:LrY;

    iget-object v1, p0, LqY;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "MobileActionMode.WebSearch"

    .line 2
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    .line 3
    iget-object p1, v0, LrY;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {p1}, LoI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LpI0;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e8

    .line 4
    invoke-static {v1, v2}, LC01;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, v0, LrY;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->j()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    invoke-static {v2}, LJa0;->a(Lorg/chromium/chrome/browser/profiles/Profile;)LoT0;

    move-result-object v2

    const-string v3, "web_search_performed"

    .line 7
    invoke-interface {v2, v3}, LoT0;->c(Ljava/lang/String;)V

    .line 8
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v2

    .line 9
    iget-wide v3, v2, Lorg/chromium/components/search_engines/TemplateUrlService;->c:J

    .line 10
    invoke-static {v3, v4, v2, v1}, LJ/N;->Mweksmrf(JLjava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v2, v0, LrY;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->a(Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;)Ljava/lang/String;

    move-result-object v2

    .line 12
    new-instance v3, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v4, 0x0

    .line 13
    invoke-direct {v3, v1, v4}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object v2, v3, Lorg/chromium/content_public/browser/LoadUrlParams;->g:Ljava/lang/String;

    const/4 v1, 0x5

    .line 15
    iput v1, v3, Lorg/chromium/content_public/browser/LoadUrlParams;->d:I

    const/4 v1, 0x4

    .line 16
    iget-object v0, v0, LrY;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 17
    iget-boolean v2, v0, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 18
    check-cast p1, LrI0;

    .line 19
    iget-object p1, p1, LrI0;->g:LcI0;

    invoke-interface {p1, v2}, LcI0;->getTabCreator(Z)LbI0;

    move-result-object p1

    invoke-virtual {p1, v3, v1, v0}, LbI0;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;ILorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 20
    throw p1
.end method
