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
    invoke-virtual {p0}, Landroid/content/
