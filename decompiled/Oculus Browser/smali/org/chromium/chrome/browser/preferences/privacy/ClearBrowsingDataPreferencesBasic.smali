.class public Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferencesBasic;
.super Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;-><init>()V

    return-void
.end method

.method public static final synthetic V()V
    .locals 3

    .line 1
    new-instance v0, LiJ0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LiJ0;-><init>(Z)V

    const-string v1, "https://myactivity.google.com/myactivity/?utm_source=chrome_cbd"

    const/4 v2, 0x2

    .line 2
    invoke-virtual {v0, v1, v2}, LiJ0;->launchUrl(Ljava/lang/String;I)Lorg/chromium/chrome/browser/tab/Tab;

    return-void
.end method


# virtual methods
.method public P()Ljava/util/List;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public Q()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public S()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "History.ClearBrowsingData.UserDeletedFromTab"

    .line 1
    invoke-static {v2, v0, v1}, LfV;->a(Ljava/lang/String;II)V

    const-string v0, "ClearBrowsingData_BasicTab"

    .line 2
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lrc;->b(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->i(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->i(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    .line 6
    sget-object v3, LNA0;->w:Ljava/lang/Runnable;

    .line 7
    iput-object v3, v0, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->q0:Ljava/lang/Runnable;

    .line 8
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v3

    invoke-virtual {v3}, LKU0;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-static {}, LnV0;->d()LnV0;

    move-result-object v3

    invoke-virtual {v3}, LnV0;->a()Z

    move-result v3

    .line 10
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v4

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 11
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->a()Ljava/util/Set;

    move-result-object v3

    const/16 v4, 0x11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f1301f8

    goto :goto_0

    :cond_1
    const p1, 0x7f1301f7

    .line 12
    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->c(I)V

    const p1, 0x7f1301fb

    .line 13
    invoke-virtual {v2, p1}, Landroid/support/v7/preference/Preference;->c(I)V

    :cond_2
    return-void
.end method
