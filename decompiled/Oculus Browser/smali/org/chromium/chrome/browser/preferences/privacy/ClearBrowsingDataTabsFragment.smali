.class public Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataTabsFragment;
.super Lz2;
.source "PG"


# instance fields
.field public u0:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz2;-><init>()V

    return-void
.end method

.method public static synthetic g(I)I
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, LH6;->a(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    rsub-int/lit8 p0, p0, 0x1

    :cond_0
    return p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const p3, 0x7f0e0054

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b00c9

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager;

    .line 3
    new-instance p3, LPA0;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataTabsFragment;->u0:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

    .line 4
    iget-object v2, p0, Lz2;->N:LY2;

    .line 5
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v3

    invoke-direct {p3, v1, v2, v3}, LPA0;-><init>(Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;LH2;Landroid/content/Context;)V

    .line 6
    iget-object v1, p2, Landroid/support/v4/view/ViewPager;->A:Lv7;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {v1, v3}, Lv7;->a(Landroid/database/DataSetObserver;)V

    .line 8
    iget-object v1, p2, Landroid/support/v4/view/ViewPager;->A:Lv7;

    invoke-virtual {v1, p2}, Lv7;->b(Landroid/view/ViewGroup;)V

    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v4, p2, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 10
    iget-object v4, p2, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LH7;

    .line 11
    iget-object v5, p2, Landroid/support/v4/view/ViewPager;->A:Lv7;

    iget v6, v4, LH7;->b:I

    iget-object v4, v4, LH7;->a:Ljava/lang/Object;

    invoke-virtual {v5, p2, v6, v4}, Lv7;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p2, Landroid/support/v4/view/ViewPager;->A:Lv7;

    invoke-virtual {v1, p2}, Lv7;->a(Landroid/view/ViewGroup;)V

    .line 13
    iget-object v1, p2, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 14
    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 15
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 16
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, LI7;

    .line 17
    iget-boolean v4, v4, LI7;->a:Z

    if-nez v4, :cond_1

    .line 18
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/2addr v1, v2

    goto :goto_1

    .line 19
    :cond_2
    iput v0, p2, Landroid/support/v4/view/ViewPager;->B:I

    .line 20
    invoke-virtual {p2, v0, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 21
    :cond_3
    iput-object p3, p2, Landroid/support/v4/view/ViewPager;->A:Lv7;

    .line 22
    iput v0, p2, Landroid/support/v4/view/ViewPager;->w:I

    .line 23
    iget-object v1, p2, Landroid/support/v4/view/ViewPager;->H:LM7;

    if-nez v1, :cond_4

    .line 24
    new-instance v1, LM7;

    invoke-direct {v1, p2}, LM7;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v1, p2, Landroid/support/v4/view/ViewPager;->H:LM7;

    .line 25
    :cond_4
    iget-object v1, p2, Landroid/support/v4/view/ViewPager;->A:Lv7;

    iget-object v4, p2, Landroid/support/v4/view/ViewPager;->H:LM7;

    invoke-virtual {v1, v4}, Lv7;->a(Landroid/database/DataSetObserver;)V

    .line 26
    iput-boolean v0, p2, Landroid/support/v4/view/ViewPager;->P:Z

    .line 27
    iget-boolean v1, p2, Landroid/support/v4/view/ViewPager;->l0:Z

    .line 28
    iput-boolean v2, p2, Landroid/support/v4/view/ViewPager;->l0:Z

    .line 29
    iget-object v4, p2, Landroid/support/v4/view/ViewPager;->A:Lv7;

    move-object v5, v4

    check-cast v5, LPA0;

    if-eqz v5, :cond_e

    const/4 v5, 0x2

    iput v5, p2, Landroid/support/v4/view/ViewPager;->w:I

    .line 30
    iget v5, p2, Landroid/support/v4/view/ViewPager;->C:I

    if-ltz v5, :cond_6

    .line 31
    check-cast v4, Lb3;

    if-eqz v4, :cond_5

    .line 32
    invoke-virtual {p2, v5, v0, v2, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    const/4 v1, -0x1

    .line 33
    iput v1, p2, Landroid/support/v4/view/ViewPager;->C:I

    .line 34
    iput-object v3, p2, Landroid/support/v4/view/ViewPager;->D:Landroid/os/Parcelable;

    .line 35
    iput-object v3, p2, Landroid/support/v4/view/ViewPager;->E:Ljava/lang/ClassLoader;

    goto :goto_2

    .line 36
    :cond_5
    throw v3

    :cond_6
    if-nez v1, :cond_7

    .line 37
    iget v1, p2, Landroid/support/v4/view/ViewPager;->B:I

    invoke-virtual {p2, v1}, Landroid/support/v4/view/ViewPager;->e(I)V

    goto :goto_2

    .line 38
    :cond_7
    invoke-virtual {p2}, Landroid/view/ViewGroup;->requestLayout()V

    .line 39
    :goto_2
    iget-object v1, p2, Landroid/support/v4/view/ViewPager;->p0:Ljava/util/List;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 40
    iget-object v1, p2, Landroid/support/v4/view/ViewPager;->p0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_9

    .line 41
    iget-object v5, p2, Landroid/support/v4/view/ViewPager;->p0:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LK7;

    check-cast v5, Lo0;

    .line 42
    iget-object v6, v5, Lo0;->b:Landroid/support/design/widget/TabLayout;

    iget-object v7, v6, Landroid/support/design/widget/TabLayout;->f0:Landroid/support/v4/view/ViewPager;

    if-ne v7, p2, :cond_8

    .line 43
    iget-boolean v5, v5, Lo0;->a:Z

    invoke-virtual {v6, p3, v5}, Landroid/support/design/widget/TabLayout;->a(Lv7;Z)V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    const p3, 0x7f0b00c8

    .line 44
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TabLayout;

    .line 45
    invoke-virtual {p1, p2, v2, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/ViewPager;ZZ)V

    .line 46
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 47
    invoke-static {p2}, LJ/N;->Mmwj2RKX(Ljava/lang/Object;)I

    move-result p2

    .line 48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-static {p3}, LH6;->a(Ljava/util/Locale;)I

    move-result p3

    if-ne p3, v2, :cond_a

    rsub-int/lit8 p2, p2, 0x1

    .line 49
    :cond_a
    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout;->c(I)Lv0;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 50
    invoke-virtual {p2}, Lv0;->b()V

    .line 51
    :cond_b
    new-instance p2, LQA0;

    invoke-direct {p2, v3}, LQA0;-><init>(LOA0;)V

    .line 52
    iget-object p3, p1, Landroid/support/design/widget/TabLayout;->c0:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_c

    .line 53
    iget-object p1, p1, Landroid/support/design/widget/TabLayout;->c0:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_c
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    check-cast p1, Lyy0;

    .line 55
    throw v3

    .line 56
    :cond_d
    throw v3

    .line 57
    :cond_e
    throw v3
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 58
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const p2, 0x7f1303bf

    const/4 v0, 0x0

    const v1, 0x7f0b026d

    .line 59
    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 60
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0}, LP3;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f080160

    .line 61
    invoke-static {p2, v1, v0}, LY0;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)LY0;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const/4 p2, 0x1

    .line 62
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 4

    .line 63
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0b026d

    if-ne p1, v0, :cond_0

    .line 64
    invoke-static {}, Lue0;->a()Lue0;

    move-result-object p1

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    const v1, 0x7f13032d

    .line 65
    invoke-virtual {p0, v1}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    const/4 v3, 0x0

    .line 67
    invoke-virtual {p1, v0, v1, v2, v3}, Lue0;->a(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lz2;->b(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lz2;->c(Z)V

    if-nez p1, :cond_3

    .line 3
    new-instance p1, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

    invoke-direct {p1}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataTabsFragment;->u0:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;->b()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    .line 5
    invoke-static {v1, p1}, LJ/N;->Mtl9i2TH(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataTabsFragment;->u0:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, LZA0;->b()Z

    move-result v1

    if-nez v1, :cond_4

    .line 8
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;->a()Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;->b()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    .line 10
    invoke-static {v1, v0, p1}, LJ/N;->MIwrBXvf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_0
    throw v0

    .line 12
    :cond_1
    throw v0

    .line 13
    :cond_2
    throw v0

    :cond_3
    const-string v0, "clearBrowsingDataFetcher"

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataTabsFragment;->u0:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

    :cond_4
    :goto_0
    const-string p1, "ClearBrowsingData_DialogCreated"

    .line 15
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataTabsFragment;->u0:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

    const-string v1, "clearBrowsingDataFetcher"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
