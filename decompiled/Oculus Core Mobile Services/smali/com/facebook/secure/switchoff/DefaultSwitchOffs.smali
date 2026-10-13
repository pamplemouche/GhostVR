.class public Lcom/facebook/secure/switchoff/DefaultSwitchOffs;
.super Ljava/lang/Object;
.source "DefaultSwitchOffs.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BadMethodUse-android.util.Log.w"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/secure/switchoff/DefaultSwitchOffs$LoadingIntentSwitchOff;
    }
.end annotation


# static fields
.field private static final DELEGATE_CONFIG:Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;

.field private static final NO_OP_CONFIG:Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;

.field private static mConfig:Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final mGeneralSwitchOff:Lcom/facebook/secure/switchoff/IntentSwitchOff;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/secure/switchoff/IntentSwitchOff",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/facebook/secure/switchoff/DefaultSwitchOffs$1;

    invoke-direct {v0}, Lcom/facebook/secure/switchoff/DefaultSwitchOffs$1;-><init>()V

    sput-object v0, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->NO_OP_CONFIG:Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;

    .line 64
    new-instance v0, Lcom/facebook/secure/switchoff/DefaultSwitchOffs$2;

    invoke-direct {v0}, Lcom/facebook/secure/switchoff/DefaultSwitchOffs$2;-><init>()V

    sput-object v0, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->DELEGATE_CONFIG:Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;

    .line 137
    new-instance v0, Lcom/facebook/secure/switchoff/DefaultSwitchOffs$LoadingIntentSwitchOff;

    sget-object v1, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->DELEGATE_CONFIG:Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;

    invoke-direct {v0, v1}, Lcom/facebook/secure/switchoff/DefaultSwitchOffs$LoadingIntentSwitchOff;-><init>(Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;)V

    sput-object v0, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->mGeneralSwitchOff:Lcom/facebook/secure/switchoff/IntentSwitchOff;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    return-void
.end method

.method static synthetic access$000()Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->currentConfig()Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-static {p0}, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->ensureConfig(Landroid/content/Context;)V

    return-void
.end method

.method private static declared-synchronized currentConfig()Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;
    .locals 2

    .prologue
    .line 98
    const-class v1, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->mConfig:Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 103
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->mConfig:Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private static declared-synchronized ensureConfig(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 206
    const-class v1, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->mConfig:Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;

    if-nez v0, :cond_0

    .line 207
    invoke-static {p0}, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->loadConfigFromFile(Landroid/content/Context;)V

    .line 209
    sget-object v0, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->mConfig:Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;

    if-nez v0, :cond_0

    .line 211
    sget-object v0, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->NO_OP_CONFIG:Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;

    sput-object v0, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->mConfig:Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_0
    monitor-exit v1

    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized general()Lcom/facebook/secure/switchoff/IntentSwitchOff;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/secure/switchoff/IntentSwitchOff",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    const-class v0, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->mGeneralSwitchOff:Lcom/facebook/secure/switchoff/IntentSwitchOff;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static loadConfigFromFile(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 221
    :try_start_0
    const-string v0, "com.facebook.secure.switchoff"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 222
    const-string v1, "last_criteria"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    const-string v2, "last_custom_config"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    const-string v3, "last_deeplink_config"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v1, p0}, Lcom/facebook/secure/switchoff/IntentCriteria;->parseIntentCriteria(Ljava/lang/String;Landroid/content/Context;)[Lcom/facebook/secure/switchoff/IntentCriteria;

    move-result-object v1

    .line 227
    invoke-static {v2}, Lcom/facebook/secure/switchoff/IntentMatcher;->parseConfig(Ljava/lang/String;)[Lcom/facebook/secure/switchoff/IntentMatcher;

    move-result-object v2

    .line 228
    invoke-static {v0}, Lcom/facebook/secure/switchoff/DeeplinkConfig;->parseConfig(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 225
    invoke-static {v1, v2, v0}, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->updateConfig([Lcom/facebook/secure/switchoff/IntentCriteria;[Lcom/facebook/secure/switchoff/IntentMatcher;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const-string v1, "DefaultSwitchOffs"

    const-string v2, "Error loading last config"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static updateConfig([Lcom/facebook/secure/switchoff/IntentCriteria;[Lcom/facebook/secure/switchoff/IntentMatcher;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/secure/switchoff/IntentCriteria;",
            "[",
            "Lcom/facebook/secure/switchoff/IntentMatcher;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/secure/switchoff/DeeplinkConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Lcom/facebook/secure/switchoff/DefaultSwitchOffs$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/secure/switchoff/DefaultSwitchOffs$3;-><init>([Lcom/facebook/secure/switchoff/IntentCriteria;[Lcom/facebook/secure/switchoff/IntentMatcher;Ljava/util/Map;)V

    sput-object v0, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->mConfig:Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;

    .line 189
    return-void
.end method
