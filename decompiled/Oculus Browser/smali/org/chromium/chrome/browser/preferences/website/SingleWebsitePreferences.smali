.class public Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;
.super Lrc;
.source "PG"

# interfaces
.implements Llc;
.implements Lmc;


# static fields
.field public static final K0:[Ljava/lang/String;


# instance fields
.field public final E0:LtC0;

.field public F0:LyC0;

.field public G0:I

.field public H0:I

.field public I0:Ljava/lang/Integer;

.field public final J0:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    const-string v16, "protected_media_identifier_permission_list"

    const-string v17, "sensors_permission_list"

    const-string v1, "ads_permission_list"

    const-string v2, "automatic_downloads_permission_list"

    const-string v3, "autoplay_permission_list"

    const-string v4, "background_sync_permission_list"

    const-string v5, "bluetooth_scanning_permission_list"

    const-string v6, "cookies_permission_list"

    const-string v7, "javascript_permission_list"

    const-string v8, "popup_permission_list"

    const-string v9, "sound_permission_list"

    const-string v10, "camera_permission_list"

    const-string v11, "clipboard_permission_list"

    const-string v12, "location_access_list"

    const-string v13, "microphone_permission_list"

    const-string v14, "midi_sysex_permission_list"

    const-string v15, "push_notifications_list"

    .line 2
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->K0:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    .line 2
    new-instance v0, LtC0;

    invoke-direct {v0}, LtC0;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->E0:LtC0;

    .line 3
    new-instance v0, LjC0;

    invoke-direct {v0, p0}, LjC0;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->J0:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(LzC0;Ljava/util/Collection;)LyC0;
    .locals 9

    .line 14
    invoke-virtual {p0}, LzC0;->b()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v2, LyC0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, LyC0;-><init>(LzC0;LzC0;)V

    .line 17
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LyC0;

    .line 18
    iget-object v4, v2, LyC0;->y:[LWB0;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    if-nez v4, :cond_1

    .line 19
    iget-object v4, p1, LyC0;->y:[LWB0;

    aget-object v4, v4, v5

    if-eqz v4, :cond_1

    .line 20
    invoke-virtual {p1, v2}, LyC0;->a(LyC0;)I

    move-result v4

    if-nez v4, :cond_1

    .line 21
    iget-object v4, p1, LyC0;->y:[LWB0;

    aget-object v4, v4, v5

    .line 22
    iget-object v6, v2, LyC0;->y:[LWB0;

    aput-object v4, v6, v5

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/16 v6, 0x8

    const-string v7, "*"

    if-ge v4, v6, :cond_5

    .line 23
    iget-object v6, v2, LyC0;->z:[LcC0;

    aget-object v6, v6, v4

    if-nez v6, :cond_4

    iget-object v6, p1, LyC0;->z:[LcC0;

    aget-object v8, v6, v4

    if-eqz v8, :cond_4

    .line 24
    aget-object v6, v6, v4

    .line 25
    iget-object v8, v6, LcC0;->y:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 27
    invoke-virtual {v6}, LcC0;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v6}, LcC0;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_4

    .line 28
    iget-object v6, p1, LyC0;->z:[LcC0;

    aget-object v6, v6, v4

    .line 29
    iget-object v7, v2, LyC0;->z:[LcC0;

    .line 30
    iget v8, v6, LcC0;->z:I

    .line 31
    aput-object v6, v7, v8

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 32
    :cond_5
    iget-object v4, v2, LyC0;->A:LZB0;

    if-nez v4, :cond_6

    .line 33
    iget-object v4, p1, LyC0;->A:LZB0;

    if-eqz v4, :cond_6

    .line 34
    iget-object v4, v4, LZB0;->w:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 36
    iget-object v4, p1, LyC0;->A:LZB0;

    .line 37
    iput-object v4, v2, LyC0;->A:LZB0;

    :cond_6
    if-eqz p1, :cond_e

    .line 38
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p1, LyC0;->B:Ljava/util/List;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LvC0;

    .line 40
    iget-object v8, v6, LvC0;->w:Ljava/lang/String;

    .line 41
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 42
    iget-object v8, v2, LyC0;->B:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 43
    :cond_8
    invoke-virtual {p1}, LyC0;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LOB0;

    .line 44
    iget-object v8, v6, LOB0;->x:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 46
    iget-object v8, v6, LOB0;->y:Ljava/lang/String;

    if-eqz v8, :cond_a

    .line 47
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 48
    :cond_a
    iget-object v8, v2, LyC0;->D:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 49
    :cond_b
    iget-object v4, p1, LyC0;->w:LzC0;

    .line 50
    iget-object v4, v4, LzC0;->y:Ljava/lang/String;

    .line 51
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_4
    const/16 v4, 0x9

    if-ge v5, v4, :cond_0

    if-nez v5, :cond_c

    goto :goto_5

    .line 52
    :cond_c
    iget-object v4, v2, LyC0;->y:[LWB0;

    aget-object v6, v4, v5

    if-nez v6, :cond_d

    .line 53
    iget-object v6, p1, LyC0;->y:[LWB0;

    aget-object v7, v6, v5

    if-eqz v7, :cond_d

    .line 54
    aget-object v6, v6, v5

    .line 55
    aput-object v6, v4, v5

    :cond_d
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 56
    :cond_e
    throw v3

    :cond_f
    return-object v2
.end method

.method public static e(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v1, Lh20;

    invoke-direct {v1, p0}, Lh20;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lh20;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, LzC0;->a(Ljava/lang/String;)LzC0;

    move-result-object p0

    const-string v1, "org.chromium.chrome.preferences.site_address"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public final O()V
    .locals 13

    const v0, 0x7f170017

    .line 1
    invoke-static {p0, v0}, Lxy0;->a(Lrc;I)V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->K0:[Ljava/lang/String;

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    iget-object v1, p0, Lrc;->u0:LDc;

    .line 5
    iget-object v1, v1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 6
    invoke-virtual {v1}, Lvc;->w()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    const/16 v7, 0x9

    if-ltz v2, :cond_14

    .line 7
    invoke-virtual {v1, v2}, Lvc;->e(I)Landroid/support/v7/preference/Preference;

    move-result-object v8

    .line 8
    iget-object v9, v8, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v10, "site_title"

    .line 9
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 10
    iget-object v6, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    invoke-virtual {v6}, LyC0;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 11
    :cond_0
    iget-object v9, v8, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v10, "clear_data"

    .line 12
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 13
    iget-object v6, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    invoke-virtual {v6}, LyC0;->c()J

    move-result-wide v6

    const-wide/16 v9, 0x0

    cmp-long v11, v6, v9

    if-lez v11, :cond_1

    .line 14
    iget-object v9, v8, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    const v10, 0x7f13045d

    .line 15
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    .line 16
    invoke-static {v9, v6, v7}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v4

    .line 17
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual {v8, v6}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 19
    :cond_1
    iget-object v6, p0, Lrc;->u0:LDc;

    .line 20
    iget-object v6, v6, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 21
    invoke-virtual {v6, v8}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    .line 22
    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->p()V

    goto/16 :goto_5

    .line 23
    :cond_2
    iget-object v9, v8, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v10, "reset_site_button"

    .line 24
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 25
    iput-object p0, v8, Landroid/support/v7/preference/Preference;->B:Lmc;

    goto/16 :goto_5

    :cond_3
    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x2

    if-ge v9, v7, :cond_e

    .line 26
    sget-object v11, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->K0:[Ljava/lang/String;

    aget-object v11, v11, v9

    .line 27
    iget-object v12, v8, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    .line 28
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    if-nez v9, :cond_a

    .line 29
    invoke-static {}, LuC0;->e()Z

    move-result v7

    if-nez v7, :cond_5

    .line 30
    invoke-virtual {p0, v8, v6}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->a(Landroid/support/v7/preference/Preference;Ljava/lang/Integer;)V

    goto/16 :goto_5

    .line 31
    :cond_5
    iget-object v7, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    .line 32
    iget-object v7, v7, LyC0;->w:LzC0;

    .line 33
    invoke-virtual {v7}, LzC0;->b()Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-static {v7}, LJ/N;->M7vagHzH(Ljava/lang/String;)Z

    move-result v7

    .line 35
    iget-object v9, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    invoke-virtual {v9, v4}, LyC0;->a(I)Ljava/lang/Integer;

    move-result-object v9

    if-nez v9, :cond_6

    if-nez v7, :cond_6

    .line 36
    invoke-virtual {p0, v8, v6}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->a(Landroid/support/v7/preference/Preference;Ljava/lang/Integer;)V

    goto/16 :goto_5

    :cond_6
    if-nez v9, :cond_8

    .line 37
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v6

    const/16 v7, 0x1a

    invoke-virtual {v6, v7}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a(I)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    goto :goto_2

    :cond_7
    const/4 v6, 0x2

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 38
    :cond_8
    invoke-virtual {p0, v8, v9}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->a(Landroid/support/v7/preference/Preference;Ljava/lang/Integer;)V

    .line 39
    move-object v6, v8

    check-cast v6, Landroid/support/v7/preference/ListPreference;

    new-array v7, v10, [Ljava/lang/String;

    const v10, 0x7f13069b

    .line 40
    invoke-virtual {p0, v10}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v4

    const v10, 0x7f13069a

    .line 41
    invoke-virtual {p0, v10}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v3

    .line 42
    iput-object v7, v6, Landroid/support/v7/preference/ListPreference;->o0:[Ljava/lang/CharSequence;

    .line 43
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v3, :cond_9

    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    const/4 v7, 0x1

    .line 44
    :goto_3
    iget-object v9, v6, Landroid/support/v7/preference/ListPreference;->p0:[Ljava/lang/CharSequence;

    if-eqz v9, :cond_12

    .line 45
    aget-object v7, v9, v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/ListPreference;->f(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    const/4 v6, 0x6

    if-ne v9, v6, :cond_d

    .line 46
    iget-object v7, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    .line 47
    invoke-virtual {v7, v6}, LyC0;->a(I)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_c

    .line 48
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v6

    const/16 v7, 0x1f

    invoke-virtual {v6, v7}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a(I)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v10, 0x1

    :cond_b
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 49
    :cond_c
    invoke-virtual {p0, v8, v6}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->a(Landroid/support/v7/preference/Preference;Ljava/lang/Integer;)V

    goto :goto_5

    .line 50
    :cond_d
    iget-object v6, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    invoke-virtual {v6, v9}, LyC0;->a(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v8, v6}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->a(Landroid/support/v7/preference/Preference;Ljava/lang/Integer;)V

    goto :goto_5

    :cond_e
    const/4 v6, 0x0

    :goto_4
    const/16 v7, 0x8

    if-ge v6, v7, :cond_12

    .line 51
    sget-object v7, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->K0:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x9

    aget-object v7, v7, v9

    .line 52
    iget-object v9, v8, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    .line 53
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_f
    const/4 v7, 0x5

    if-ne v6, v10, :cond_10

    .line 54
    iget-object v6, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    invoke-virtual {v6, v10}, LyC0;->b(I)Ljava/lang/Integer;

    move-result-object v6

    .line 55
    invoke-virtual {p0, v8, v6}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->a(Landroid/support/v7/preference/Preference;Ljava/lang/Integer;)V

    .line 56
    invoke-virtual {p0, v7}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->h(I)Z

    move-result v7

    if-eqz v7, :cond_12

    if-eqz v6, :cond_12

    .line 57
    invoke-virtual {p0, v8}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->f(Landroid/support/v7/preference/Preference;)V

    goto :goto_5

    :cond_10
    if-ne v6, v7, :cond_11

    .line 58
    invoke-virtual {p0, v8}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->d(Landroid/support/v7/preference/Preference;)V

    goto :goto_5

    .line 59
    :cond_11
    iget-object v7, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    invoke-virtual {v7, v6}, LyC0;->b(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v8, v6}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->a(Landroid/support/v7/preference/Preference;Ljava/lang/Integer;)V

    .line 60
    :cond_12
    :goto_5
    iget-object v6, v8, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 62
    iget v6, v8, Landroid/support/v7/preference/Preference;->C:I

    .line 63
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_13
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 64
    :cond_14
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 65
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 66
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    invoke-virtual {v1}, LyC0;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOB0;

    .line 67
    new-instance v8, LXx0;

    .line 68
    iget-object v9, p0, Lrc;->u0:LDc;

    .line 69
    iget-object v9, v9, LDc;->a:Landroid/content/Context;

    .line 70
    invoke-direct {v8, v9}, LXx0;-><init>(Landroid/content/Context;)V

    const-string v9, "chooser_permission_list"

    .line 71
    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->d(Ljava/lang/String;)V

    .line 72
    iget v9, v2, LOB0;->w:I

    .line 73
    invoke-static {v9}, LYB0;->b(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->a(I)V

    .line 74
    iget v9, v8, Landroid/support/v7/preference/Preference;->C:I

    if-eq v5, v9, :cond_15

    .line 75
    iput v5, v8, Landroid/support/v7/preference/Preference;->C:I

    .line 76
    invoke-virtual {v8}, Landroid/support/v7/preference/Preference;->p()V

    .line 77
    :cond_15
    iget-object v9, v2, LOB0;->z:Ljava/lang/String;

    .line 78
    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    const v9, 0x7f080113

    const v10, 0x7f1306a1

    .line 79
    new-instance v11, LnC0;

    invoke-direct {v11, p0, v2, v0, v8}, LnC0;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;LOB0;Landroid/support/v7/preference/PreferenceScreen;LXx0;)V

    invoke-virtual {v8, v9, v10, v11}, LXx0;->a(IILandroid/view/View$OnClickListener;)V

    .line 80
    new-instance v9, LpC0;

    invoke-direct {v9, p0, v2}, LpC0;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;LOB0;)V

    .line 81
    iput-object v9, v8, LXx0;->i0:Lqy0;

    .line 82
    invoke-static {v9, v8}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    .line 83
    iget-boolean v2, v2, LOB0;->B:Z

    if-eqz v2, :cond_16

    .line 84
    iget v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->H0:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->H0:I

    goto :goto_7

    .line 85
    :cond_16
    iget v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->G0:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->G0:I

    .line 86
    :goto_7
    invoke-virtual {v0, v8}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    goto :goto_6

    .line 87
    :cond_17
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 88
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x7

    .line 89
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->i(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 90
    invoke-static {v1}, LuC0;->d(I)LuC0;

    move-result-object v6

    goto :goto_8

    :cond_18
    const/4 v1, 0x4

    .line 91
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->i(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 92
    invoke-static {v1}, LuC0;->d(I)LuC0;

    move-result-object v6

    goto :goto_8

    .line 93
    :cond_19
    invoke-virtual {p0, v7}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->i(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 94
    invoke-static {v7}, LuC0;->d(I)LuC0;

    move-result-object v6

    goto :goto_8

    :cond_1a
    const/16 v1, 0xa

    .line 95
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->i(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 96
    invoke-static {v1}, LuC0;->d(I)LuC0;

    move-result-object v6

    :cond_1b
    :goto_8
    const-string v1, "os_permissions_warning_extra"

    const-string v2, "os_permissions_warning"

    if-nez v6, :cond_1c

    .line 97
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->b(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->b(Ljava/lang/CharSequence;)V

    const-string v0, "os_permissions_warning_divider"

    .line 99
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->b(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 100
    :cond_1c
    invoke-virtual {p0, v2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 101
    invoke-virtual {p0, v1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 102
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v5

    .line 103
    invoke-virtual {v6, v2, v1, v5, v4}, LuC0;->a(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/app/Activity;Z)V

    .line 104
    iget-object v5, v2, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    if-nez v5, :cond_1d

    .line 105
    invoke-virtual {v0, v2}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    .line 106
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->p()V

    goto :goto_9

    .line 107
    :cond_1d
    iget-object v2, v1, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    if-nez v2, :cond_1e

    .line 108
    invoke-virtual {v0, v1}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    .line 109
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->p()V

    .line 110
    :cond_1e
    :goto_9
    invoke-static {}, LuC0;->e()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    .line 111
    iget-object v0, v0, LyC0;->w:LzC0;

    .line 112
    invoke-virtual {v0}, LzC0;->b()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, LJ/N;->M7vagHzH(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 114
    sget-object v0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->K0:[Ljava/lang/String;

    aget-object v0, v0, v4

    .line 115
    invoke-virtual {p0, v0}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1f

    goto :goto_a

    :cond_1f
    const/4 v3, 0x0

    :goto_a
    if-nez v3, :cond_20

    const-string v0, "intrusive_ads_info"

    .line 116
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->b(Ljava/lang/CharSequence;)V

    const-string v0, "intrusive_ads_info_divider"

    .line 117
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->b(Ljava/lang/CharSequence;)V

    .line 118
    :cond_20
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->Q()Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "site_usage"

    .line 119
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->b(Ljava/lang/CharSequence;)V

    .line 120
    :cond_21
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->P()Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "site_permissions"

    .line 121
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->b(Ljava/lang/CharSequence;)V

    :cond_22
    return-void
.end method

.method public final P()Z
    .locals 6

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->G0:I

    const/4 v1, 0x1

    if-gtz v0, :cond_3

    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->H0:I

    if-lez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->K0:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 3
    invoke-virtual {p0, v5}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_1
    return v1
.end method

.method public final Q()Z
    .locals 1

    const-string v0, "clear_data"

    .line 1
    invoke-virtual {p0, v0}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final a(Landroid/support/v7/preference/Preference;Ljava/lang/String;)LXx0;
    .locals 2

    .line 57
    new-instance v0, LXx0;

    .line 58
    iget-object v1, p1, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 59
    invoke-direct {v0, v1}, LXx0;-><init>(Landroid/content/Context;)V

    .line 60
    iget-object v1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->d(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->e(Landroid/support/v7/preference/Preference;)V

    .line 63
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 64
    iput-boolean p2, v0, Landroid/support/v7/preference/Preference;->P:Z

    .line 65
    iget p2, p1, Landroid/support/v7/preference/Preference;->C:I

    .line 66
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->b(I)V

    .line 67
    iget-object p2, p0, Lrc;->u0:LDc;

    .line 68
    iget-object p2, p2, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 69
    invoke-virtual {p2, p1}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    .line 70
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->p()V

    .line 71
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 72
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 73
    invoke-virtual {p1, v0}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 74
    iget-object p2, p0, Lrc;->u0:LDc;

    .line 75
    iget-object p2, p2, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz p2, :cond_2

    .line 76
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 77
    sget-object p1, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->K0:[Ljava/lang/String;

    const/16 p3, 0xe

    aget-object p1, p1, p3

    .line 78
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->d(Landroid/support/v7/preference/Preference;)V

    .line 80
    :cond_1
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    const/4 p3, 0x5

    invoke-virtual {p1, p3}, LyC0;->b(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->I0:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_2

    if-eq p1, p2, :cond_2

    .line 82
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    .line 83
    iget-object p2, p2, LyC0;->w:LzC0;

    .line 84
    invoke-virtual {p2}, LzC0;->b()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    .line 85
    iget-object v0, v0, LyC0;->z:[LcC0;

    aget-object p3, v0, p3

    .line 86
    iget-boolean p3, p3, LcC0;->w:Z

    .line 87
    invoke-static {p2, p1, p3}, LJ/N;->MMfFK$v$(Ljava/lang/String;IZ)V

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->I0:Ljava/lang/Integer;

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const v0, 0x7f130501

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 2
    iget-object p1, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v0, "org.chromium.chrome.preferences.site"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v1, "org.chromium.chrome.preferences.site_address"

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 6
    check-cast p1, LyC0;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    .line 7
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->O()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 8
    new-instance p1, LNC0;

    invoke-direct {p1}, LNC0;-><init>()V

    .line 9
    new-instance v1, LrC0;

    check-cast v0, LzC0;

    invoke-direct {v1, p0, v0}, LrC0;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;LzC0;)V

    invoke-virtual {p1, v1}, LNC0;->a(LMC0;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lrc;->a(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v0, p0, Lrc;->v0:Landroid/support/v7/widget/RecyclerView;

    .line 12
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(LJg;)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lz2;->c0:Z

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/support/v7/preference/Preference;Ljava/lang/Integer;)V
    .locals 7

    if-nez p2, :cond_0

    .line 89
    iget-object p2, p0, Lrc;->u0:LDc;

    .line 90
    iget-object p2, p2, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 91
    invoke-virtual {p2, p1}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    .line 92
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->p()V

    return-void

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->e(Landroid/support/v7/preference/Preference;)V

    .line 94
    check-cast p1, Landroid/support/v7/preference/ListPreference;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    .line 95
    sget-object v3, LVB0;->a:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    const/4 v6, 0x0

    aput-object v5, v1, v6

    .line 96
    aget-object v3, v3, v0

    aput-object v3, v1, v4

    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, LYB0;->a(Ljava/lang/Integer;)I

    move-result v3

    invoke-virtual {p0, v3}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, LYB0;->a(Ljava/lang/Integer;)I

    move-result v0

    invoke-virtual {p0, v0}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    .line 99
    iput-object v1, p1, Landroid/support/v7/preference/ListPreference;->p0:[Ljava/lang/CharSequence;

    .line 100
    iput-object v2, p1, Landroid/support/v7/preference/ListPreference;->o0:[Ljava/lang/CharSequence;

    .line 101
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v4, :cond_1

    const/4 v4, 0x0

    .line 102
    :cond_1
    iget-object p2, p1, Landroid/support/v7/preference/ListPreference;->p0:[Ljava/lang/CharSequence;

    if-eqz p2, :cond_2

    .line 103
    aget-object p2, p2, v4

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/ListPreference;->f(Ljava/lang/String;)V

    .line 104
    :cond_2
    iput-object p0, p1, Landroid/support/v7/preference/Preference;->A:Llc;

    const-string p2, "%s"

    .line 105
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/ListPreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 106
    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 107
    sget-object v2, LVB0;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 108
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 109
    :goto_2
    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->K0:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_4

    .line 110
    aget-object v1, v1, v0

    .line 111
    iget-object v2, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p1, 0x9

    if-ge v0, p1, :cond_2

    .line 113
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    invoke-virtual {p1, v0, p2}, LyC0;->a(II)V

    goto :goto_3

    .line 114
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    sub-int/2addr v0, p1

    invoke-virtual {v1, v0, p2}, LyC0;->b(II)V

    :goto_3
    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return v3
.end method

.method public b(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/chromium/chrome/browser/preferences/website/ClearWebsiteStorage;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, LkC0;

    invoke-direct {v0, p0}, LkC0;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)V

    .line 3
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/ClearWebsiteStorageDialog;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/preferences/website/ClearWebsiteStorageDialog;-><init>()V

    .line 4
    sput-object v0, Lorg/chromium/chrome/browser/preferences/website/ClearWebsiteStorageDialog;->L0:Lorg/chromium/base/Callback;

    .line 5
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 6
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v2, "key"

    .line 7
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v0}, Lz2;->g(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v1, p0, p1}, Lz2;->a(Lz2;I)V

    .line 10
    iget-object p1, p0, Lz2;->N:LY2;

    const-string v0, "ClearWebsiteStorageDialog"

    .line 11
    invoke-virtual {v1, p1, v0}, Ls2;->a(LH2;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-super {p0, p1}, Lrc;->b(Landroid/support/v7/preference/Preference;)V

    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    .line 13
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 15
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 16
    invoke-virtual {v0, p1}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    .line 17
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->p()V

    :cond_0
    return-void
.end method

.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 1
    new-instance p1, LO8;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    const v1, 0x7f140245

    invoke-direct {p1, v0, v1}, LO8;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f130661

    .line 2
    invoke-virtual {p1, v0}, LO8;->b(I)LO8;

    const v1, 0x7f130662

    .line 3
    invoke-virtual {p1, v1}, LO8;->a(I)LO8;

    new-instance v1, LqC0;

    invoke-direct {v1, p0}, LqC0;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)V

    .line 4
    invoke-virtual {p1, v0, v1}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const v0, 0x7f1301d4

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 6
    invoke-virtual {p1}, LO8;->b()LP8;

    const/4 p1, 0x1

    return p1
.end method

.method public final d(Landroid/support/v7/preference/Preference;)V
    .locals 7

    .line 1
    invoke-static {}, LA20;->a()LA20;

    move-result-object v0

    .line 2
    new-instance v1, Lh20;

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    .line 3
    iget-object v2, v2, LyC0;->w:LzC0;

    .line 4
    invoke-virtual {v2}, LzC0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lh20;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v2, v0, LA20;->a:LB20;

    .line 6
    iget-object v3, v2, LB20;->a:Landroid/content/SharedPreferences;

    invoke-virtual {v2, v1}, LB20;->a(Lh20;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 7
    iget-object v0, v0, LA20;->a:LB20;

    .line 8
    iget-object v6, v0, LB20;->a:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, LB20;->c(Lh20;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 10
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v3, :cond_0

    const-string v3, "android.settings.APP_NOTIFICATION_SETTINGS"

    .line 11
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.provider.extra.APP_PACKAGE"

    .line 12
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 13
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    const v0, 0x7f13065f

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    .line 15
    invoke-virtual {p0, v0, v3}, Lz2;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->a(Landroid/support/v7/preference/Preference;Ljava/lang/String;)LXx0;

    move-result-object p1

    const v0, 0x7f130660

    const v2, 0x7f0802a3

    .line 17
    invoke-virtual {p1, v2, v0, v4}, LXx0;->a(IILandroid/view/View$OnClickListener;)V

    .line 18
    iput-boolean v5, p1, LXx0;->m0:Z

    .line 19
    new-instance v0, LlC0;

    invoke-direct {v0, p0, v1}, LlC0;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;Landroid/content/Intent;)V

    .line 20
    iput-object v0, p1, Landroid/support/v7/preference/Preference;->B:Lmc;

    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    const/4 v1, 0x5

    .line 22
    invoke-virtual {v0, v1}, LyC0;->b(I)Ljava/lang/Integer;

    move-result-object v0

    .line 23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x6

    if-lt v1, v3, :cond_6

    if-eqz v0, :cond_5

    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_2

    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    goto :goto_3

    .line 26
    :cond_2
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->h(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_3

    const v1, 0x7f13069c

    goto :goto_1

    :cond_3
    const v1, 0x7f13069e

    :goto_1
    invoke-virtual {p0, v1}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 28
    :cond_4
    invoke-static {v0}, LYB0;->a(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {p0, v1}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    :goto_2
    invoke-virtual {p0, p1, v1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->a(Landroid/support/v7/preference/Preference;Ljava/lang/String;)LXx0;

    move-result-object v1

    .line 30
    iput-object v0, v1, Landroid/support/v7/preference/Preference;->R:Ljava/lang/Object;

    .line 31
    new-instance v0, LmC0;

    invoke-direct {v0, p0, p1}, LmC0;-><init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;Landroid/support/v7/preference/Preference;)V

    .line 32
    iput-object v0, v1, Landroid/support/v7/preference/Preference;->B:Lmc;

    goto :goto_4

    .line 33
    :cond_5
    :goto_3
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 34
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 35
    invoke-virtual {v0, p1}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    .line 36
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->p()V

    return-void

    .line 37
    :cond_6
    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->a(Landroid/support/v7/preference/Preference;Ljava/lang/Integer;)V

    .line 38
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->h(I)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 39
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->f(Landroid/support/v7/preference/Preference;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final e(Landroid/support/v7/preference/Preference;)V
    .locals 5

    .line 4
    iget-object v0, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    sget-object v3, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->K0:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 6
    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x9

    if-ge v2, v0, :cond_0

    .line 7
    invoke-static {v2}, LWB0;->a(I)I

    move-result v0

    goto :goto_1

    :cond_0
    sub-int/2addr v2, v0

    .line 8
    invoke-static {v2}, LcC0;->a(I)I

    move-result v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 9
    :goto_1
    invoke-static {v0}, LYB0;->c(I)LXB0;

    move-result-object v2

    .line 10
    iget v2, v2, LXB0;->c:I

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->d(I)V

    .line 12
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->n()Z

    move-result v2

    if-nez v2, :cond_4

    .line 13
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, LYB0;->a(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 15
    :cond_4
    invoke-static {v0}, LuC0;->c(I)LuC0;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 16
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v3

    .line 17
    invoke-virtual {v2}, LuC0;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v3}, LuC0;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_6

    .line 18
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v2, v0}, LuC0;->a(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 19
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->c(Z)V

    goto :goto_3

    .line 20
    :cond_6
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    invoke-static {v0}, LYB0;->b(I)I

    move-result v0

    .line 21
    invoke-static {v1, v0}, Lxy0;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-void
.end method

.method public final f(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/support/v7/preference/ListPreference;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f13069c

    .line 2
    invoke-virtual {p0, v1}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f13069e

    .line 3
    invoke-virtual {p0, v1}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    iput-object v0, p1, Landroid/support/v7/preference/ListPreference;->o0:[Ljava/lang/CharSequence;

    return-void
.end method

.method public final h(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    .line 2
    iget-object v0, v0, LyC0;->w:LzC0;

    .line 3
    invoke-virtual {v0}, LzC0;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, LJ/N;->M0_ThS1y(ILjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final i(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    .line 1
    invoke-static {v1}, LcC0;->a(I)I

    move-result v2

    .line 2
    invoke-static {p1}, LuC0;->b(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 3
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    invoke-virtual {v2, v1}, LyC0;->b(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {p1}, LuC0;->d(I)LuC0;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, LuC0;->c(Landroid/content/Context;)Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
