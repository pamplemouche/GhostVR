.class public Lcom/oculus/modules/CompanionServerModuleImpl;
.super Lcom/oculus/modules/codegen/CompanionServerModule;
.source "CompanionServerModuleImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_HEALTH_AND_SAFETY_COMPLETE:Ljava/lang/String; = "companion.HSW_OPT_OUT"

.field private static final ACTION_NUX_FLOW:Ljava/lang/String; = "companion.NUX_FLOW"

.field private static final ACTION_NUX_STATE:Ljava/lang/String; = "companion.NUX_STATE"

.field private static final ACTION_NUX_STATUS:Ljava/lang/String; = "companion.NUX_STATUS"

.field private static final ACTION_OKAY_TO_REBOOT:Ljava/lang/String; = "companion.OKAY_TO_REBOOT"

.field private static final ACTION_PREFIX:Ljava/lang/String; = "companion."

.field private static final ACTION_START_MONITOR:Ljava/lang/String; = "companion.START_MONITOR"

.field private static final ACTION_VR_READY_STATUS:Ljava/lang/String; = "companion.VR_READY_STATUS"

.field private static final ACTION_WIFI_SETUP_COMPLETE:Ljava/lang/String; = "companion.WIFI_SETUP_COMPLETE"

.field private static final COMPANION_SERVER_PACKAGE:Ljava/lang/String; = "com.oculus.companion.server"

.field private static final COMPANION_SERVER_RESULT_EXTRA:Ljava/lang/String; = "RESULT_RECEIVER"

.field private static final COMPANION_SERVER_SERVICE:Ljava/lang/String; = "com.oculus.companion.server.CompanionService"

.field private static final COMPANION_SERVER_SET_EXTRA:Ljava/lang/String; = "SET"

.field private static final EXTRA_BASE:Ljava/lang/String; = ""

.field private static final EXTRA_PERIOD:Ljava/lang/String; = "PERIOD"

.field private static final TAG:Ljava/lang/String;

