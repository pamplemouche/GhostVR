.class public Lcom/oculus/config/ConfigController;
.super Ljava/lang/Object;
.source "ConfigController.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mDynamicGatekeeperRegistry:Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mGatekeeperRegistry:Lcom/oculus/config/gatekeeper/GatekeeperRegistry;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Lcom/oculus/config/annotations/GatekeeperSharedPrefs;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/oculus/config/ConfigModule;->$ul_$xXXcom_oculus_config_gatekeeper_GatekeeperRegistry$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/config/gatekeeper/GatekeeperRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/config/ConfigController;->mGatekeeperRegistry:Lcom/oculus/config/gatekeeper/GatekeeperRegistry;

    invoke-static {p1}, Lcom/oculus/config/ConfigModule;->$ul_$xXXandroid_content_SharedPreferences$xXXcom_oculus_config_annotations_GatekeeperSharedPrefs$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/config/ConfigController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/oculus/config/ConfigModule;->$ul_$xXXcom_oculus_config_gatekeeper_DynamicGatekeeperRegistry$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/config/ConfigController;->mDynamicGatekeeperRegistry:Lcom/oculus/config/gatekeeper/DynamicGatekeeperRegistry;

    return-void
.end method
