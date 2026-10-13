.class public Lcom/oculus/vrshell/util/PanelAppConfigurationUtil;
.super Ljava/lang/Object;
.source "PanelAppConfigurationUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final needsActivityTokenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 23
    const-class v0, Lcom/oculus/vrshell/util/PanelAppConfigurationUtil;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/PanelAppConfigurationUtil;->TAG:Ljava/lang/String;

    const-string v1, "com.facebook.snapvr/com.facebook.snapvr.SnapVrPanelService"

    const-string v2, "com.oculus.tv/com.oculus.tv.PanelService"

    const-string v3, "com.oculus.livingroom/com.oculus.livingroom.PanelService"

    const-string v4, "com.oculus.vrshell.desktop/com.oculus.vrshell.desktop.PanelService"

    const-string v5, "com.oculus.vrshell/com.oculus.panelapp.anytimeui.AnytimeUIAndroidPanelService"

    const-string v6, "com.oculus.systemux/com.oculus.panelapp.anytimeui.AnytimeUIAndroidPanelService"

    const-string v7, "com.oculus.vrshell/com.oculus.panelapp.keyboardv2.KeyboardPanelService"

    const-string v8, "com.oculus.vrshell/com.oculus.panelapp.debug.ShellDebugPanelService"

    .line 27
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/PanelAppConfigurationUtil;->needsActivityTokenList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSurfaceInfo(Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_1

    const-string v0, ","

    .line 295
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 296
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->withSurfaceNames([Ljava/lang/String;)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;

    .line 297
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 298
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "^[a-zA-Z][a-zA-Z0-9]*$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 299
    sget-object p1, Lcom/oculus/vrshell/util/PanelAppConfigurationUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid surface name specified in com.oculus.vrshell.required_panel_surfaces - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p0, v1}, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->withValidService(Z)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;

    const/4 p1, 0x0

    .line 304
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->withSurfaceNames([Ljava/lang/String;)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static buildPanelAppConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/pm/PackageManager;Z)Lcom/oculus/vrshell/config/PanelAppConfiguration;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oculus/vrshell/config/PanelAppConfiguration;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            "Z)",
            "Lcom/oculus/vrshell/config/PanelAppConfiguration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/oculus/vrshell/util/PanelAppConfigurationUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieving panel configuration for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x84

    .line 64
    invoke-virtual {p3, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {p0, v0, p3}, Lcom/oculus/vrshell/util/PanelAppConfigurationUtil;->tryResolvingServiceName(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p1

    .line 74
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/vrshell/config/PanelAppConfiguration;

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {v3}, Lcom/oculus/vrshell/config/PanelAppConfiguration;->getPackageUid()I

    move-result v4

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_1

    .line 95
    invoke-virtual {v3}, Lcom/oculus/vrshell/config/PanelAppConfiguration;->getVersionCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 97
    sget-object v3, Lcom/oculus/vrshell/util/PanelAppConfigurationUtil;->TAG:Ljava/lang/String;

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v1, v6, v4

    const-string v7, "Refreshing APK info for %s; UID or version code changed"

    .line 99
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 97
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2
    new-instance v3, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;

    invoke-direct {v3}, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;-><init>()V

    .line 105
    invoke-virtual {v3, p0}, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->withPackageName(Ljava/lang/String;)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;

    move-result-object v3

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 106
    invoke-virtual {v3, v6}, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->withPackageUid(I)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;

    move-result-object v3

    .line 107
    invoke-virtual {v3, p1}, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->withServiceName(Ljava/lang/String;)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;

    move-result-object v3

    .line 112
    invoke-static {p0, p1}, Lcom/oculus/vrshell/util/PanelAppConfigurationUtil;->needsActivityToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 111
    invoke-virtual {v3, v6}, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->withNeedsActivityToken(Z)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;

    .line 114
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v6, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_3
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v0}, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->withVersionName(Ljava/lang/String;)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;

    .line 115
    invoke-virtual {v3, v2}, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->withVersionCode(Ljava/lang/String;)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.oculus.vrshell.SHELL_MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 p1, 0x80

    .line 121
    invoke-virtual {p3, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 122
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 125
    invoke-virtual {v3, v5}, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->withValidService(Z)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;

    .line 128
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_4

    const-string v0, "com.oculus.vrshell.required_panel_surfaces"

    .line 134
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v3, v0}, Lcom/oculus/vrshell/util/PanelAppConfigurationUtil;->addSurfaceInfo(Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;Ljava/lang/String;)V

    const-string v0, "com.oculus.vrshell.supports_multi_instance"

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 139
    invoke-virtual {v3, v0}, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->withAllowMultiInstance(Z)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;

    const-string v0, "com.oculus.vrshell.supports_ime_composition"

    .line 143
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 142
    invoke-virtual {v3, v0}, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->withAllowImeComposition(Z)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;

    const-string v0, "com.oculus.vrshell.supports_layers"

    .line 148
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 147
    invoke-virtual {v3, v0}, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->withSupportsLayers(Z)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;

    const-string v0, "com.oculus.vrshell.initial_environment"

    .line 153
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {v3, v0}, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->withInitialEnvironment(Ljava/lang/String;)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;

    const-string v0, "com.oculus.vrshell.supports_social"

    .line 157
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 156
    invoke-virtual {v3, v0}, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->withHasSocialAppCapability(Z)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;

    const/4 v0, -0x1

    const-string v2, "com.oculus.vrshell.layer_definition"

    .line 161
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_4

    .line 163
    invoke-static {p3, p0, v3, p1, p4}, Lcom/oculus/vrshell/util/PanelAppConfigurationUtil;->parseLayerOptionResource(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;IZ)V

    .line 176
    :cond_4
    invoke-virtual {v3}, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->build()Lcom/oculus/vrshell/config/PanelAppConfiguration;

    move-result-object p0

    invoke-interface {p2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_5
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrshell/config/PanelAppConfiguration;

    return-object p0

    :cond_6
    if-eqz p1, :cond_8

    .line 167
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    .line 171
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Specified component resolved to multiple service entries - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 168
    :cond_8
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Specified component is not a valid panel service launch intent - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No default service found in application. Package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid Panel Service."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static needsActivityToken(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 45
    sget-object p1, Lcom/oculus/vrshell/util/PanelAppConfigurationUtil;->needsActivityTokenList:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    sget-object p1, Lcom/oculus/vrshell/util/PanelAppConfigurationUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending Android activity token to component "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 49
    :cond_0
    sget-object p1, Lcom/oculus/vrshell/util/PanelAppConfigurationUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not sending Android activity token to component "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static parseLayerOptionResource(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;IZ)V
    .locals 10

    .line 234
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 235
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 239
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    const/4 v4, -0x1

    .line 241
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eq v5, v4, :cond_5

    .line 243
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    move v6, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 244
    :goto_1
    array-length v7, v4

    if-ge v3, v7, :cond_3

    .line 245
    aget-object v7, v4, v3

    const-string v8, "name:"

    .line 246
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    const/4 v5, 0x5

    .line 248
    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "#main"

    .line 249
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    .line 253
    :cond_0
    aput-object v5, p3, v2

    const/4 v5, 0x1

    goto :goto_2

    .line 258
    :cond_1
    invoke-static {v7}, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;->getValueOfOption(Ljava/lang/String;)I

    move-result v7

    .line 264
    sget-object v8, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;->zerocopytw:Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

    .line 265
    invoke-virtual {v8}, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;->getOptionValue()I

    move-result v8

    if-ne v7, v8, :cond_2

    if-nez p4, :cond_2

    goto :goto_2

    .line 269
    :cond_2
    aget v8, v0, v2

    or-int/2addr v7, v8

    aput v7, v0, v2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    move v3, v6

    goto :goto_3

    .line 273
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "There is no name for this surface."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    .line 279
    invoke-virtual {p2, p3}, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->withSurfaceNames([Ljava/lang/String;)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;

    .line 280
    invoke-virtual {p2, v0}, Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;->withLayerOptions([I)Lcom/oculus/vrshell/config/PanelAppConfiguration$Builder;

    goto :goto_4

    .line 282
    :cond_7
    sget-object p0, Lcom/oculus/vrshell/util/PanelAppConfigurationUtil;->TAG:Ljava/lang/String;

    const-string p1, "Incorrect xml format, no main layer found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 286
    sget-object p1, Lcom/oculus/vrshell/util/PanelAppConfigurationUtil;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed parsing "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method private static tryResolvingServiceName(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 189
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    const-string v1, ""

    if-eqz v0, :cond_4

    .line 191
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v2, v0

    const/4 v3, 0x0

    move-object v5, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v1, v2, :cond_2

    aget-object v7, v0, v1

    .line 192
    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_1

    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.oculus.vrshell.is_default_service"

    .line 193
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v4, :cond_0

    .line 204
    iget-object v4, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object v5, v4

    const/4 v4, 0x1

    goto :goto_1

    .line 195
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Multiple default services found in package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    .line 211
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length p1, p1

    if-lez p1, :cond_3

    .line 212
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oculus.vrshell.SHELL_MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p2, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 215
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v6, :cond_3

    .line 216
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v1, v5

    :cond_4
    :goto_2
    return-object v1
.end method