.field private static sOverrides:Lorg/json/JSONObject;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/oculus/modules/CompanionServerModuleImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/CompanionServerModuleImpl;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/oculus/modules/CompanionServerModuleImpl;->sOverrides:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oculus/modules/codegen/CompanionServerModule;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/oculus/modules/CompanionServerModuleImpl;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/oculus/modules/CompanionServerModuleImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static clearOverrides(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    :try_start_0
    const-string v2, "companion_server_module"

    const/4 v3, 0x0

    .line 58
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 59
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sput-object v2, Lcom/oculus/modules/CompanionServerModuleImpl;->sOverrides:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/oculus/modules/CompanionServerModuleImpl;->TAG:Ljava/lang/String;

    const-string v3, "Failed to load companion server overrides"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static loadOverrides(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    :try_start_0
    const-string v3, "companion_server_module"

    const/4 v4, 0x0

    .line 47
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 48
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "overrides"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "overrides":Ljava/lang/String;
    if-eqz v1, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_0
    sput-object v3, Lcom/oculus/modules/CompanionServerModuleImpl;->sOverrides:Lorg/json/JSONObject;

    .line 53
    .end local v1    # "overrides":Ljava/lang/String;
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .line 49
    .restart local v1    # "overrides":Ljava/lang/String;
    .restart local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v1    # "overrides":Ljava/lang/String;
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/oculus/modules/CompanionServerModuleImpl;->TAG:Ljava/lang/String;

    const-string v4, "Failed to load companion server overrides"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static setOverride(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 68
    :try_start_0
    sget-object v2, Lcom/oculus/modules/CompanionServerModuleImpl;->sOverrides:Lorg/json/JSONObject;

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 69
    const-string v2, "companion_server_module"

    const/4 v3, 0x0

    .line 70
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 71
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "overrides"

    sget-object v4, Lcom/oculus/modules/CompanionServerModuleImpl;->sOverrides:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/oculus/modules/CompanionServerModuleImpl;->TAG:Ljava/lang/String;

    const-string v3, "Failed to load companion server overrides"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected getNuxFlowTypeImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/String;>;"
    const-string v0, "companion.NUX_FLOW"

    const-string v1, "TWILIGHT"

    invoke-virtual {p0, v0, v1, p1}, Lcom/oculus/modules/CompanionServerModuleImpl;->requestString(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 80
    return-void
.end method

.method protected getNuxStateImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/String;>;"
    const-string v0, "companion.NUX_STATE"

    const-string v1, "NEW_DEVICE"

    invoke-virtual {p0, v0, v1, p1}, Lcom/oculus/modules/CompanionServerModuleImpl;->requestString(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 85
    return-void
.end method

.method protected getNuxStatusImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    const-string v0, "companion.NUX_STATUS"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1, p1}, Lcom/oculus/modules/CompanionServerModuleImpl;->requestBoolean(Ljava/lang/String;Ljava/lang/Boolean;Lcom/oculus/modules/codegen/Resolver;)V

    .line 90
    return-void
.end method

.method protected getVRReadyStatusImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    const-string v0, "companion.VR_READY_STATUS"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1, p1}, Lcom/oculus/modules/CompanionServerModuleImpl;->requestBoolean(Ljava/lang/String;Ljava/lang/Boolean;Lcom/oculus/modules/codegen/Resolver;)V

    .line 95
    return-void
.end method

.method protected getWifiSetupCompleteImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    const-string v0, "companion.WIFI_SETUP_COMPLETE"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1, p1}, Lcom/oculus/modules/CompanionServerModuleImpl;->requestBoolean(Ljava/lang/String;Ljava/lang/Boolean;Lcom/oculus/modules/codegen/Resolver;)V

    .line 100
    return-void
.end method

.method protected requestBoolean(Ljava/lang/String;Ljava/lang/Boolean;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    sget-object v3, Lcom/oculus/modules/CompanionServerModuleImpl;->sOverrides:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    sget-object v3, Lcom/oculus/modules/CompanionServerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using override for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v3, Lcom/oculus/modules/CompanionServerModuleImpl;->sOverrides:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p3, v3}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 154
    :goto_0
    return-void

    .line 139
    :cond_0
    sget-object v3, Lcom/oculus/modules/CompanionServerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v2, Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;

    invoke-direct {v2, p1, p2, p3}, Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/oculus/modules/codegen/Resolver;)V

    .line 144
    .local v2, "resultReceiver":Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;, "Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver<Ljava/lang/Boolean;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v3, "com.oculus.companion.server"

    const-string v4, "com.oculus.companion.server.CompanionService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v3, "RESULT_RECEIVER"

    invoke-virtual {v2}, Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;->serialized()Landroid/os/ResultReceiver;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 150
    :try_start_0
    iget-object v3, p0, Lcom/oculus/modules/CompanionServerModuleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "exception":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected requestString(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/String;>;"
    sget-object v3, Lcom/oculus/modules/CompanionServerModuleImpl;->sOverrides:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    sget-object v3, Lcom/oculus/modules/CompanionServerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using override for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v3, Lcom/oculus/modules/CompanionServerModuleImpl;->sOverrides:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 178
    :goto_0
    return-void

    .line 163
    :cond_0
    sget-object v3, Lcom/oculus/modules/CompanionServerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v2, Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;

    invoke-direct {v2, p1, p2, p3}, Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/oculus/modules/codegen/Resolver;)V

    .line 168
    .local v2, "resultReceiver":Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;, "Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v3, "com.oculus.companion.server"

    const-string v4, "com.oculus.companion.server.CompanionService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v3, "RESULT_RECEIVER"

    invoke-virtual {v2}, Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;->serialized()Landroid/os/ResultReceiver;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 174
    :try_start_0
    iget-object v3, p0, Lcom/oculus/modules/CompanionServerModuleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "exception":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected setBoolean(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;
    .param p3, "defaultResult"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p4, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    sget-object v3, Lcom/oculus/modules/CompanionServerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v2, Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;

    invoke-direct {v2, p1, p3, p4}, Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/oculus/modules/codegen/Resolver;)V

    .line 186
    .local v2, "resultReceiver":Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;, "Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver<Ljava/lang/Boolean;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 187
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v3, "com.oculus.companion.server"

    const-string v4, "com.oculus.companion.server.CompanionService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v3, "SET"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 190
    const-string v3, "RESULT_RECEIVER"

    invoke-virtual {v2}, Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;->serialized()Landroid/os/ResultReceiver;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 193
    :try_start_0
    iget-object v3, p0, Lcom/oculus/modules/CompanionServerModuleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "exception":Ljava/lang/Exception;
    invoke-interface {p4, v0}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected setHealthAndSafetyCompleteImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    const-string v0, "companion.HSW_OPT_OUT"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/oculus/modules/CompanionServerModuleImpl;->setBoolean(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/oculus/modules/codegen/Resolver;)V

    .line 115
    return-void
.end method

.method protected setOkayToRebootImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    const-string v0, "companion.OKAY_TO_REBOOT"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/oculus/modules/CompanionServerModuleImpl;->setBoolean(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/oculus/modules/codegen/Resolver;)V

    .line 105
    return-void
.end method

.method protected setWifiSetupCompleteImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    const-string v0, "companion.WIFI_SETUP_COMPLETE"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/oculus/modules/CompanionServerModuleImpl;->setBoolean(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/oculus/modules/codegen/Resolver;)V

    .line 110
    return-void
.end method

.method protected startMonitorImpl(DLcom/oculus/modules/codegen/Resolver;)V
    .locals 5
    .param p1, "period"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "companion.START_MONITOR"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v2, "com.oculus.companion.server"

    const-string v3, "com.oculus.companion.server.CompanionService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v2, "PERIOD"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 125
    :try_start_0
    iget-object v2, p0, Lcom/oculus/modules/CompanionServerModuleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 126
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "exception":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
