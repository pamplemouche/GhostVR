.class public Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;
.super Lrc;
.source "PG"

# interfaces
.implements LNL0;


# static fields
.field public static final J0:Ljava/util/Map;


# instance fields
.field public E0:Landroid/support/v7/preference/Preference;

.field public F0:Landroid/support/v7/preference/Preference;

.field public G0:Landroid/support/v7/preference/ListPreference;

.field public H0:Landroid/support/v7/preference/Preference;

.field public I0:Landroid/support/v7/preference/Preference;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "record-until-full"

    const-string v2, "Record until full"

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "record-as-much-as-possible"

    const-string v2, "Record until full (large buffer)"

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "record-continuously"

    const-string v2, "Record continuously"

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sput-object v0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->J0:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    return-void
.end method

.method public static P()Ljava/util/Set;
    .locals 4

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "tracing_categories"

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    invoke-static {}, LPL0;->a()LPL0;

    move-result-object v1

    .line 5
    iget-object v1, v1, LPL0;->d:Ljava/util/Set;

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-static {v2}, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->e(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static Q()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 2
    sget-object v1, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->J0:Ljava/util/Map;

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "tracing_mode"

    .line 4
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/util/Set;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->P()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->e(Ljava/lang/String;)I

    move-result v2

    if-eq p0, v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    sget-object p0, LyT;->a:Landroid/content/SharedPreferences;

    .line 6
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "tracing_categories"

    .line 7
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1

    const-string v0, "disabled-by-default-"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static h(I)Ljava/util/Set;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->P()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-static {v2}, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->e(Ljava/lang/String;)I

    move-result v3

    if-ne p0, v3, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public K()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    invoke-static {}, LPL0;->a()LPL0;

    move-result-object v0

    .line 3
    iget-object v0, v0, LPL0;->b:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public L()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->O()V

    .line 3
    invoke-static {}, LPL0;->a()LPL0;

    move-result-object v0

    .line 4
    iget-object v0, v0, LPL0;->b:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final O()V
    .locals 11

    .line 1
    invoke-static {}, LPL0;->a()LPL0;

    move-result-object v0

    .line 2
    iget v0, v0, LPL0;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eq v0, v1, :cond_2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 3
    :goto_2
    invoke-static {}, LQL0;->a()Z

    move-result v4

    .line 4
    iget-object v5, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->E0:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 5
    iget-object v5, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->F0:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 6
    iget-object v5, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->G0:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 7
    iget-object v5, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->H0:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->c(Z)V

    if-eqz v3, :cond_6

    .line 8
    invoke-static {}, LPL0;->a()LPL0;

    move-result-object v3

    .line 9
    iget-object v3, v3, LPL0;->d:Ljava/util/Set;

    .line 10
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 11
    invoke-static {v7}, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->e(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 12
    :cond_5
    invoke-static {v2}, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->h(I)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    .line 13
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->h(I)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    .line 14
    iget-object v8, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->E0:Landroid/support/v7/preference/Preference;

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v1

    const-string v3, "%s out of %s enabled"

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {v8, v5}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v5, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->F0:Landroid/support/v7/preference/Preference;

    new-array v8, v9, [Ljava/lang/Object;

    .line 18
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v5, v1}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->G0:Landroid/support/v7/preference/ListPreference;

    invoke-static {}, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->f(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->G0:Landroid/support/v7/preference/ListPreference;

    sget-object v2, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->J0:Ljava/util/Map;

    invoke-static {}, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->a(Ljava/lang/CharSequence;)V

    :cond_6
    const-string v1, "Record trace"

    if-nez v4, :cond_7

    .line 22
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->H0:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->I0:Landroid/support/v7/preference/Preference;

    const-string v1, "Please enable Chrome browser notifications to record a trace."

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    if-eqz v0, :cond_8

    .line 24
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->H0:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->I0:Landroid/support/v7/preference/Preference;

    const-string v1, "Traces may contain user or site data related to the active browsing session, including incognito tabs."

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 26
    :cond_8
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->H0:Landroid/support/v7/preference/Preference;

    const-string v1, "Recording\u2026"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->I0:Landroid/support/v7/preference/Preference;

    const-string v1, "A trace is being recorded. Use the notification to stop and share the result."

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    :goto_5
    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const-string p2, "Tracing"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f17001c

    .line 10
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    const-string p1, "default_categories"

    .line 11
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->E0:Landroid/support/v7/preference/Preference;

    const-string p1, "non_default_categories"

    .line 12
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->F0:Landroid/support/v7/preference/Preference;

    const-string p1, "mode"

    .line 13
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/ListPreference;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->G0:Landroid/support/v7/preference/ListPreference;

    const-string p1, "start_recording"

    .line 14
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->H0:Landroid/support/v7/preference/Preference;

    const-string p1, "tracing_status"

    .line 15
    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->I0:Landroid/support/v7/preference/Preference;

    .line 16
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->E0:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->h()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "type"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->F0:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->h()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->G0:Landroid/support/v7/preference/ListPreference;

    sget-object p2, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->J0:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    sget-object v0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->J0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/CharSequence;

    .line 19
    iput-object p2, p1, Landroid/support/v7/preference/ListPreference;->p0:[Ljava/lang/CharSequence;

    .line 20
    sget-object p1, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->J0:Ljava/util/Map;

    .line 21
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    sget-object p2, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->J0:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 22
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->G0:Landroid/support/v7/preference/ListPreference;

    .line 23
    iput-object p1, p2, Landroid/support/v7/preference/ListPreference;->o0:[Ljava/lang/CharSequence;

    .line 24
    new-instance p1, Lwz0;

    invoke-direct {p1, p0}, Lwz0;-><init>(Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;)V

    .line 25
    iput-object p1, p2, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 26
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->H0:Landroid/support/v7/preference/Preference;

    new-instance p2, Lxz0;

    invoke-direct {p2, p0}, Lxz0;-><init>(Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;)V

    .line 27
    iput-object p2, p1, Landroid/support/v7/preference/Preference;->B:Lmc;

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->O()V

    return-void
.end method
