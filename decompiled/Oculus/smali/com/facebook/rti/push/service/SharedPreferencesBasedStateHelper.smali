.class public Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;
.super Ljava/lang/Object;
.source "SharedPreferencesBasedStateHelper.java"

# interfaces
.implements Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;


# static fields
.field public static final INSTANCE_ANALYTICS:Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;

.field public static final INSTANCE_MQTT_CONFIG:Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;

.field public static final INSTANCE_PREF_IDS:Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mRtiSharedPrefKey:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;

    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->MQTT_CONFIG:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    invoke-direct {v0, v1}, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;-><init>(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)V

    sput-object v0, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;->INSTANCE_MQTT_CONFIG:Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;

    .line 17
    new-instance v0, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;

    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->ANALYTICS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    invoke-direct {v0, v1}, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;-><init>(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)V

    sput-object v0, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;->INSTANCE_ANALYTICS:Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;

    .line 19
    new-instance v0, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;

    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->IDS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    invoke-direct {v0, v1}, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;-><init>(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)V

    sput-object v0, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;->INSTANCE_PREF_IDS:Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;

    .line 22
    const-class v0, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;->mRtiSharedPrefKey:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 28
    return-void
.end method


# virtual methods
.method public doGet(Lcom/facebook/rti/push/service/FbnsService;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;->mRtiSharedPrefKey:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 33
    invoke-static {p1, v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 34
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 35
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    :try_start_0
    const-class v1, Lcom/facebook/rti/push/client/SharedPrefKeys;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/push/client/SharedPrefKeys;

    .line 39
    invoke-virtual {v1}, Lcom/facebook/rti/push/client/SharedPrefKeys;->getWrapper()Lcom/facebook/rti/push/client/KeyValueWrapper;

    move-result-object v5

    .line 40
    invoke-virtual {v1}, Lcom/facebook/rti/push/client/SharedPrefKeys;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/facebook/rti/push/client/SharedPrefKeys;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v3, v6, v1}, Lcom/facebook/rti/push/client/KeyValueWrapper;->sharedPrefsToBundle(Landroid/content/SharedPreferences;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    sget-object v5, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;->TAG:Ljava/lang/String;

    const-string v6, "aidlBundleKey: %s not exist in FbnsAIDLConstants"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v5, v1, v6, v7}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    :cond_0
    return-object v3
.end method

.method public doSet(Lcom/facebook/rti/push/service/FbnsService;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;->mRtiSharedPrefKey:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 51
    invoke-static {p1, v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 53
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    :try_start_0
    const-class v1, Lcom/facebook/rti/push/client/SharedPrefKeys;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/push/client/SharedPrefKeys;

    .line 57
    invoke-virtual {v1}, Lcom/facebook/rti/push/client/SharedPrefKeys;->getWrapper()Lcom/facebook/rti/push/client/KeyValueWrapper;

    move-result-object v4

    .line 58
    invoke-virtual {v1}, Lcom/facebook/rti/push/client/SharedPrefKeys;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/facebook/rti/push/client/SharedPrefKeys;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, p2, v2, v5, v1}, Lcom/facebook/rti/push/client/KeyValueWrapper;->bundleToSharedPrefs(Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    sget-object v4, Lcom/facebook/rti/push/service/SharedPreferencesBasedStateHelper;->TAG:Ljava/lang/String;

    const-string v5, "aidlBundleKey: %s not exist in FbnsAIDLConstants"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v1, v5, v6}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 65
    return-void
.end method
