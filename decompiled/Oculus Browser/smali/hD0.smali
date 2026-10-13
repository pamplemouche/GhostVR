.class public LhD0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LiD0;


# direct methods
.method public constructor <init>(LiD0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LhD0;->w:LiD0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, LhD0;->w:LiD0;

    iget-object v0, v0, LiD0;->a:Lorg/chromium/chrome/browser/searchwidget/SearchActivity;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->f0:Z

    .line 3
    iget-object v1, v0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->g0:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->d()Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->b()Z

    .line 5
    iget-object v1, v0, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->h0:Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;

    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "org.chromium.chrome.browser.searchwidget.START_VOICE_SEARCH"

    const/4 v3, 0x0

    .line 7
    invoke-static {v0, v2, v3}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    .line 8
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;->g(Z)V

    const-string v0, "SearchWidget.WidgetSelected"

    .line 9
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->a0()LkD0;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 11
    throw v0
.end method
