.class public Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;
.super Ljava/lang/Object;
.source "SharedPreferencesHelper.java"


# static fields
.field private static final SHARED_PREFERENCES_FILE:Ljava/lang/String; = "vrshell_prefs"

.field private static final SHARED_PREFERENCES_FLAGS_FILE:Ljava/lang/String; = "vrshell_flags"

.field private static final SHARED_PREFERENCES_SETTINGS_FILE:Ljava/lang/String; = "vrshell_settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllUnder(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oculus/vrshell/sharedprefs/PrefKey;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 48
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getBoolean(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Z)Z
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 33
    invoke-virtual {p1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->getFullKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static getEditor(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 82
    invoke-static {p0, p1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public static getInt(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;I)I
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 28
    invoke-virtual {p1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->getFullKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;J)J
    .locals 0

    .line 37
    invoke-static {p0, p1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 38
    invoke-virtual {p1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->getFullKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getSharedPreferences(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)Landroid/content/SharedPreferences;
    .locals 1

    .line 73
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->FLAGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->startsWith(Lcom/oculus/vrshell/sharedprefs/PrefKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "vrshell_flags"

    goto :goto_0

    .line 75
    :cond_0
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->SETTINGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->startsWith(Lcom/oculus/vrshell/sharedprefs/PrefKey;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "vrshell_settings"

    goto :goto_0

    :cond_1
    const-string p1, "vrshell_prefs"

    :goto_0
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-static {p0, p1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 23
    invoke-virtual {p1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->getFullKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringSet(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oculus/vrshell/sharedprefs/PrefKey;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-static {p0, p1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 43
    invoke-virtual {p1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->getFullKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static putBoolean(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Z)V
    .locals 0

    .line 60
    invoke-static {p0, p1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->getEditor(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->getFullKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static putInt(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;I)V
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->getEditor(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->getFullKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static putLong(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;J)V
    .locals 0

    .line 64
    invoke-static {p0, p1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->getEditor(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->getFullKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static putString(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-static {p0, p1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->getEditor(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->getFullKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static putStringSet(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oculus/vrshell/sharedprefs/PrefKey;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->getEditor(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->getFullKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
