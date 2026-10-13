.class public abstract Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;
.super Lcom/oculus/vrshell/panels/AndroidPanelApp;
.source "ShellAndroidPanelApp.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/telemetry/Logger;


# static fields
.field protected static final ENVIRONMENT_ARG_ENTERPRISE_CONFIGURATION_MODE_INDEX:Ljava/lang/String; = "_oc_shell_enterprise_configuration_mode_index"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAutomationEnabled:Z

.field private mCurrentSystemDialog:Lcom/oculus/systemdialog/DialogDefinitionBase;

.field private mGatekeepers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mQEParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSystemTooltipController:Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;

.field private mTelemetryManager:Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Landroid/content/Context;",
            "Landroid/view/Surface;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/oculus/vrshell/panels/AndroidPanelApp;-><init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 50
    iget-object p1, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mEnvironmentArgs:Ljava/util/Map;

    const-string p2, "_oc_shell_automation_enabled"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "true"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mAutomationEnabled:Z

    .line 53
    iget-boolean p1, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mAutomationEnabled:Z

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getNativePointer()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->nativeEnableAutomation(J)V

    :cond_0
    return-void
.end method

.method private convertViewToObject(Landroid/view/View;Landroid/content/res/Resources;Z)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 395
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "id"

    .line 398
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const-string v2, "visibility"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 407
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 408
    check-cast p1, Landroid/view/ViewGroup;

    .line 410
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const-string v2, "childCount"

    .line 411
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p3, :cond_3

    .line 413
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 416
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, p2, p3}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->convertViewToObject(Landroid/view/View;Landroid/content/res/Resources;Z)Lorg/json/JSONObject;

    move-result-object v4

    .line 415
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "children"

    .line 418
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 420
    :cond_2
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_3

    .line 421
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    .line 422
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    const-string p3, "text"

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    instance-of p2, p1, Landroid/widget/CheckBox;

    if-eqz p2, :cond_3

    .line 427
    check-cast p1, Landroid/widget/CheckBox;

    .line 428
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string p2, "checked"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_3
    :goto_1
    return-object v0
.end method

