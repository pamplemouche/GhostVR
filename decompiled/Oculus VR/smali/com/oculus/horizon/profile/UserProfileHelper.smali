.class public Lcom/oculus/horizon/profile/UserProfileHelper;
.super Ljava/lang/Object;
.source "UserProfileHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SharedPreferencesUse"
    }
.end annotation

.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final GSON:Lcom/google/gson/Gson;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCredentialsProvider:Ljavax/inject/Provider;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/oculus/auth/credentials/Credentials;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefs:Landroid/content/SharedPreferences;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .annotation build Lcom/oculus/horizon/profile/UserProfileSharedPrefs;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/profile/UserProfileHelper;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/oculus/horizon/profile/UserProfileHelper;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 1
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/oculus/horizon/profile/UserProfileModule;->$ul_$xXXandroid_content_SharedPreferences$xXXcom_oculus_horizon_profile_UserProfileSharedPrefs$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/oculus/auth/credentials/CredentialsModule;->$ul_$xXXjavax_inject_Provider$x3Ccom_oculus_auth_credentials_Credentials$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper;->mCredentialsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method static provideUserProfileSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Lcom/facebook/inject/ForAppContext;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    :try_start_0
    sget-object v0, Lcom/oculus/common/build/BuildConstants;->PACKAGE_NAME_HORIZON:Ljava/lang/String;

    const/4 v1, 0x1

    .line 131
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 133
    const-string v1, "Could not create context from: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "user_profile_shared_preferences"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 136
    :catch_0
    move-exception v0

    .line 138
    sget-object v1, Lcom/oculus/horizon/profile/UserProfileHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed to create Horizon context"

    invoke-static {v1, v2, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
