.class public Lcom/oculus/horizon/main/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/oculus/horizon/base/OculusBaseFragment$OnResumeListener;
.implements Lcom/oculus/horizon/mainnavigation/NavigationUpdater;
.implements Lcom/oculus/horizon/react/OculusReactDelegateProvider;


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/oculus/horizon/main/MainActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mAutoUpdateScheduler:Lcom/oculus/autoupdates/AutoUpdateScheduler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOVRLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mQuickPromotionHelper:Lcom/oculus/horizon/main/MainActivityQuickPromotionHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mReactDelegate:Lcom/oculus/horizon/react/OculusReactDelegate;

.field private mRoadblocksHelper:Lcom/oculus/horizon/main/RoadblocksHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mStyleManager:Lcom/oculus/horizon/style/StyleManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTitleBarHelper:Lcom/oculus/horizon/main/TitleBarHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/main/MainActivity;)V
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/main/MainActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/main/MainActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/main/MainActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/main/MainActivity;)V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/main/MainActivity;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/oculus/horizon/api/ApiRequestManager;->$ul_$xXXcom_oculus_horizon_api_ApiRequestManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/api/ApiRequestManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/main/MainActivity;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-static {p0}, Lcom/oculus/horizon/main/BottomNavHelper;->$ul_$xXXcom_oculus_horizon_main_BottomNavHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/main/BottomNavHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/main/MainActivity;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/MeManager;->$ul_$xXXcom_oculus_horizon_legacy_social_MeManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/main/MainActivity;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {p0}, Lcom/oculus/horizon/main/RoadblocksHelper;->$ul_$xXXcom_oculus_horizon_main_RoadblocksHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/main/RoadblocksHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/main/MainActivity;->mRoadblocksHelper:Lcom/oculus/horizon/main/RoadblocksHelper;

    invoke-static {p0}, Lcom/oculus/horizon/main/TitleBarHelper;->$ul_$xXXcom_oculus_horizon_main_TitleBarHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/main/TitleBarHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/main/MainActivity;->mTitleBarHelper:Lcom/oculus/horizon/main/TitleBarHelper;

    invoke-static {p0}, Lcom/oculus/autoupdates/AutoUpdateScheduler;->$ul_$xXXcom_oculus_autoupdates_AutoUpdateScheduler$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/autoupdates/AutoUpdateScheduler;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/main/MainActivity;->mAutoUpdateScheduler:Lcom/oculus/autoupdates/AutoUpdateScheduler;

    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/main/MainActivity;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-static {p0}, Lcom/oculus/horizon/style/StyleManager;->$ul_$xXXcom_oculus_horizon_style_StyleManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/style/StyleManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/main/MainActivity;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/main/MainActivity;->mOVRLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-static {p0}, Lcom/oculus/mobileconfig/init/MobileConfigInitModule;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfig$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/main/MainActivity;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    invoke-static {p0}, Lcom/oculus/horizon/main/MainActivityQuickPromotionHelper;->$ul_$xXXcom_oculus_horizon_main_MainActivityQuickPromotionHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/main/MainActivityQuickPromotionHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/main/MainActivity;->mQuickPromotionHelper:Lcom/oculus/horizon/main/MainActivityQuickPromotionHelper;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/oculus/horizon/main/MainActivity;

    sput-object v0, Lcom/oculus/horizon/main/MainActivity;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 73
    new-instance v0, Lcom/oculus/horizon/main/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/main/MainActivity$1;-><init>(Lcom/oculus/horizon/main/MainActivity;)V

    iput-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mReactDelegate:Lcom/oculus/horizon/react/OculusReactDelegate;

    return-void
.end method