.method private findViewByName(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 378
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 383
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 385
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private native nativeEnableAutomation(J)V
.end method

.method private native nativeHideSystemDialog(J)V
.end method

.method private native nativeHideSystemTooltip(J)V
.end method

.method private native nativeLogQEExposure(JLjava/lang/String;)V
.end method

.method private native nativeShowSystemDialog(JLjava/lang/String;)V
.end method

.method private native nativeShowSystemTooltip(JLjava/lang/String;)V
.end method

.method static parseGatekeepers(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 343
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 344
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "_oc_gk:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 347
    sget-object v2, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 349
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "Invalid Gatekeeper key: %s, value: %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 355
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static parseQEParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_1

    const-string v1, "\n"

    .line 363
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 364
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    const-string v5, ":"

    .line 365
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 366
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 367
    aget-object v4, v5, v2

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 369
    :cond_0
    sget-object v5, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid QE param:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 374
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public actionHideSystemDialog()V
    .locals 2

    .line 243
    sget-object v0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->TAG:Ljava/lang/String;

    const-string v1, "actionHideSystemDialog (sending dialog request to native layer)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->nativeHideSystemDialog(J)V

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mCurrentSystemDialog:Lcom/oculus/systemdialog/DialogDefinitionBase;

    return-void
.end method

.method public actionHideSystemTooltip()V
    .locals 2

    .line 270
    sget-object v0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->TAG:Ljava/lang/String;

    const-string v1, "actionHideTooltip (sending tooltip request to native layer)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->nativeHideSystemTooltip(J)V

    return-void
.end method

.method public actionShowSystemDialog(Lcom/oculus/systemdialog/DialogDefinitionBase;)V
    .locals 4

    if-nez p1, :cond_0

    .line 225
    sget-object p1, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->TAG:Ljava/lang/String;

    const-string v0, "Unable to show null dialog definition"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 229
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/systemdialog/DialogDefinitionBase;->getDialogConfigurationIPCParcel()Ljava/lang/String;

    move-result-object v0

    .line 231
    sget-object v1, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "actionShowSystemDialog (sending dialog request to native layer) - %s"

    .line 233
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getNativePointer()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->nativeShowSystemDialog(JLjava/lang/String;)V

    .line 238
    iput-object p1, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mCurrentSystemDialog:Lcom/oculus/systemdialog/DialogDefinitionBase;

    return-void
.end method

.method public actionShowSystemTooltip(Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;)V
    .locals 2

    .line 259
    invoke-virtual {p1, p2}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->getTooltipConfigurationJson(Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;)Ljava/lang/String;

    move-result-object p1

    .line 260
    sget-object p2, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "actionShowTooltip (sending tooltip request to native layer) - %s"

    .line 262
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->nativeShowSystemTooltip(JLjava/lang/String;)V

    return-void
.end method

.method public automationActivateView(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 93
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "requestId"

    .line 94
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    invoke-direct {p0, p2, p3}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->findViewByName(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    const-string p2, "result"

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 99
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->convertViewToObject(Landroid/view/View;Landroid/content/res/Resources;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "view"

    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "success"

    .line 100
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p1, "not-found"

    .line 102
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    :goto_0
    sget-object p1, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->TAG:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public automationQueryLayer(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 111
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "requestId"

    .line 112
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    invoke-virtual {p0, p2}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object p1

    const-string v1, "result"

    if-eqz p1, :cond_1

    const-string v2, "success"

    .line 116
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "layerId"

    .line 119
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->isVisible()Z

    move-result p2

    const-string v2, "visible"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 121
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getWidth()I

    move-result p2

    const-string v2, "width"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getHeight()I

    move-result p2

    const-string v2, "height"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "layer"

    .line 123
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getContentView()Landroid/view/View;

    move-result-object p1

    const-string p2, "view"

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->convertViewToObject(Landroid/view/View;Landroid/content/res/Resources;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 127
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 130
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string p1, "not-found"

    .line 133
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    :goto_0
    sget-object p1, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->TAG:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public automationQueryView(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 144
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "requestId"

    .line 145
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "layerId"

    .line 146
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    invoke-direct {p0, p2, p3}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->findViewByName(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    const-string p2, "result"

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-direct {p0, p1, p3, p4}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->convertViewToObject(Landroid/view/View;Landroid/content/res/Resources;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "view"

    .line 150
    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "success"

    .line 152
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p1, "not-found"

    .line 154
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    :goto_0
    sget-object p1, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->TAG:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGatekeepers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mGatekeepers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mEnvironmentArgs:Ljava/util/Map;

    invoke-static {v0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->parseGatekeepers(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mGatekeepers:Ljava/util/Map;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mGatekeepers:Ljava/util/Map;

    return-object v0
.end method

.method public getSystemTooltipController()Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mSystemTooltipController:Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;

    invoke-direct {v0, p0}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;-><init>(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V

    iput-object v0, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mSystemTooltipController:Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mSystemTooltipController:Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;

    return-object v0
.end method

.method public getTelemetryManager()Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mTelemetryManager:Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;

    new-instance v1, Lcom/oculus/vrshell/timer/TimeServiceElapsedRealtime;

    invoke-direct {v1}, Lcom/oculus/vrshell/timer/TimeServiceElapsedRealtime;-><init>()V

    invoke-direct {v0, v1}, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;-><init>(Lcom/oculus/vrshell/timer/TimeService;)V

    .line 81
    new-instance v1, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    invoke-direct {v1, p0, v0}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;-><init>(Lcom/oculus/vrshell/panels/telemetry/Logger;Lcom/oculus/vrshell/panels/telemetry/SectionTracker;)V

    iput-object v1, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mTelemetryManager:Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    .line 84
    iget-object v1, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mTelemetryManager:Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->setSectionListener(Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl$SectionListener;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mTelemetryManager:Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    return-object v0
.end method

.method public isAutomationEnabled()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mAutomationEnabled:Z

    return v0
.end method

.method public isFeatureFlagEnabled(Ljava/lang/String;)Z
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_oc_ff:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getEnvironmentArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z
    .locals 1

    .line 194
    invoke-virtual {p1}, Lcom/oculus/common/gatekeepers/Gatekeeper;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getGatekeepers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getGatekeepers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isQEParamEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mQEParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mQEParams:Ljava/util/Map;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mQEParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mQEParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    .line 172
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_oc_qe:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getEnvironmentArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->parseQEParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mQEParams:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 176
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isQEParamEnabledAndLogExposure(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_oc_qe:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getEnvironmentArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->nativeLogQEExposure(JLjava/lang/String;)V

    .line 184
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->isQEParamEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected native nativeJSONTelemetry(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method protected varargs native nativeTelemetry(JLjava/lang/String;[Ljava/lang/String;)V
.end method

.method public onBackground()V
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->onBackground()V

    .line 73
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getTelemetryManager()Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->getSectionTracker()Lcom/oculus/vrshell/panels/telemetry/SectionTracker;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/vrshell/panels/telemetry/SectionTracker;->onAppBackground()V

    return-void
.end method

.method public onForeground()V
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->onForeground()V

    .line 66
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getTelemetryManager()Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->getSectionTracker()Lcom/oculus/vrshell/panels/telemetry/SectionTracker;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/vrshell/panels/telemetry/SectionTracker;->onAppForeground()V

    return-void
.end method

.method protected onSystemDialogResult(Ljava/lang/String;)V
    .locals 5

    .line 287
    sget-object v0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received system dialog result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-static {p1}, Lcom/oculus/systemdialog/DialogResult;->fromJson(Ljava/lang/String;)Lcom/oculus/systemdialog/DialogResult;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 291
    sget-object v0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "null dialog result cannot be processed, invalid dialog result string: %s. Closing system dialog."

    .line 293
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->actionHideSystemDialog()V

    return-void

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->mCurrentSystemDialog:Lcom/oculus/systemdialog/DialogDefinitionBase;

    if-nez p1, :cond_1

    .line 303
    sget-object p1, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    .line 307
    invoke-virtual {v0}, Lcom/oculus/systemdialog/DialogResult;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "null dialog cannot handle dialog result: %s. Closing system dialog."

    .line 305
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->actionHideSystemDialog()V

    return-void

    .line 324
    :cond_1
    invoke-virtual {v0}, Lcom/oculus/systemdialog/DialogResult;->getDialogAutoClose()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 325
    sget-object v3, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->TAG:Ljava/lang/String;

    const-string v4, "The current dialog was auto-closed by VrShell. Closing system dialog."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->actionHideSystemDialog()V

    .line 331
    :cond_2
    invoke-virtual {p1, v0}, Lcom/oculus/systemdialog/DialogDefinitionBase;->handleDialogResult(Lcom/oculus/systemdialog/DialogResult;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 332
    sget-object p1, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    .line 336
    invoke-virtual {v0}, Lcom/oculus/systemdialog/DialogResult;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "The current dialog does not handle dialog result: %s. Closing system dialog."

    .line 334
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->actionHideSystemDialog()V

    :cond_3
    return-void
.end method

.method public varargs rawLogEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 200
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getNativePointer()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->nativeTelemetry(JLjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public rawLogJsonEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 205
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getNativePointer()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->nativeJSONTelemetry(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
