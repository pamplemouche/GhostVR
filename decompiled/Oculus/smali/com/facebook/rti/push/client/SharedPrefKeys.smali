.class public final enum Lcom/facebook/rti/push/client/SharedPrefKeys;
.super Ljava/lang/Enum;
.source "SharedPrefKeys.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/rti/push/client/SharedPrefKeys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/rti/push/client/SharedPrefKeys;

.field public static final enum ANALYTIC_FB_UID:Lcom/facebook/rti/push/client/SharedPrefKeys;

.field public static final enum ANALYTIC_IS_EMPLOYEE:Lcom/facebook/rti/push/client/SharedPrefKeys;

.field public static final enum ANALYTIC_UID:Lcom/facebook/rti/push/client/SharedPrefKeys;

.field public static final enum ANALYTIC_YEAR_CLASS:Lcom/facebook/rti/push/client/SharedPrefKeys;

.field public static final enum BLOCKED_COUNTRIES_ANALYTICS_ENDPOINT:Lcom/facebook/rti/push/client/SharedPrefKeys;

.field public static final enum BLOCKED_COUNTRIES_HN_TIMESTAMP:Lcom/facebook/rti/push/client/SharedPrefKeys;

.field public static final enum BLOCKED_COUNTRIES_HOSTNAME:Lcom/facebook/rti/push/client/SharedPrefKeys;

.field public static final enum LOGGING_ANALYTICS_EVENTS_SAMPLE_RATE:Lcom/facebook/rti/push/client/SharedPrefKeys;

.field public static final enum LOGGING_HEALTH_STATS_SAMPLE_RATE:Lcom/facebook/rti/push/client/SharedPrefKeys;

.field public static final enum LOG_ANALYTICS_EVENTS:Lcom/facebook/rti/push/client/SharedPrefKeys;

.field public static final enum MQTT_DEVICE_CREDENTIALS_TIMESTAMP:Lcom/facebook/rti/push/client/SharedPrefKeys;

.field public static final enum MQTT_DEVICE_ID:Lcom/facebook/rti/push/client/SharedPrefKeys;

.field public static final enum MQTT_DEVICE_SECRET:Lcom/facebook/rti/push/client/SharedPrefKeys;


# instance fields
.field private final mPrefKey:Ljava/lang/String;

