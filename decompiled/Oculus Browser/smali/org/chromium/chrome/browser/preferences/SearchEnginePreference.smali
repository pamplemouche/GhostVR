.class public Lorg/chromium/chrome/browser/preferences/SearchEnginePreference;
.super Lv3;
.source "PG"


# instance fields
.field public E0:LBy0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv3;-><init>()V

    return-void
.end method


# virtual methods
.method public M()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEnginePreference;->E0:LBy0;

    .line 3
    invoke-virtual {v0}, LBy0;->c()V

    .line 4
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lorg/chromium/components/search_engines/TemplateUrlService;->b:LWT;

    invoke-virtual {v1, v0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public N()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEnginePreference;->E0:LBy0;

    .line 3
    iget-boolean v1, v0, LBy0;->C:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/components/search_engines/TemplateUrlService;->b(LkU0;)V

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, LBy0;->C:Z

    .line 6
    :cond_0
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lorg/chromium/components/search_engines/TemplateUrlService;->b:LWT;

    invoke-virtual {v1, v0}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lv3;->O()V

    .line 2
    invoke-virtual {p0}, Lv3;->O()V

    .line 3
    iget-object p1, p0, Lv3;->y0:Landroid/widget/ListView;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lz2;->b(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const v0, 0x7f1304fd

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 3
    new-instance p1, LBy0;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-direct {p1, v0}, LBy0;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/SearchEnginePreference;->E0:LBy0;

    .line 4
    invoke-virtual {p0, p1}, Lv3;->a(Landroid/widget/ListAdapter;)V

    return-void
.end method
