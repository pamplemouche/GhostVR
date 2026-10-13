.class Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;
.super Ljava/lang/Object;
.source "DogfoodPanelTelemetry.java"


# static fields
.field private static final EVENT_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mInstalledApkBuilds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mInstalledApkBuildsJSON:Ljava/lang/String;

.field mInstalledOsBuild:Ljava/lang/String;

.field mLatestApkBuilds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLatestApkBuildsJSON:Ljava/lang/String;

.field mLatestOsBuild:Ljava/lang/String;

.field final mTelemetryManager:Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->TAG:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/oculus/vrshell/panels/telemetry/Event;->oculus_vrshell_panelapp_dogfooding:Lcom/oculus/vrshell/panels/telemetry/Event;

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/telemetry/Event;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->EVENT_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;)V
    .locals 2
    .param p1    # Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 81
    iput-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mInstalledOsBuild:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mLatestOsBuild:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mInstalledApkBuilds:Ljava/util/HashMap;

    const-string v0, "{}"

    .line 84
    iput-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mInstalledApkBuildsJSON:Ljava/lang/String;

    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mLatestApkBuilds:Ljava/util/HashMap;

    .line 86
    iput-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mLatestApkBuildsJSON:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mTelemetryManager:Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    .line 20
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mTelemetryManager:Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->getSectionTracker()Lcom/oculus/vrshell/panels/telemetry/SectionTracker;

    move-result-object p1

    const-string v0, "DogfoodPanel"

    const-string v1, "N/A"

    invoke-interface {p1, v0, v1}, Lcom/oculus/vrshell/panels/telemetry/SectionTracker;->subSectionEnter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getInstalledApkBuildsJSON()Ljava/lang/String;
    .locals 7

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 43
    iget-object v1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mInstalledApkBuilds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 45
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    sget-object v3, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "Failed to insert %s:%s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLatestApkBuildsJSON()Ljava/lang/String;
    .locals 7

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    iget-object v1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mLatestApkBuilds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 57
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    sget-object v3, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "Failed to insert %s:%s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public logAction(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    iget-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mTelemetryManager:Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    sget-object v1, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->EVENT_NAME:Ljava/lang/String;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "action"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    const-string v3, "latest_builds"

    aput-object v3, v2, p1

    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mLatestApkBuildsJSON:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 p1, 0x4

    const-string v3, "latest_os_build"

    aput-object v3, v2, p1

    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mLatestOsBuild:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object p1, v2, v3

    const/4 p1, 0x6

    const-string v3, "installed_builds"

    aput-object v3, v2, p1

    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mInstalledApkBuildsJSON:Ljava/lang/String;

    const/4 v3, 0x7

    aput-object p1, v2, v3

    const/16 p1, 0x8

    const-string v3, "installed_os_build"

    aput-object v3, v2, p1

    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mInstalledOsBuild:Ljava/lang/String;

    const/16 v3, 0x9

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->logEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setInstalledApkBuild(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    iget-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mInstalledApkBuilds:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-direct {p0}, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->getInstalledApkBuildsJSON()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mInstalledApkBuildsJSON:Ljava/lang/String;

    return-void
.end method

.method public setInstalledOsBuild(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mInstalledOsBuild:Ljava/lang/String;

    return-void
.end method

.method public setLatestApkBuild(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    iget-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mLatestApkBuilds:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-direct {p0}, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->getLatestApkBuildsJSON()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mLatestApkBuildsJSON:Ljava/lang/String;

    return-void
.end method

.method public setLatestOsBuild(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->mLatestOsBuild:Ljava/lang/String;

    return-void
.end method
