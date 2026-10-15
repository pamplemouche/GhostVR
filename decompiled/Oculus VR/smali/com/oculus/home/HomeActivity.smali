.class public Lcom/oculus/home/HomeActivity;
.super Landroid/app/Activity;
.source "HomeActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BadMethodUse-java.lang.System.currentTimeMillis"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/home/HomeActivity$SystemActivitiesFail;
    }
.end annotation


# static fields
.field private static final SHELL_REQUIRED_APPS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDebugMode:Lcom/oculus/debug/DebugMode;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEventMigrationHelper:Lcom/oculus/logging/utils/EventMigrationHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/home/HomeActivity;)V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/home/HomeActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/home/HomeActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/home/HomeActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/home/HomeActivity;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/oculus/debug/DebugMode;->$ul_$xXXcom_oculus_debug_DebugMode$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/debug/DebugMode;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/home/HomeActivity;->mDebugMode:Lcom/oculus/debug/DebugMode;

    invoke-static {p0}, Lcom/oculus/logging/utils/UtilsModule;->$ul_$xXXcom_oculus_logging_utils_EventMigrationHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/logging/utils/EventMigrationHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/home/HomeActivity;->mEventMigrationHelper:Lcom/oculus/logging/utils/EventMigrationHelper;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const-class v0, Lcom/oculus/home/HomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/home/HomeActivity;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.oculus.browser"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.oculus.mediaplayer"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.oculus.vrshell"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.oculus.vrshell.home"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/home/HomeActivity;->SHELL_REQUIRED_APPS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static buildDeeplinkingUriForShell(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0



    .line 144
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 145
    const-string v2, "return_to_root"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    const-string v0, "/returnToRoot"

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 163
    :goto_0
    const-string v0, "extra_launch_package_on_start"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    .line 165
    const-string v2, "extra_launch_package_on_start"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 168
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 171
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_1
    return-object v0

    .line 147
    :cond_2
    const-string v2, "pdp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    const-string v0, "/item/"

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 149
    const-string v0, "intent_cmd"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 150
    :cond_3
    const-string v2, "mic_permission"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    const-string v0, "component_name"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 153
    const-string v2, "/mic_perm_upsell/"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 154
    const-string v2, "intent_cmd"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 155
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 156
    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 157
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto/16 :goto_0

    .line 160
    :cond_5
    const-string v0, "/"

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto/16 :goto_0

    .line 173
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getMissingShellApps(Landroid/content/pm/PackageManager;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static getShellRedirectIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 180
    const-string v0, "com.oculus.vrshell"

    .line 181
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 184
    invoke-static {p1}, Lcom/oculus/home/HomeActivity;->buildDeeplinkingUriForShell(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    sget-object v1, Lcom/oculus/home/HomeActivity;->TAG:Ljava/lang/String;

    const-string v2, "Deeplinking: Redirect to Shell with deeplinking uri %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    const-string v1, "uri"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    :cond_0
    const-string v0, "apk://com.oculus.vrshell.home"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 193
    return-object p1
.end method

.method private static getSystemActivitiesFailIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 198
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.systemactivities"

    const-string v3, "com.oculus.systemactivities.PlatformActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 201
    const-string v1, "intent_cmd"

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/oculus/home/HomeActivity$SystemActivitiesFail;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/oculus/home/HomeActivity$SystemActivitiesFail;-><init>(Lcom/oculus/home/HomeActivity$1;)V

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v1, "intent_pkg"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    return-object v0
.end method

.method private static isInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-static {p0, p0}, Lcom/oculus/home/HomeActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/home/HomeActivity;)V

    .line 81
    invoke-virtual {p0}, Lcom/oculus/home/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/home/HomeActivity;->getMissingShellApps(Landroid/content/pm/PackageManager;)[Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-virtual {p0}, Lcom/oculus/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "intent_cmd"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    array-length v0, v4

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/oculus/home/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oculus/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oculus/home/HomeActivity;->getShellRedirectIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    .line 94
    :goto_0
    iget-object v6, p0, Lcom/oculus/home/HomeActivity;->mEventMigrationHelper:Lcom/oculus/logging/utils/EventMigrationHelper;

    const-string v7, "moonlight_home_redirect"

    const/4 v8, 0x0

    .line 95
    invoke-interface {v6, v7, v8, v1}, Lcom/oculus/logging/utils/EventMigrationHelper;->createEvent(Ljava/lang/String;Ljava/lang/String;Z)Lcom/oculus/logging/utils/Event;

    move-result-object v6

    const-string v7, "did_redirect_to_shell"

    .line 96
    invoke-interface {v6, v7, v0}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;Z)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    const-string v6, "intent_action"

    .line 97
    invoke-virtual {p0}, Lcom/oculus/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;Z)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    const-string v6, "intent_command"

    .line 98
    invoke-interface {v0, v6, v5}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;Z)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    const-string v5, "is_debug_mode"

    iget-object v6, p0, Lcom/oculus/home/HomeActivity;->mDebugMode:Lcom/oculus/debug/DebugMode;

    .line 99
    invoke-virtual {v6}, Lcom/oculus/debug/DebugMode;->isEnabled()Z

    move-result v6

    invoke-interface {v0, v5, v6}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;Z)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    const-string v5, "missing_shell_apps"

    .line 100
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;Z)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    const-string v4, "passes_shell_iap_gk"

    .line 101
    invoke-interface {v0, v4, v1}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;Z)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    const-string v4, "passes_shell_master_gk"

    .line 102
    invoke-interface {v0, v4, v1}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;Z)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Lcom/oculus/logging/utils/Event;->logAndRelease()V

    .line 105
    const/high16 v0, 0x10000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v3}, Lcom/oculus/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {p0, v2, v2}, Lcom/oculus/home/HomeActivity;->overridePendingTransition(II)V

    .line 108
    invoke-virtual {p0}, Lcom/oculus/home/HomeActivity;->finish()V

    .line 109
    return-void

    .line 91
    :cond_0
    invoke-static {p0}, Lcom/oculus/home/HomeActivity;->getSystemActivitiesFailIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    move-object v3, v0

    move v0, v2

    goto :goto_0
.end method
