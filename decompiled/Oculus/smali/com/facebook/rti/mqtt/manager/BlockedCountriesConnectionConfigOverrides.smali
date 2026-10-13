.class public Lcom/facebook/rti/mqtt/manager/BlockedCountriesConnectionConfigOverrides;
.super Ljava/lang/Object;
.source "BlockedCountriesConnectionConfigOverrides.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/common/config/ConnectionConfigOverrides;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/facebook/rti/mqtt/manager/BlockedCountriesConnectionConfigOverrides;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/manager/BlockedCountriesConnectionConfigOverrides;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/BlockedCountriesConnectionConfigOverrides;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private getConfigSharedPref()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/BlockedCountriesConnectionConfigOverrides;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->MQTT_CONFIG:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 37
    invoke-static {v0, v1}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 38
    return-object v0
.end method


# virtual methods
.method public getAnalyticsEndpoint()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/BlockedCountriesConnectionConfigOverrides;->getConfigSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    const-string v1, "analytics_endpoint"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMqttEndpoint()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/BlockedCountriesConnectionConfigOverrides;->getConfigSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 26
    const-string v1, "host_name_ipv6"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
