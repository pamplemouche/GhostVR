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

    new-array v0, v
