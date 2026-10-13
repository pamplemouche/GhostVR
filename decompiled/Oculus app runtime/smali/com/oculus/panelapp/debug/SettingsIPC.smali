.class Lcom/oculus/panelapp/debug/SettingsIPC;
.super Ljava/lang/Object;
.source "SettingsIPC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/debug/SettingsIPC$Setting;,
        Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;,
        Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;,
        Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;,
        Lcom/oculus/panelapp/debug/SettingsIPC$BiConsumer;,
        Lcom/oculus/panelapp/debug/SettingsIPC$Consumer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDebugApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

.field private mSettingCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oculus/panelapp/debug/SettingsIPC$BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/oculus/panelapp/debug/SettingsIPC;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/debug/SettingsIPC;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/oculus/panelapp/debug/SettingsIPC;->mDebugApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    .line 172
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/debug/SettingsIPC;->mSettingCallbacks:Ljava/util/Map;

    return-void
.end method

.method private concatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u0000"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseCategory(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/debug/SettingsIPC$Setting;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "settings"

    .line 263
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 265
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 266
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 267
    invoke-direct {p0, v2}, Lcom/oculus/panelapp/debug/SettingsIPC;->parseSetting(Lorg/json/JSONObject;)Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    move-result-object v2

    .line 268
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private parseSetting(Lorg/json/JSONObject;)Lcom/oculus/panelapp/debug/SettingsIPC$Setting;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 275
    new-instance v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;

    invoke-direct {v0}, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;-><init>()V

    const-string v1, "category"

    .line 276
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->category:Ljava/lang/String;

    const-string v1, "name"

    .line 277
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->name:Ljava/lang/String;

    const-string v1, "currentSetting"

    .line 278
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->currentSetting:Ljava/lang/String;

    :try_start_0
    const-string v1, "type"

    .line 280
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->fromString(Ljava/lang/String;)Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->type:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 282
    sget-object v2, Lcom/oculus/panelapp/debug/SettingsIPC;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    sget-object v1, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->INVALID:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    iput-object v1, v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->type:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    :goto_0
    :try_start_1
    const-string v1, "inputHint"

    .line 286
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->fromString(Ljava/lang/String;)Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->inputHint:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 288
    sget-object v2, Lcom/oculus/panelapp/debug/SettingsIPC;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget-object v1, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->NONE:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    iput-object v1, v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->inputHint:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    .line 292
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->presets:Ljava/util/ArrayList;

    const-string v1, "presets"

    .line 293
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 294
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 295
    iget-object v2, v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->presets:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 298
    :cond_0
    new-instance p1, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    invoke-direct {p1, p0, v0}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;-><init>(Lcom/oculus/panelapp/debug/SettingsIPC;Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;)V

    return-object p1
.end method


# virtual methods
.method public bindSetting(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/panelapp/debug/SettingsIPC$BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/panelapp/debug/SettingsIPC$BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/debug/SettingsIPC;->concatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 207
    iget-object p2, p0, Lcom/oculus/panelapp/debug/SettingsIPC;->mSettingCallbacks:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    .line 192
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "shellDebug getSetting \"%s\" \"%s\""

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 193
    iget-object p2, p0, Lcom/oculus/panelapp/debug/SettingsIPC;->mDebugApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    invoke-virtual {p2, p1}, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->queueRawCommand(Ljava/lang/String;)V

    return-void
.end method

.method public listSettings()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/debug/SettingsIPC$Setting;",
            ">;>;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/oculus/panelapp/debug/SettingsIPC;->mDebugApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    const-string v1, "_oc_shellsettings:settings_list"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->getEnvironmentArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/debug/SettingsIPC;->parseSettings(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveGetSettingResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 302
    sget-object v0, Lcom/oculus/panelapp/debug/SettingsIPC;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v4, 0x2

    aput-object p3, v1, v4

    const-string v5, "onReceiveGetSettingResponse received (\"%s\", \"%s\", \"%s\")"

    .line 304
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/debug/SettingsIPC;->concatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/oculus/panelapp/debug/SettingsIPC;->mSettingCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/debug/SettingsIPC$BiConsumer;

    if-nez v0, :cond_0

    .line 311
    sget-object p3, Lcom/oculus/panelapp/debug/SettingsIPC;->TAG:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v3

    const-string p1, "Setting %s.%s not currently bound."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "getSetting"

    .line 315
    invoke-interface {v0, p1, p3}, Lcom/oculus/panelapp/debug/SettingsIPC$BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public parseSettings(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/debug/SettingsIPC$Setting;",
            ">;>;"
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 238
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "categories"

    .line 241
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 244
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 245
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 248
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 249
    invoke-direct {p0, v4}, Lcom/oculus/panelapp/debug/SettingsIPC;->parseCategory(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v4

    .line 250
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 253
    sget-object v2, Lcom/oculus/panelapp/debug/SettingsIPC;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid JSON for parseSettings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    .line 229
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "shellDebug setSetting \"%s\" \"%s\" %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 230
    iget-object p2, p0, Lcom/oculus/panelapp/debug/SettingsIPC;->mDebugApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    invoke-virtual {p2, p1}, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->queueRawCommand(Ljava/lang/String;)V

    return-void
.end method

.method public unbindSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/debug/SettingsIPC;->concatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 218
    iget-object p2, p0, Lcom/oculus/panelapp/debug/SettingsIPC;->mSettingCallbacks:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