.field private final mWrapper:Lcom/facebook/rti/push/client/KeyValueWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/push/client/KeyValueWrapper",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 19
    new-instance v0, Lcom/facebook/rti/push/client/SharedPrefKeys;

    const-string v1, "BLOCKED_COUNTRIES_HOSTNAME"

    const-string v2, "host_name_ipv6"

    sget-object v3, Lcom/facebook/rti/push/client/KeyValueWrapper;->STRING_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/facebook/rti/push/client/SharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/rti/push/client/KeyValueWrapper;)V

    sput-object v0, Lcom/facebook/rti/push/client/SharedPrefKeys;->BLOCKED_COUNTRIES_HOSTNAME:Lcom/facebook/rti/push/client/SharedPrefKeys;

    .line 21
    new-instance v0, Lcom/facebook/rti/push/client/SharedPrefKeys;

    const-string v1, "BLOCKED_COUNTRIES_ANALYTICS_ENDPOINT"

    const-string v2, "analytics_endpoint"

    sget-object v3, Lcom/facebook/rti/push/client/KeyValueWrapper;->STRING_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/facebook/rti/push/client/SharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/rti/push/client/KeyValueWrapper;)V

    sput-object v0, Lcom/facebook/rti/push/client/SharedPrefKeys;->BLOCKED_COUNTRIES_ANALYTICS_ENDPOINT:Lcom/facebook/rti/push/client/SharedPrefKeys;

    .line 24
    new-instance v0, Lcom/facebook/rti/push/client/SharedPrefKeys;

    const-string v1, "BLOCKED_COUNTRIES_HN_TIMESTAMP"

    const-string v2, "bc_host_name_timestamp"

    sget-object v3, Lcom/facebook/rti/push/client/KeyValueWrapper;->LONG_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/facebook/rti/push/client/SharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/rti/push/client/KeyValueWrapper;)V

    sput-object v0, Lcom/facebook/rti/push/client/SharedPrefKeys;->BLOCKED_COUNTRIES_HN_TIMESTAMP:Lcom/facebook/rti/push/client/SharedPrefKeys;

    .line 31
    new-instance v0, Lcom/facebook/rti/push/client/SharedPrefKeys;

    const-string v1, "ANALYTIC_FB_UID"

    const-string v2, "fb_uid"

    sget-object v3, Lcom/facebook/rti/push/client/KeyValueWrapper;->STRING_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/facebook/rti/push/client/SharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/rti/push/client/KeyValueWrapper;)V

    sput-object v0, Lcom/facebook/rti/push/client/SharedPrefKeys;->ANALYTIC_FB_UID:Lcom/facebook/rti/push/client/SharedPrefKeys;

    .line 37
    new-instance v0, Lcom/facebook/rti/push/client/SharedPrefKeys;

    const-string v1, "ANALYTIC_UID"

    const-string/jumbo v2, "user_id"

    sget-object v3, Lcom/facebook/rti/push/client/KeyValueWrapper;->STRING_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/facebook/rti/push/client/SharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/rti/push/client/KeyValueWrapper;)V

    sput-object v0, Lcom/facebook/rti/push/client/SharedPrefKeys;->ANALYTIC_UID:Lcom/facebook/rti/push/client/SharedPrefKeys;

    .line 43
    new-instance v0, Lcom/facebook/rti/push/client/SharedPrefKeys;

    const-string v1, "ANALYTIC_IS_EMPLOYEE"

    const/4 v2, 0x5

    const-string v3, "is_employee"

    sget-object v4, Lcom/facebook/rti/push/client/KeyValueWrapper;->BOOL_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/push/client/SharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/rti/push/client/KeyValueWrapper;)V

    sput-object v0, Lcom/facebook/rti/push/client/SharedPrefKeys;->ANALYTIC_IS_EMPLOYEE:Lcom/facebook/rti/push/client/SharedPrefKeys;

    .line 49
    new-instance v0, Lcom/facebook/rti/push/client/SharedPrefKeys;

    const-string v1, "ANALYTIC_YEAR_CLASS"

    const/4 v2, 0x6

    const-string/jumbo v3, "year_class"

    sget-object v4, Lcom/facebook/rti/push/client/KeyValueWrapper;->INT_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/push/client/SharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/rti/push/client/KeyValueWrapper;)V

    sput-object v0, Lcom/facebook/rti/push/client/SharedPrefKeys;->ANALYTIC_YEAR_CLASS:Lcom/facebook/rti/push/client/SharedPrefKeys;

    .line 55
    new-instance v0, Lcom/facebook/rti/push/client/SharedPrefKeys;

    const-string v1, "LOGGING_HEALTH_STATS_SAMPLE_RATE"

    const/4 v2, 0x7

    const-string v3, "logging_health_stats_sample_rate"

    sget-object v4, Lcom/facebook/rti/push/client/KeyValueWrapper;->INT_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/push/client/SharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/rti/push/client/KeyValueWrapper;)V

    sput-object v0, Lcom/facebook/rti/push/client/SharedPrefKeys;->LOGGING_HEALTH_STATS_SAMPLE_RATE:Lcom/facebook/rti/push/client/SharedPrefKeys;

    .line 61
    new-instance v0, Lcom/facebook/rti/push/client/SharedPrefKeys;

    const-string v1, "LOG_ANALYTICS_EVENTS"

    const/16 v2, 0x8

    const-string v3, "log_analytic_events"

    sget-object v4, Lcom/facebook/rti/push/client/KeyValueWrapper;->BOOL_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/push/client/SharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/rti/push/client/KeyValueWrapper;)V

    sput-object v0, Lcom/facebook/rti/push/client/SharedPrefKeys;->LOG_ANALYTICS_EVENTS:Lcom/facebook/rti/push/client/SharedPrefKeys;

    .line 68
    new-instance v0, Lcom/facebook/rti/push/client/SharedPrefKeys;

    const-string v1, "LOGGING_ANALYTICS_EVENTS_SAMPLE_RATE"

    const/16 v2, 0x9

    const-string v3, "logging_analytic_events_sample_rate"

    sget-object v4, Lcom/facebook/rti/push/client/KeyValueWrapper;->INT_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/push/client/SharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/rti/push/client/KeyValueWrapper;)V

    sput-object v0, Lcom/facebook/rti/push/client/SharedPrefKeys;->LOGGING_ANALYTICS_EVENTS_SAMPLE_RATE:Lcom/facebook/rti/push/client/SharedPrefKeys;

    .line 75
    new-instance v0, Lcom/facebook/rti/push/client/SharedPrefKeys;

    const-string v1, "MQTT_DEVICE_ID"

    const/16 v2, 0xa

    const-string v3, "/settings/mqtt/id/mqtt_device_id"

    sget-object v4, Lcom/facebook/rti/push/client/KeyValueWrapper;->STRING_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/push/client/SharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/rti/push/client/KeyValueWrapper;)V

    sput-object v0, Lcom/facebook/rti/push/client/SharedPrefKeys;->MQTT_DEVICE_ID:Lcom/facebook/rti/push/client/SharedPrefKeys;

    .line 81
    new-instance v0, Lcom/facebook/rti/push/client/SharedPrefKeys;

    const-string v1, "MQTT_DEVICE_SECRET"

    const/16 v2, 0xb

    const-string v3, "/settings/mqtt/id/mqtt_device_secret"

    sget-object v4, Lcom/facebook/rti/push/client/KeyValueWrapper;->STRING_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/push/client/SharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/rti/push/client/KeyValueWrapper;)V

    sput-object v0, Lcom/facebook/rti/push/client/SharedPrefKeys;->MQTT_DEVICE_SECRET:Lcom/facebook/rti/push/client/SharedPrefKeys;

    .line 87
    new-instance v0, Lcom/facebook/rti/push/client/SharedPrefKeys;

    const-string v1, "MQTT_DEVICE_CREDENTIALS_TIMESTAMP"

    const/16 v2, 0xc

    const-string v3, "/settings/mqtt/id/timestamp"

    sget-object v4, Lcom/facebook/rti/push/client/KeyValueWrapper;->LONG_WRAPPER:Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/push/client/SharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/rti/push/client/KeyValueWrapper;)V

    sput-object v0, Lcom/facebook/rti/push/client/SharedPrefKeys;->MQTT_DEVICE_CREDENTIALS_TIMESTAMP:Lcom/facebook/rti/push/client/SharedPrefKeys;

    .line 18
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/facebook/rti/push/client/SharedPrefKeys;

    sget-object v1, Lcom/facebook/rti/push/client/SharedPrefKeys;->BLOCKED_COUNTRIES_HOSTNAME:Lcom/facebook/rti/push/client/SharedPrefKeys;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/rti/push/client/SharedPrefKeys;->BLOCKED_COUNTRIES_ANALYTICS_ENDPOINT:Lcom/facebook/rti/push/client/SharedPrefKeys;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/rti/push/client/SharedPrefKeys;->BLOCKED_COUNTRIES_HN_TIMESTAMP:Lcom/facebook/rti/push/client/SharedPrefKeys;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/rti/push/client/SharedPrefKeys;->ANALYTIC_FB_UID:Lcom/facebook/rti/push/client/SharedPrefKeys;

    aput-object v1, v0, v8

    sget-object v1, Lcom/facebook/rti/push/client/SharedPrefKeys;->ANALYTIC_UID:Lcom/facebook/rti/push/client/SharedPrefKeys;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/rti/push/client/SharedPrefKeys;->ANALYTIC_IS_EMPLOYEE:Lcom/facebook/rti/push/client/SharedPrefKeys;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/rti/push/client/SharedPrefKeys;->ANALYTIC_YEAR_CLASS:Lcom/facebook/rti/push/client/SharedPrefKeys;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/rti/push/client/SharedPrefKeys;->LOGGING_HEALTH_STATS_SAMPLE_RATE:Lcom/facebook/rti/push/client/SharedPrefKeys;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/rti/push/client/SharedPrefKeys;->LOG_ANALYTICS_EVENTS:Lcom/facebook/rti/push/client/SharedPrefKeys;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/rti/push/client/SharedPrefKeys;->LOGGING_ANALYTICS_EVENTS_SAMPLE_RATE:Lcom/facebook/rti/push/client/SharedPrefKeys;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/rti/push/client/SharedPrefKeys;->MQTT_DEVICE_ID:Lcom/facebook/rti/push/client/SharedPrefKeys;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/rti/push/client/SharedPrefKeys;->MQTT_DEVICE_SECRET:Lcom/facebook/rti/push/client/SharedPrefKeys;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/rti/push/client/SharedPrefKeys;->MQTT_DEVICE_CREDENTIALS_TIMESTAMP:Lcom/facebook/rti/push/client/SharedPrefKeys;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/rti/push/client/SharedPrefKeys;->$VALUES:[Lcom/facebook/rti/push/client/SharedPrefKeys;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/rti/push/client/KeyValueWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/rti/push/client/KeyValueWrapper",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-object p3, p0, Lcom/facebook/rti/push/client/SharedPrefKeys;->mPrefKey:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/facebook/rti/push/client/SharedPrefKeys;->mWrapper:Lcom/facebook/rti/push/client/KeyValueWrapper;

    .line 96
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/rti/push/client/SharedPrefKeys;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/facebook/rti/push/client/SharedPrefKeys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/push/client/SharedPrefKeys;

    return-object v0
.end method

.method public static values()[Lcom/facebook/rti/push/client/SharedPrefKeys;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/facebook/rti/push/client/SharedPrefKeys;->$VALUES:[Lcom/facebook/rti/push/client/SharedPrefKeys;

    invoke-virtual {v0}, [Lcom/facebook/rti/push/client/SharedPrefKeys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/rti/push/client/SharedPrefKeys;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/SharedPreferences;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/SharedPreferences;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 99
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/push/client/SharedPrefKeys;->mWrapper:Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-virtual {v0}, Lcom/facebook/rti/push/client/KeyValueWrapper;->getValueType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/push/client/SharedPrefKeys;->mWrapper:Lcom/facebook/rti/push/client/KeyValueWrapper;

    iget-object v1, p0, Lcom/facebook/rti/push/client/SharedPrefKeys;->mPrefKey:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/facebook/rti/push/client/KeyValueWrapper;->get(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot cast"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Landroid/os/Bundle;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Bundle;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 123
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/push/client/SharedPrefKeys;->mWrapper:Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-virtual {v0}, Lcom/facebook/rti/push/client/KeyValueWrapper;->getValueType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/push/client/SharedPrefKeys;->mWrapper:Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-virtual {p0}, Lcom/facebook/rti/push/client/SharedPrefKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/facebook/rti/push/client/KeyValueWrapper;->get(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot cast"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/rti/push/client/SharedPrefKeys;->mPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method public getWrapper()Lcom/facebook/rti/push/client/KeyValueWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/rti/push/client/KeyValueWrapper",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/rti/push/client/SharedPrefKeys;->mWrapper:Lcom/facebook/rti/push/client/KeyValueWrapper;

    return-object v0
.end method

.method public set(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/SharedPreferences$Editor;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 107
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/push/client/SharedPrefKeys;->mWrapper:Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-virtual {v0}, Lcom/facebook/rti/push/client/KeyValueWrapper;->getValueType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/push/client/SharedPrefKeys;->mWrapper:Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-virtual {p0}, Lcom/facebook/rti/push/client/SharedPrefKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/facebook/rti/push/client/KeyValueWrapper;->set(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    return-void

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot cast"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Bundle;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 115
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/push/client/SharedPrefKeys;->mWrapper:Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-virtual {v0}, Lcom/facebook/rti/push/client/KeyValueWrapper;->getValueType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/push/client/SharedPrefKeys;->mWrapper:Lcom/facebook/rti/push/client/KeyValueWrapper;

    invoke-virtual {p0}, Lcom/facebook/rti/push/client/SharedPrefKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/facebook/rti/push/client/KeyValueWrapper;->set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    return-void

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot cast"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
