.class public Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;
.super Ljava/lang/Object;
.source "SharedPreferencesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;
    }
.end annotation


# static fields
.field public static final PREF_OXYGEN_FBNS_CONFIG:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;

.field private static volatile sUseMultiProc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;

    const-string/jumbo v1, "rti.mqtt.oxygen_fbns_config"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;->PREF_OXYGEN_FBNS_CONFIG:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;->sUseMultiProc:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 81
    invoke-static {p0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 82
    return-void
.end method

.method public static getSharedPreferences(Landroid/content/Context;Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->INSTANCE:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rti.mqtt."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {p1}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->isMultiProc()Z

    move-result v2

    .line 74
    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;)Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 64
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->INSTANCE:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    .line 65
    invoke-static {p1}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;->access$100(Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;->shouldUseMultiProc(Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;)Z

    move-result v2

    .line 64
    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static shouldUseMultiProc(Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;)Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;->sUseMultiProc:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;->access$000(Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