.method static synthetic access$001(Lcom/oculus/horizon/main/MainActivity;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/main/MainActivity;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/oculus/horizon/main/MainActivity;->onBackStackChanged()V

    return-void
.end method

.method private getMainFragmentArguments(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 328
    const-string v1, "extra_fragment_args"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    const-string v0, "extra_fragment_args"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 331
    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private getMainFragmentClass(Landroid/content/Intent;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 336
    const-string v1, "extra_fragment_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    const-string v0, "extra_fragment_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 345
    :cond_0
    return-object v0

    .line 340
    :catch_0
    move-exception v1

    .line 341
    sget-object v2, Lcom/oculus/horizon/main/MainActivity;->TAG:Ljava/lang/Class;

    const-string v3, "Invalid class name passed in EXTRA_FRAGMENT_NAME: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v1, v3, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    invoke-static {v1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private isTopLevelFragment(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/fragment/app/Fragment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 349
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-class v0, Lcom/oculus/horizon/mainnavigation/TopLevelFragment;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oculus/horizon/main/MainActivity;->newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 391
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oculus/horizon/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    if-eqz p1, :cond_0

    .line 393
    const-string v1, "extra_fragment_name"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    :cond_0
    const-string v1, "extra_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 396
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 397
    return-object v0
.end method

.method private onBackStackChanged()V
    .locals 2

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/oculus/horizon/main/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/main/BottomNavHelper;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mTitleBarHelper:Lcom/oculus/horizon/main/TitleBarHelper;

    sget-object v1, Lcom/oculus/horizon/main/TitleBarHelper$TitleBarIcon;->BACK_BUTTON:Lcom/oculus/horizon/main/TitleBarHelper$TitleBarIcon;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/main/TitleBarHelper;->setLeftIcon(Lcom/oculus/horizon/main/TitleBarHelper$TitleBarIcon;)V

    .line 431
    :cond_0
    return-void
.end method

.method private refetchLibrary()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mOVRLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->refetch()V

    .line 324
    return-void
.end method

.method private setup(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/oculus/horizon/main/MainActivity;->getMainFragmentArguments(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 281
    invoke-direct {p0, p1}, Lcom/oculus/horizon/main/MainActivity;->getMainFragmentClass(Landroid/content/Intent;)Ljava/lang/Class;

    move-result-object v1

    .line 282
    if-nez v1, :cond_3

    .line 284
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v2, Lcom/oculus/horizon/main/MC$oculus_store;->enabled:J

    invoke-interface {v0, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    const/4 v0, 0x0

    sget v1, Lcom/oculus/horizon/react/HorizonReactModule$UL_id;->$ul_$xXXcom_oculus_horizon_react_OculusReactNativeLauncher$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/main/MainActivity;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 286
    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/react/OculusReactNativeLauncher;

    invoke-static {}, Lcom/oculus/horizon/react/ReactScreenDescription;->createStore()Lcom/oculus/horizon/react/ReactScreenDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/react/OculusReactNativeLauncher;->createReactFragment(Lcom/oculus/horizon/react/ReactScreenDescription;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 290
    :goto_0
    invoke-direct {p0}, Lcom/oculus/horizon/main/MainActivity;->refetchLibrary()V

    .line 291
    iget-object v1, p0, Lcom/oculus/horizon/main/MainActivity;->mAutoUpdateScheduler:Lcom/oculus/autoupdates/AutoUpdateScheduler;

    invoke-virtual {v1}, Lcom/oculus/autoupdates/AutoUpdateScheduler;->maybeScheduleAutoUpdates()Z

    .line 296
    :goto_1
    invoke-virtual {p0}, Lcom/oculus/horizon/main/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 297
    new-instance v2, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-direct {v2, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 301
    sget v3, Lcom/oculus/horizon/R$id;->content_frame:I

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 302
    invoke-virtual {v2}, Lcom/oculus/horizon/navigation/FragmentNavigator;->noBackStack()Lcom/oculus/horizon/navigation/FragmentNavigator;

    .line 305
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/main/MainActivity;->isTopLevelFragment(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    invoke-virtual {v2}, Lcom/oculus/horizon/navigation/FragmentNavigator;->makeTopLevel()Lcom/oculus/horizon/navigation/FragmentNavigator;

    .line 309
    :cond_1
    invoke-virtual {v2, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 310
    return-void

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-virtual {v0}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newDefaultFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_1
.end method

.method private updateTitleBarIcon()V
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/oculus/horizon/main/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->content_frame:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 160
    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/main/MainActivity;->isTopLevelFragment(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/main/BottomNavHelper;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mTitleBarHelper:Lcom/oculus/horizon/main/TitleBarHelper;

    sget-object v1, Lcom/oculus/horizon/main/TitleBarHelper$TitleBarIcon;->PROFILE:Lcom/oculus/horizon/main/TitleBarHelper$TitleBarIcon;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/main/TitleBarHelper;->setLeftIcon(Lcom/oculus/horizon/main/TitleBarHelper$TitleBarIcon;)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/main/BottomNavHelper;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mTitleBarHelper:Lcom/oculus/horizon/main/TitleBarHelper;

    sget-object v1, Lcom/oculus/horizon/main/TitleBarHelper$TitleBarIcon;->BACK_BUTTON:Lcom/oculus/horizon/main/TitleBarHelper$TitleBarIcon;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/main/TitleBarHelper;->setLeftIcon(Lcom/oculus/horizon/main/TitleBarHelper$TitleBarIcon;)V

    goto :goto_0
.end method


# virtual methods
.method public getBottomNavHelper()Lcom/oculus/horizon/main/BottomNavHelper;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    return-object v0
.end method

.method public getReactDelegate()Lcom/oculus/horizon/react/OculusReactDelegate;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mReactDelegate:Lcom/oculus/horizon/react/OculusReactDelegate;

    return-object v0
.end method

.method public getTitleBarHelper()Lcom/oculus/horizon/main/TitleBarHelper;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mTitleBarHelper:Lcom/oculus/horizon/main/TitleBarHelper;

    return-object v0
.end method

.method isTopLevelFragment(Landroidx/fragment/app/Fragment;)Z
    .locals 1

    .prologue
    .line 354
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    instance-of v0, p1, Lcom/oculus/horizon/events/EventsFragment;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    if-eqz v0, :cond_1

    .line 357
    :cond_0
    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    .line 359
    :cond_1
    instance-of v0, p1, Lcom/oculus/horizon/main/SometimesTopLevelFragment;

    if-eqz v0, :cond_2

    .line 360
    check-cast p1, Lcom/oculus/horizon/main/SometimesTopLevelFragment;

    .line 361
    invoke-interface {p1}, Lcom/oculus/horizon/main/SometimesTopLevelFragment;->isTopLevelFragment()Z

    move-result v0

    goto :goto_0

    .line 363
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/main/MainActivity;->isTopLevelFragment(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onAttachedToWindow()V

    .line 193
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mQuickPromotionHelper:Lcom/oculus/horizon/main/MainActivityQuickPromotionHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/main/MainActivityQuickPromotionHelper;->showPromotions()V

    .line 194
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/oculus/horizon/main/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->content_frame:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 127
    if-nez v1, :cond_1

    .line 128
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "extra_fragment_arg_back_finishes"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/oculus/horizon/main/MainActivity;->finish()V

    goto :goto_0

    .line 138
    :cond_2
    instance-of v0, v1, Lcom/oculus/horizon/common/BackPressListener;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/oculus/horizon/common/BackPressListener;

    invoke-interface {v0}, Lcom/oculus/horizon/common/BackPressListener;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->isDefaultFragment(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    invoke-virtual {p0}, Lcom/oculus/horizon/main/MainActivity;->finish()V

    goto :goto_0

    .line 147
    :cond_4
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/main/MainActivity;->isTopLevelFragment(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 148
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 149
    invoke-direct {p0}, Lcom/oculus/horizon/main/MainActivity;->updateTitleBarIcon()V

    goto :goto_0

    .line 151
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0, v0}, Lcom/oculus/horizon/main/MainActivity;->setup(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {p0, p0}, Lcom/oculus/horizon/main/MainActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/main/MainActivity;)V

    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/style/StyleManager;->getStyleTheme()Lcom/oculus/model/StyleTheme;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/style/StyleManager;->getStyleThemeResourceIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/main/MainActivity;->setTheme(I)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/main/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/main/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/main/MainActivity$2;-><init>(Lcom/oculus/horizon/main/MainActivity;)V

    .line 91
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 99
    sget v0, Lcom/oculus/horizon/R$layout;->main_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/main/MainActivity;->setContentView(I)V

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/main/BottomNavHelper;->init(Landroidx/fragment/app/FragmentActivity;)V

    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mRoadblocksHelper:Lcom/oculus/horizon/main/RoadblocksHelper;

    iget-object v1, p0, Lcom/oculus/horizon/main/MainActivity;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/main/RoadblocksHelper;->bindActivity(Landroidx/fragment/app/FragmentActivity;Lcom/oculus/horizon/api/ApiRequestManager;)V

    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mTitleBarHelper:Lcom/oculus/horizon/main/TitleBarHelper;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/main/TitleBarHelper;->bindMainActivity(Lcom/oculus/horizon/main/MainActivity;)V

    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mQuickPromotionHelper:Lcom/oculus/horizon/main/MainActivityQuickPromotionHelper;

    iget-object v1, p0, Lcom/oculus/horizon/main/MainActivity;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/main/MainActivityQuickPromotionHelper;->bindMainActivity(Lcom/oculus/horizon/main/MainActivity;Lcom/oculus/horizon/main/BottomNavHelper;)V

    .line 106
    if-eqz p1, :cond_1

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/main/MainActivity;->setup(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->destroy()V

    .line 243
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mTitleBarHelper:Lcom/oculus/horizon/main/TitleBarHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/main/TitleBarHelper;->destroy()V

    .line 244
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/main/BottomNavHelper;->destroy()V

    .line 245
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mQuickPromotionHelper:Lcom/oculus/horizon/main/MainActivityQuickPromotionHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/main/MainActivityQuickPromotionHelper;->destroy()V

    .line 246
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 247
    return-void
.end method

.method public onFragmentResume(Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 198
    instance-of v0, p1, Lcom/oculus/horizon/events/EventsFragment;

    if-eqz v0, :cond_1

    .line 199
    sget-object v0, Lcom/oculus/horizon/mainnavigation/NavItem;->EVENTS:Lcom/oculus/horizon/mainnavigation/NavItem;

    sget v1, Lcom/oculus/horizon/R$string;->nav_events:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/oculus/horizon/main/MainActivity;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    instance-of v0, p1, Lcom/oculus/horizon/events/SubscribedEventsFragment;

    if-eqz v0, :cond_2

    .line 201
    sget-object v0, Lcom/oculus/horizon/mainnavigation/NavItem;->EVENTS:Lcom/oculus/horizon/mainnavigation/NavItem;

    sget v1, Lcom/oculus/horizon/R$string;->events_subscribed_title:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/oculus/horizon/main/MainActivity;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V

    goto :goto_0

    .line 202
    :cond_2
    instance-of v0, p1, Lcom/oculus/horizon/events/EventDetailsFragment;

    if-eqz v0, :cond_3

    .line 203
    sget-object v0, Lcom/oculus/horizon/mainnavigation/NavItem;->EVENTS:Lcom/oculus/horizon/mainnavigation/NavItem;

    sget v1, Lcom/oculus/horizon/R$string;->events_event_details_title:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/oculus/horizon/main/MainActivity;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V

    goto :goto_0

    .line 204
    :cond_3
    instance-of v0, p1, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    if-eqz v0, :cond_4

    .line 205
    sget-object v0, Lcom/oculus/horizon/mainnavigation/NavItem;->NOTIFICATIONS:Lcom/oculus/horizon/mainnavigation/NavItem;

    sget v1, Lcom/oculus/horizon/R$string;->notifications_feed_name_main:I

    .line 206
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {p0, v0, v1, v2}, Lcom/oculus/horizon/main/MainActivity;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V

    goto :goto_0

    .line 207
    :cond_4
    instance-of v0, p1, Lcom/oculus/horizon/events/IndividualEventsFragment;

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/oculus/horizon/mainnavigation/NavItem;->NOTIFICATIONS:Lcom/oculus/horizon/mainnavigation/NavItem;

    sget v1, Lcom/oculus/horizon/R$string;->events_individual_events_title:I

    .line 209
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {p0, v0, v1, v2}, Lcom/oculus/horizon/main/MainActivity;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 119
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0, p1}, Lcom/oculus/horizon/main/MainActivity;->setup(Landroid/content/Intent;)V

    .line 122
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 376
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 381
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 378
    :pswitch_0
    invoke-virtual {p0}, Lcom/oculus/horizon/main/MainActivity;->onBackPressed()V

    .line 379
    const/4 v0, 0x1

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 234
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/main/MainActivity;->overridePendingTransition(II)V

    .line 235
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->pause()V

    .line 236
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mQuickPromotionHelper:Lcom/oculus/horizon/main/MainActivityQuickPromotionHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/main/MainActivityQuickPromotionHelper;->pause()V

    .line 237
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 238
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    .line 182
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPostResume()V

    .line 183
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->refresh()Lbolts/Task;

    .line 184
    invoke-virtual {p0}, Lcom/oculus/horizon/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_skip_roadblocks"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mRoadblocksHelper:Lcom/oculus/horizon/main/RoadblocksHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/main/RoadblocksHelper;->checkRoadblocks()V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/main/BottomNavHelper;->postResume()V

    .line 188
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 216
    if-eqz p1, :cond_0

    .line 217
    const-string v0, "key_cached_promotion"

    .line 218
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/oculus/horizon/main/MainActivity;->mQuickPromotionHelper:Lcom/oculus/horizon/main/MainActivityQuickPromotionHelper;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/main/MainActivityQuickPromotionHelper;->restoreCachedQuickPromotions([Landroid/os/Parcelable;)V

    .line 222
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 175
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->resume()V

    .line 176
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/main/BottomNavHelper;->resume()V

    .line 177
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mQuickPromotionHelper:Lcom/oculus/horizon/main/MainActivityQuickPromotionHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/main/MainActivityQuickPromotionHelper;->resume()V

    .line 178
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 226
    const-string v0, "key_cached_promotion"

    iget-object v1, p0, Lcom/oculus/horizon/main/MainActivity;->mQuickPromotionHelper:Lcom/oculus/horizon/main/MainActivityQuickPromotionHelper;

    .line 228
    invoke-virtual {v1}, Lcom/oculus/horizon/main/MainActivityQuickPromotionHelper;->getDisplayedPromotions()[Lcom/oculus/horizon/promotion/CachedPromotion;

    move-result-object v1

    .line 226
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 229
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 230
    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .prologue
    .line 419
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTitle(I)V

    .line 420
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mTitleBarHelper:Lcom/oculus/horizon/main/TitleBarHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/main/TitleBarHelper;->setTitleBarExpanded(Z)V

    .line 421
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mTitleBarHelper:Lcom/oculus/horizon/main/TitleBarHelper;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/main/TitleBarHelper;->setTitle(I)V

    .line 422
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 412
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mTitleBarHelper:Lcom/oculus/horizon/main/TitleBarHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/main/TitleBarHelper;->setTitleBarExpanded(Z)V

    .line 414
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mTitleBarHelper:Lcom/oculus/horizon/main/TitleBarHelper;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/main/TitleBarHelper;->setTitle(Ljava/lang/CharSequence;)V

    .line 415
    return-void
.end method

.method public showPrivacyRoadblock()V
    .locals 6

    .prologue
    .line 313
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mRoadblocksHelper:Lcom/oculus/horizon/main/RoadblocksHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/oculus/horizon/roadblock/model/Roadblock;

    const/4 v2, 0x0

    new-instance v3, Lcom/oculus/horizon/roadblock/model/Roadblock;

    sget-object v4, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->ACTIVITY_PRIVACY_UPDATE:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/oculus/horizon/roadblock/model/Roadblock;-><init>(Lcom/oculus/horizon/roadblock/model/Roadblock$Type;Landroid/os/Bundle;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/main/RoadblocksHelper;->showRoadblocks([Lcom/oculus/horizon/roadblock/model/Roadblock;)V

    .line 315
    return-void
.end method

.method public updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;IZ)V
    .locals 1

    .prologue
    .line 271
    if-eqz p2, :cond_0

    .line 272
    invoke-virtual {p0, p2}, Lcom/oculus/horizon/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/oculus/horizon/main/MainActivity;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V

    .line 273
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 252
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/main/BottomNavHelper;->selectItem(Lcom/oculus/horizon/mainnavigation/NavItem;)V

    .line 253
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mTitleBarHelper:Lcom/oculus/horizon/main/TitleBarHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/main/TitleBarHelper;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mTitleBarHelper:Lcom/oculus/horizon/main/TitleBarHelper;

    invoke-virtual {v0, p2}, Lcom/oculus/horizon/main/TitleBarHelper;->setTitle(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivity;->mTitleBarHelper:Lcom/oculus/horizon/main/TitleBarHelper;

    invoke-virtual {v0, p3}, Lcom/oculus/horizon/main/TitleBarHelper;->setHideOnScroll(Z)V

    .line 256
    invoke-direct {p0}, Lcom/oculus/horizon/main/MainActivity;->updateTitleBarIcon()V

    .line 257
    return-void
.end method
