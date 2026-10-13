.class public abstract Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;
.super Lrc;
.source "PG"

# interfaces
.implements LHA0;
.implements Lmc;
.implements Llc;


# instance fields
.field public E0:LZA0;

.field public F0:Landroid/app/ProgressDialog;

.field public G0:[LLA0;

.field public H0:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

.field public I0:Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;

.field public J0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->U()V

    return-void
.end method

.method public static h(I)I
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    return v0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static i(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const-string p0, "clear_site_settings_checkbox"

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "clear_form_data_checkbox"

    return-object p0

    :cond_2
    const-string p0, "clear_passwords_checkbox"

    return-object p0

    :cond_3
    const-string p0, "clear_cache_checkbox"

    return-object p0

    :cond_4
    const-string p0, "clear_cookies_checkbox"

    return-object p0

    :cond_5
    const-string p0, "clear_history_checkbox"

    return-object p0
.end method


# virtual methods
.method public H()V
    .locals 9

    .line 1
    invoke-super {p0}, Lz2;->H()V

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->O()V

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->G0:[LLA0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    iget-object v3, v3, LLA0;->z:Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;

    .line 5
    iget-wide v4, v3, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;->a:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 6
    invoke-static {v4, v5, v3}, LJ/N;->MwJMWVmv(JLjava/lang/Object;)V

    .line 7
    iput-wide v6, v3, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;->a:J

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final O()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->F0:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->F0:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->F0:Landroid/app/ProgressDialog;

    return-void
.end method

.method public abstract P()Ljava/util/List;
.end method

.method public abstract Q()I
.end method

.method public final R()Ljava/util/Set;
    .locals 6

    .line 1
    new-instance v0, LL6;

    invoke-direct {v0}, LL6;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->G0:[LLA0;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    iget-object v5, v4, LLA0;->y:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    .line 4
    iget-boolean v5, v5, LKc;->k0:Z

    if-eqz v5, :cond_0

    .line 5
    iget v4, v4, LLA0;->x:I

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, LL6;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public S()V
    .locals 0

    return-void
.end method

.method public final T()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->R()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->H0:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

    .line 5
    iget-object v0, v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->x:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6
    array-length v0, v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    const-string v0, "History.ClearBrowsingData.ImportantDialogShown"

    .line 7
    invoke-static {v0, v2}, LfV;->a(Ljava/lang/String;Z)V

    :goto_0
    if-eqz v2, :cond_2

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->H0:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

    .line 9
    iget-object v1, v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->x:[Ljava/lang/String;

    .line 10
    iget-object v2, v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->y:[I

    .line 11
    iget-object v0, v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->z:[Ljava/lang/String;

    .line 12
    new-instance v4, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;

    invoke-direct {v4}, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;-><init>()V

    .line 13
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "ImportantDomains"

    .line 14
    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "ImportantDomainReasons"

    .line 15
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v1, "FaviconURLs"

    .line 16
    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 17
    invoke-virtual {v4, v5}, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->g(Landroid/os/Bundle;)V

    .line 18
    iput-object v4, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->I0:Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;

    .line 19
    invoke-virtual {v4, p0, v3}, Lz2;->a(Lz2;I)V

    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->I0:Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;

    .line 21
    iget-object v1, p0, Lz2;->N:LY2;

    const-string v2, "ConfirmImportantSitesDialogFragment"

    .line 22
    invoke-virtual {v0, v1, v2}, Ls2;->a(LH2;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->R()Ljava/util/Set;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->a(Ljava/util/Set;[Ljava/lang/String;[I[Ljava/lang/String;[I)V

    return-void
.end method

.method public final U()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz2;->e0:Landroid/view/View;

    const v1, 0x7f0b00ca

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->R()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 104
    invoke-super {p0, p1, p2, p3}, Lrc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const p3, 0x7f170005

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/chromium/ui/widget/ButtonCompat;

    .line 106
    new-instance p3, LKA0;

    invoke-direct {p3, p0}, LKA0;-><init>(Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    iget-object p1, p0, Lrc;->v0:Landroid/support/v7/widget/RecyclerView;

    const/4 p3, 0x0

    .line 109
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->a(LJg;)V

    return-object p2
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "DeselectedDomains"

    .line 110
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string p1, "DeselectedDomainReasons"

    .line 111
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    const-string p1, "IgnoredDomains"

    .line 112
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string p1, "IgnoredDomainReasons"

    .line 113
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    if-eqz v3, :cond_0

    .line 114
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->H0:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

    .line 115
    iget-object p2, p1, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->x:[Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 116
    array-length p2, v3

    .line 117
    iget p1, p1, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->w:I

    add-int/lit8 p3, p1, 0x1

    add-int/2addr p1, v0

    const-string v1, "History.ClearBrowsingData.ImportantDeselectedNum"

    .line 118
    invoke-static {v1, p2, v0, p3, p1}, LfV;->a(Ljava/lang/String;IIII)V

    .line 119
    array-length p1, v5

    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->H0:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

    .line 120
    iget p2, p2, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->w:I

    add-int/lit8 p3, p2, 0x1

    add-int/2addr p2, v0

    const-string v1, "History.ClearBrowsingData.ImportantIgnoredNum"

    .line 121
    invoke-static {v1, p1, v0, p3, p2}, LfV;->a(Ljava/lang/String;IIII)V

    .line 122
    array-length p1, v3

    mul-int/lit8 p1, p1, 0x14

    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->H0:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

    .line 123
    iget-object p2, p2, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->x:[Ljava/lang/String;

    .line 124
    array-length p2, p2

    div-int/2addr p1, p2

    const/16 p2, 0x15

    const-string p3, "History.ClearBrowsingData.ImportantDeselectedPercent"

    .line 125
    invoke-static {p3, p1, p2}, LfV;->a(Ljava/lang/String;II)V

    .line 126
    array-length p1, v5

    mul-int/lit8 p1, p1, 0x14

    iget-object p3, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->H0:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

    .line 127
    iget-object p3, p3, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->x:[Ljava/lang/String;

    .line 128
    array-length p3, p3

    div-int/2addr p1, p3

    const-string p3, "History.ClearBrowsingData.ImportantIgnoredPercent"

    .line 129
    invoke-static {p3, p1, p2}, LfV;->a(Ljava/lang/String;II)V

    .line 130
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->R()Ljava/util/Set;

    move-result-object v2

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->a(Ljava/util/Set;[Ljava/lang/String;[I[Ljava/lang/String;[I)V

    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lz2;->c0:Z

    .line 140
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->U()V

    const/4 p1, 0x0

    .line 141
    invoke-virtual {p0, p1}, Lrc;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 11

    if-eqz p1, :cond_0

    const-string p2, "clearBrowsingDataFetcher"

    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->H0:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

    .line 36
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->J0:J

    .line 37
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f1301f5

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f170006

    .line 38
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    .line 39
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->P()Ljava/util/List;

    move-result-object p1

    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [LLA0;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->G0:[LLA0;

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 41
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_6

    .line 42
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_4

    .line 43
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 44
    invoke-static {v1, p2}, LJ/N;->MVEXC539(Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 45
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    .line 46
    invoke-static {p2}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->h(I)I

    move-result v4

    if-eqz v1, :cond_2

    .line 47
    invoke-static {v1, v4, p2, p2}, LJ/N;->MngbWiGV(Ljava/lang/Object;IIZ)V

    .line 48
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    .line 49
    invoke-static {p2}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->h(I)I

    move-result v4

    if-eqz v1, :cond_1

    .line 50
    invoke-static {v1, v4, v3, p2}, LJ/N;->MngbWiGV(Ljava/lang/Object;IIZ)V

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    throw v2

    .line 51
    :cond_2
    throw v2

    .line 52
    :cond_3
    throw v2

    :cond_4
    const/4 v10, 0x1

    .line 53
    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->G0:[LLA0;

    new-instance v3, LLA0;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v5

    .line 54
    invoke-static {v7}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->i(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    .line 55
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v4

    .line 56
    invoke-static {v7}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->h(I)I

    move-result v6

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->Q()I

    move-result v9

    if-eqz v4, :cond_5

    .line 57
    invoke-static {v4, v6, v9}, LJ/N;->M6R_V7y7(Ljava/lang/Object;II)Z

    move-result v9

    move-object v4, v3

    move-object v6, p0

    .line 58
    invoke-direct/range {v4 .. v10}, LLA0;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;ILorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;ZZ)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_5
    throw v2

    .line 60
    :cond_6
    new-instance v0, LL6;

    invoke-direct {v0}, LL6;-><init>()V

    const/4 v1, 0x0

    :goto_2
    const/4 v4, 0x6

    if-ge v1, v4, :cond_7

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, LL6;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 62
    :cond_7
    invoke-virtual {v0, p1}, LL6;->removeAll(Ljava/util/Collection;)Z

    .line 63
    invoke-virtual {v0}, LL6;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 64
    iget-object v1, p0, Lrc;->u0:LDc;

    .line 65
    iget-object v1, v1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3

    :cond_8
    const-string p1, "time_period_spinner"

    .line 67
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;

    .line 68
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance v4, LMA0;

    const v5, 0x7f1301f2

    .line 71
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p2, v5}, LMA0;-><init>(ILjava/lang/String;)V

    .line 72
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v4, LMA0;

    const v5, 0x7f1301ee

    .line 74
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, LMA0;-><init>(ILjava/lang/String;)V

    .line 75
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v3, LMA0;

    const v4, 0x7f1301ef

    .line 77
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v5, v4}, LMA0;-><init>(ILjava/lang/String;)V

    .line 78
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v3, LMA0;

    const v4, 0x7f1301f1

    .line 80
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v5, v4}, LMA0;-><init>(ILjava/lang/String;)V

    .line 81
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "ClearOldBrowsingData"

    .line 82
    invoke-static {v3}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 83
    new-instance v3, LMA0;

    const/4 v4, 0x5

    const v5, 0x7f1301f3

    .line 84
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, LMA0;-><init>(ILjava/lang/String;)V

    .line 85
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_9
    new-instance v3, LMA0;

    const/4 v4, 0x4

    const v5, 0x7f1301f0

    .line 87
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, LMA0;-><init>(ILjava/lang/String;)V

    .line 88
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v0, p2, [LMA0;

    .line 89
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LMA0;

    .line 90
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    .line 91
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->Q()I

    move-result v3

    if-eqz v1, :cond_d

    .line 92
    invoke-static {v1, v3}, LJ/N;->M7v5cLbl(Ljava/lang/Object;I)I

    move-result v1

    const/4 v2, -0x1

    .line 93
    :goto_4
    array-length v3, v0

    if-ge p2, v3, :cond_b

    .line 94
    aget-object v3, v0, p2

    .line 95
    iget v3, v3, LMA0;->a:I

    if-ne v3, v1, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_b
    const/4 p2, -0x1

    .line 96
    :goto_5
    iget-boolean v1, p1, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->l0:Z

    if-eqz v1, :cond_c

    const v1, 0x7f0e0177

    goto :goto_6

    :cond_c
    const v1, 0x1090008

    .line 97
    :goto_6
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 98
    iget-object v3, p1, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 99
    invoke-direct {v2, v3, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v2, p1, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->j0:Landroid/widget/ArrayAdapter;

    const v0, 0x1090009

    .line 100
    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 101
    iput p2, p1, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->k0:I

    .line 102
    iput-object p0, p1, Landroid/support/v7/preference/Preference;->A:Llc;

    return-void

    .line 103
    :cond_d
    throw v2
.end method

.method public final a(Ljava/util/Set;[Ljava/lang/String;[I[Ljava/lang/String;[I)V
    .locals 9

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->S()V

    .line 3
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v4

    const v5, 0x7f1301ec

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v5

    const v6, 0x7f1301eb

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {v0, v4, v5, v2, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->F0:Landroid/app/ProgressDialog;

    .line 9
    :goto_0
    new-instance v0, LL6;

    invoke-direct {v0}, LL6;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 11
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->h(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, LL6;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->J0:J

    sub-long/2addr v4, v6

    const-string p1, "History.ClearBrowsingData.TimeSpentInDialog"

    .line 13
    invoke-static {p1, v4, v5}, LfV;->b(Ljava/lang/String;J)V

    const/4 p1, 0x2

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, LL6;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15
    invoke-virtual {v0, v3}, LL6;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x3

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {v0, v3}, LL6;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x2

    :cond_4
    :goto_2
    const-string p1, "History.ClearBrowsingData.UserDeletedCookieOrCacheFromDialog"

    const/4 v2, 0x4

    .line 17
    invoke-static {p1, v1, v2}, LfV;->a(Ljava/lang/String;II)V

    const-string p1, "time_period_spinner"

    .line 18
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;

    .line 19
    iget-object v1, p1, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->i0:Landroid/widget/Spinner;

    if-nez v1, :cond_5

    .line 20
    iget-object v1, p1, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->j0:Landroid/widget/ArrayAdapter;

    iget p1, p1, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->k0:I

    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 21
    :cond_5
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    .line 22
    :goto_3
    check-cast p1, LMA0;

    .line 23
    iget v4, p1, LMA0;->a:I

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, LsT;->a(Ljava/util/List;)[I

    move-result-object v3

    if-eqz p2, :cond_6

    .line 25
    array-length p1, p2

    if-eqz p1, :cond_6

    .line 26
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;->a()Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;

    move-result-object v1

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;->a(LHA0;[II[Ljava/lang/String;[I[Ljava/lang/String;[I)V

    goto :goto_4

    .line 27
    :cond_6
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;->a()Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;

    move-result-object p1

    invoke-virtual {p1, p0, v3, v4}, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;->a(LHA0;[II)V

    .line 28
    :goto_4
    sget-object p1, LAe0;->a:LAe0;

    const/4 p2, 0x0

    if-nez p1, :cond_8

    .line 29
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 30
    new-instance p1, LAe0;

    invoke-direct {p1}, LAe0;-><init>()V

    .line 31
    sput-object p1, LAe0;->a:LAe0;

    goto :goto_5

    .line 32
    :cond_7
    throw p2

    .line 33
    :cond_8
    :goto_5
    sget-object p1, LAe0;->a:LAe0;

    if-eqz p1, :cond_9

    return-void

    .line 34
    :cond_9
    throw p2
.end method

.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 131
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v0, "time_period_spinner"

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 133
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->G0:[LLA0;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 134
    iput-boolean v0, v3, LLA0;->A:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p1

    .line 136
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->Q()I

    move-result v0

    check-cast p2, LMA0;

    .line 137
    iget p2, p2, LMA0;->a:I

    if-eqz p1, :cond_1

    .line 138
    invoke-static {p1, v0, p2}, LJ/N;->Mnq5Xect(Ljava/lang/Object;II)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return v0
.end method

.method public c()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-static {v0}, Lpl0;->c(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "History.ClearBrowsingData.ShownHistoryNoticeAfterClearing"

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->R()Ljava/util/Set;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->H0:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

    .line 4
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;->A:Z

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, LZA0;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    new-instance v0, LZA0;

    invoke-direct {v0}, LZA0;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->E0:LZA0;

    .line 7
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v3, "OtherFormsOfHistoryDialogFragment"

    invoke-virtual {v0, v1, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->O()V

    const/4 v0, 0x1

    .line 10
    invoke-static {v2, v0}, LfV;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 11
    throw v0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->O()V

    .line 13
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 14
    invoke-static {v2, v1}, LfV;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 15
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v0, "clear_button"

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->T()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lrc;->d(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->H0:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

    const-string v1, "clearBrowsingDataFetcher"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
