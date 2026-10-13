.class public final enum Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;
.super Ljava/lang/Enum;
.source "RtiSharedPrefKeys.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

.field public static final enum ADDRESSES:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

.field public static final enum ANALYTICS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

.field public static final enum DEBUG:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

.field public static final enum FBNS_NOTIFICATION_STORE:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

.field public static final enum FBNS_STATE:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

.field public static final enum FLAGS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

.field public static final enum GATEKEEPERS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

.field public static final enum IDS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

.field public static final enum LAST_HOST:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

.field public static final enum MQTT_CONFIG:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

.field public static final enum MQTT_RADIO_ACTIVE_TIME:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

.field public static final enum OXYGEN_FBNS_CONFIG:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

.field public static final enum REGISTRATIONS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

.field public static final enum RETRY:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

.field public static final RTI_PREFIX:Ljava/lang/String; = "rti.mqtt."

.field public static final enum RUNTIME_PARAMS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

.field public static final enum TOKEN_STORE:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;


# instance fields
.field private final key:Ljava/lang/String;

.field private final multiProc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    const-string v1, "ADDRESSES"

    const-string v2, "address"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->ADDRESSES:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 10
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    const-string v1, "ANALYTICS"

    const-string v2, "analytics"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->ANALYTICS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 11
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    const-string v1, "FBNS_NOTIFICATION_STORE"

    const-string v2, "fbns_notification_store"

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->FBNS_NOTIFICATION_STORE:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 13
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    const-string v1, "FBNS_STATE"

    const-string v2, "fbns_state"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->FBNS_STATE:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 15
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    const-string v1, "FLAGS"

    const-string v2, "flags"

    invoke-direct {v0, v1, v8, v2, v5}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->FLAGS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 17
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    const-string v1, "IDS"

    const/4 v2, 0x5

    const-string v3, "ids"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->IDS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 18
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    const-string v1, "OXYGEN_FBNS_CONFIG"

    const/4 v2, 0x6

    const-string v3, "oxygen_fbns_config"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->OXYGEN_FBNS_CONFIG:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 20
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    const-string v1, "REGISTRATIONS"

    const/4 v2, 0x7

    const-string/jumbo v3, "registrations"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->REGISTRATIONS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 22
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    const-string v1, "RETRY"

    const/16 v2, 0x8

    const-string/jumbo v3, "retry"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->RETRY:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 23
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    const-string v1, "GATEKEEPERS"

    const/16 v2, 0x9

    const-string v3, "gk"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->GATEKEEPERS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 24
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    const-string v1, "MQTT_RADIO_ACTIVE_TIME"

    const/16 v2, 0xa

    const-string v3, "mqtt_radio_active_time"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->MQTT_RADIO_ACTIVE_TIME:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 25
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    const-string v1, "TOKEN_STORE"

    const/16 v2, 0xb

    const-string/jumbo v3, "token_store"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->TOKEN_STORE:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 26
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    const-string v1, "RUNTIME_PARAMS"

    const/16 v2, 0xc

    const-string/jumbo v3, "runtime_params"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->RUNTIME_PARAMS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 28
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    const-string v1, "DEBUG"

    const/16 v2, 0xd

    const-string v3, "mqtt_debug"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->DEBUG:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 30
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    const-string v1, "MQTT_CONFIG"

    const/16 v2, 0xe

    const-string v3, "mqtt_config"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->MQTT_CONFIG:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 31
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    const-string v1, "LAST_HOST"

    const/16 v2, 0xf

    const-string v3, "mqtt_last_host"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->LAST_HOST:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 5
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->ADDRESSES:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->ANALYTICS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->FBNS_NOTIFICATION_STORE:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->FBNS_STATE:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->FLAGS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->IDS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->OXYGEN_FBNS_CONFIG:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->REGISTRATIONS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->RETRY:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->GATEKEEPERS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->MQTT_RADIO_ACTIVE_TIME:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->TOKEN_STORE:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->RUNTIME_PARAMS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->DEBUG:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->MQTT_CONFIG:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->LAST_HOST:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->$VALUES:[Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->key:Ljava/lang/String;

    .line 41
    iput-boolean p4, p0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->multiProc:Z

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    return-object v0
.end method

.method public static values()[Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->$VALUES:[Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    invoke-virtual {v0}, [Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->key:Ljava/lang/String;

    return-object v0
.end method

.method public isMultiProc()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->multiProc:Z

    return v0
.end method
