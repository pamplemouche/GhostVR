.class public final LqD0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LkU0;
.implements LlU0;


# direct methods
.method public synthetic constructor <init>(LoD0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 3
    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/chromium/components/search_engines/TemplateUrlService;->d()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/components/search_engines/TemplateUrlService;->a()Lorg/chromium/components/search_engines/TemplateUrl;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Lorg/chromium/components/search_engines/TemplateUrl;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/chromium/components/search_engines/TemplateUrlService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0, v0, v2}, LNp0;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)LNp0;

    move-result-object v0

    .line 9
    iget-object v3, v0, LNp0;->b:Ljava/lang/CharSequence;

    iget v4, v0, LNp0;->d:I

    iget v0, v0, LNp0;->e:I

    .line 10
    invoke-interface {v3, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LrD0;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {v1}, Lorg/chromium/components/search_engines/TemplateUrl;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 13
    :goto_0
    invoke-static {}, LrD0;->a()LpD0;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 14
    sget-object v1, LyT;->a:Landroid/content/SharedPreferences;

    .line 15
    invoke-static {}, LrD0;->c()Z

    move-result v3

    if-nez v3, :cond_3

    move-object v0, v2

    :cond_3
    const-string v3, "org.chromium.chrome.browser.searchwidget.SEARCH_ENGINE_SHORTNAME"

    .line 16
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 18
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    invoke-static {v2}, LrD0;->a([I)V

    :cond_4
    :goto_1
    return-void

    .line 20
    :cond_5
    throw v2
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, LqD0;->a()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/components/search_engines/TemplateUrlService;->b(LkU0;)V

    .line 2
    invoke-virtual {p0}, LqD0;->a()V

    return-void
.end method
