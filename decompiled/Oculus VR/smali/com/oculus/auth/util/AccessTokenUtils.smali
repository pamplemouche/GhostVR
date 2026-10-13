.class public Lcom/oculus/auth/util/AccessTokenUtils;
.super Ljava/lang/Object;
.source "AccessTokenUtils.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation


# instance fields
.field private final mAppInfo:Lcom/oculus/base/app/AppInfo;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 1
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/oculus/base/app/AppInfoModule;->$ul_$xXXcom_oculus_base_app_AppInfo$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/base/app/AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/auth/util/AccessTokenUtils;->mAppInfo:Lcom/oculus/base/app/AppInfo;

    .line 24
    return-void
.end method

.method public static createLoggedOutToken(Lcom/oculus/base/app/AppInfo;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 33
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "OC|%s|%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oculus/base/app/AppInfo;->oculusAppId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/oculus/base/app/AppInfo;->oculusLoginToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
