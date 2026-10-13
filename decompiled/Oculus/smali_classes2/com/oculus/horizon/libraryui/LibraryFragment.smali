.class public Lcom/oculus/horizon/libraryui/LibraryFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "LibraryFragment.java"

# interfaces
.implements Lcom/oculus/horizon/mainnavigation/TopLevelFragment;
.implements Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private mAcceptedInstallPermissionsApp:Lcom/oculus/library/model/App;

.field private mClientPreferencesMethods:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mContext:Landroid/content/Context;
    .annotation build Lcom/facebook/inject/ForAppContext;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEventBusesRegistered:Z

.field private mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mLibraryEventBus:Lcom/oculus/horizon/libraryui/events/LibraryEventBus;

.field private mLibraryPagerAdapter:Lcom/oculus/horizon/libraryui/LibraryPagerAdapter;

.field mLibraryPagerAdapterProvider:Lcom/oculus/horizon/libraryui/LibraryPagerAdapterProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private mUsesNewLibraryDesign:Z

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/libraryui/LibraryFragment;)V
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/libraryui/LibraryFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/libraryui/LibraryFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/libraryui/LibraryFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/libraryui/LibraryFragment;)V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/LibraryFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/LibraryFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/LibraryFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-static {p0}, Lcom/oculus/horizon/libraryui/LibraryPagerAdapter;->$ul_$xXXcom_oculus_horizon_libraryui_LibraryPagerAdapterProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/libraryui/LibraryPagerAdapterProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/LibraryFragment;->mLibraryPagerAdapterProvider:Lcom/oculus/horizon/libraryui/LibraryPagerAdapterProvider;

    invoke-static {p0}, Lcom/oculus/errorreporting/ErrorReportingModule;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/LibraryFragment;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    invoke-static {p0}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;->$ul_$xXXcom_oculus_horizon_client$x5Fpreferences_api_ClientPreferencesMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/LibraryFragment;->mClientPreferencesMethods:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;

    invoke-static {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryModule;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfig$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/LibraryFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/oculus/horizon/libraryui/LibraryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/libraryui/LibraryFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    .line 84
    invoke-static {}, Lcom/oculus/horizon/libraryui/events/LibraryEventBus;->getInstance()Lcom/oculus/horizon/libraryui/events/LibraryEventBus;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mLibraryEventBus:Lcom/oculus/horizon/libraryui/events/LibraryEventBus;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/libraryui/LibraryFragment;)Lcom/oculus/horizon/libraryui/events/LibraryEventBus;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mLibraryEventBus:Lcom/oculus/horizon/libraryui/events/LibraryEventBus;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/libraryui/LibraryFragment;)Lcom/google/android/material/tabs/TabLayout;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/libraryui/LibraryFragment;FLjava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/widget/PopupBubble;)Lcom/oculus/horizon/widget/PopupBubble;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/horizon/libraryui/LibraryFragment;->getNUXBubble(FLjava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/widget/PopupBubble;)Lcom/oculus/horizon/widget/PopupBubble;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/oculus/horizon/libraryui/LibraryFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getBubbleCallback(Lcom/oculus/horizon/widget/PopupBubble;)Lcom/oculus/horizon/widget/PopupBubble$Callback;
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lcom/oculus/horizon/libraryui/LibraryFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/oculus/horizon/libraryui/LibraryFragment$3;-><init>(Lcom/oculus/horizon/libraryui/LibraryFragment;Lcom/oculus/horizon/widget/PopupBubble;)V

    return-object v0
.end method

.method private getBubblePosition(F)Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 225
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 226
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 227
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 228
    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 229
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 230
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method private getNUXBubble(FLjava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/widget/PopupBubble;)Lcom/oculus/horizon/widget/PopupBubble;
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/oculus/horizon/widget/PopupBubble;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 200
    new-instance v0, Lcom/oculus/horizon/widget/PopupBubble;

    .line 201
    invoke-direct {p0, p1}, Lcom/oculus/horizon/libraryui/LibraryFragment;->getBubblePosition(F)Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz p4, :cond_0

    .line 206
    invoke-direct {p0, p4}, Lcom/oculus/horizon/libraryui/LibraryFragment;->getBubbleCallback(Lcom/oculus/horizon/widget/PopupBubble;)Lcom/oculus/horizon/widget/PopupBubble$Callback;

    move-result-object v6

    :goto_0
    move-object v4, p2

    move-object v5, p3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/oculus/horizon/widget/PopupBubble;-><init>(Landroid/graphics/Point;Landroid/view/View;ZLjava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/widget/PopupBubble$Callback;Z)V

    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private hasEntitlment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v0, p1}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refetchCache()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->refetch()V

    .line 373
    return-void
.end method

.method private registerEventBuses()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mLibraryEventBus:Lcom/oculus/horizon/libraryui/events/LibraryEventBus;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/libraryui/events/LibraryEventBus;->register(Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v0, p0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->registerAppsChangeListener(Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mEventBusesRegistered:Z

    .line 260
    return-void
.end method

.method private registerNewLibraryAsSeenInClientPreferences()V
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mClientPreferencesMethods:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;

    sget-object v1, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_HAS_SEEN_NEW_LIBRARY:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    const/4 v2, 0x1

    new-instance v3, Lcom/oculus/horizon/libraryui/LibraryFragment$4;

    invoke-direct {v3, p0}, Lcom/oculus/horizon/libraryui/LibraryFragment$4;-><init>(Lcom/oculus/horizon/libraryui/LibraryFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;->mutatePreference(Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;ZLretrofit/Callback;)V

    .line 340
    return-void
.end method

.method private requestAppPermissions(Lcom/oculus/library/model/App;)V
    .locals 6

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 362
    :goto_0
    return-void

    .line 347
    :cond_0
    iget v0, p1, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    invoke-static {v0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->shouldRequestPermissions(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    iget-object v0, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->startDownload(Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_1
    new-instance v0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;

    iget-object v1, p1, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    .line 357
    invoke-static {v4}, Lcom/oculus/library/utils/PermissionsManager;->toLegacyPermissionList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p1, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 359
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 360
    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->newStartIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 361
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/libraryui/LibraryFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private showNewLibraryNux()V
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    .line 175
    new-instance v1, Lcom/oculus/horizon/libraryui/LibraryFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/libraryui/LibraryFragment$2;-><init>(Lcom/oculus/horizon/libraryui/LibraryFragment;)V

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private startDownload(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 376
    sget-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->LIBRARY:Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->newInstance(Lcom/oculus/appmanager/info/model/RequestOrigin;[Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 377
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 378
    return-void
.end method

.method private unregisterEventBuses()V
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mEventBusesRegistered:Z

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mLibraryEventBus:Lcom/oculus/horizon/libraryui/events/LibraryEventBus;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/libraryui/events/LibraryEventBus;->unregister(Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v0, p0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->unregisterAppChangeListener(Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mEventBusesRegistered:Z

    .line 268
    :cond_0
    return-void
.end method

.method private updateLibraryUI()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mLibraryPagerAdapter:Lcom/oculus/horizon/libraryui/LibraryPagerAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibraryPagerAdapter;->notifyDataSetChanged()V

    .line 369
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->LIBRARY:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/base/OculusBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 251
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 252
    invoke-virtual {p0, p2, p3}, Lcom/oculus/horizon/libraryui/LibraryFragment;->onInstallPermissionsResult(ILandroid/content/Intent;)V

    .line 254
    :cond_0
    return-void
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->updateLibraryUI()V

    .line 383
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/libraryui/LibraryFragment;)V

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->setHasOptionsMenu(Z)V

    .line 97
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 107
    sget v0, Lcom/oculus/horizon/R$layout;->library_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 241
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->unregisterEventBuses()V

    .line 242
    iput-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 243
    iput-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 244
    iput-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 245
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 246
    return-void
.end method

.method public onDisplayPermissionsEvent(Lcom/oculus/horizon/libraryui/events/DisplayPermissionsEvent;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    iget-object v1, p1, Lcom/oculus/horizon/libraryui/events/DisplayPermissionsEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-direct {p0, v0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->requestAppPermissions(Lcom/oculus/library/model/App;)V

    goto :goto_0
.end method

.method public onInstallPermissionsResult(ILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 316
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 325
    :cond_0
    return-void

    .line 319
    :cond_1
    const-string v0, "install_permissions_models"

    .line 320
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;

    .line 323
    iget-object v2, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    iget-object v0, v0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mAcceptedInstallPermissionsApp:Lcom/oculus/library/model/App;

    goto :goto_0
.end method

.method public onLaunchProductEvent(Lcom/oculus/horizon/libraryui/events/LaunchProductEvent;)V
    .locals 8
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 272
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    iget-object v1, p1, Lcom/oculus/horizon/libraryui/events/LaunchProductEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 275
    iget-wide v2, v0, Lcom/oculus/library/model/App;->versionCode:J

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    sget-object v2, Lcom/oculus/horizon/libraryui/LibraryFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to launch an app with -1 version code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    iget-object v0, p1, Lcom/oculus/horizon/libraryui/events/LaunchProductEvent;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->hasEntitlment(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 298
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    sget v0, Lcom/oculus/horizon/util/launch/LaunchModule$UL_id;->$ul_$xXXcom_oculus_horizon_util_launch_PackageLauncherUtils$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v5, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    iget-object v1, p1, Lcom/oculus/horizon/libraryui/events/LaunchProductEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;->getLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 292
    if-eqz v2, :cond_1

    .line 296
    sget v0, Lcom/oculus/horizon/util/launch/LaunchModule$UL_id;->$ul_$xXXcom_oculus_horizon_util_launch_PackageLauncherUtils$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v5, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    iget-object v3, p1, Lcom/oculus/horizon/libraryui/events/LaunchProductEvent;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/horizon/libraryui/events/LaunchProductEvent;->itemId:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;->startActivityAndLogUsage(Landroidx/fragment/app/Fragment;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 146
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 148
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/mainnavigation/NavigationUpdater;

    .line 149
    sget-object v1, Lcom/oculus/horizon/mainnavigation/NavItem;->LIBRARY:Lcom/oculus/horizon/mainnavigation/NavItem;

    sget v2, Lcom/oculus/horizon/R$string;->library_title:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/libraryui/LibraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/oculus/horizon/mainnavigation/NavigationUpdater;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V

    .line 151
    iget-boolean v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mUsesNewLibraryDesign:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v3, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasSeenNewLibrary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    sget v0, Lcom/oculus/horizon/profile/UserProfileModule$UL_id;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v3, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->edit()Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasSeenNewLibrary(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->apply()V

    .line 154
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->registerNewLibraryAsSeenInClientPreferences()V

    .line 155
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->showNewLibraryNux()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mAcceptedInstallPermissionsApp:Lcom/oculus/library/model/App;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mAcceptedInstallPermissionsApp:Lcom/oculus/library/model/App;

    .line 162
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mAcceptedInstallPermissionsApp:Lcom/oculus/library/model/App;

    .line 163
    iget-object v0, v0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->startDownload(Ljava/lang/String;)V

    .line 165
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 114
    sget v0, Lcom/oculus/horizon/R$id;->loading_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 115
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mLibraryPagerAdapterProvider:Lcom/oculus/horizon/libraryui/LibraryPagerAdapterProvider;

    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/libraryui/LibraryPagerAdapterProvider;->get(Landroidx/fragment/app/FragmentManager;)Lcom/oculus/horizon/libraryui/LibraryPagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mLibraryPagerAdapter:Lcom/oculus/horizon/libraryui/LibraryPagerAdapter;

    .line 117
    sget v0, Lcom/oculus/horizon/R$id;->view_pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 118
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mLibraryPagerAdapter:Lcom/oculus/horizon/libraryui/LibraryPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/oculus/horizon/libraryui/LibraryFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/libraryui/LibraryFragment$1;-><init>(Lcom/oculus/horizon/libraryui/LibraryFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 127
    sget v0, Lcom/oculus/horizon/R$id;->tab_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 130
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->updateLibraryUI()V

    .line 132
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->refetchCache()V

    .line 134
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->registerEventBuses()V

    .line 135
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v2, Lcom/oculus/horizon/libraryui/MC$qe_oculus_horizon_library_redesign;->enabled:J

    .line 136
    invoke-interface {v0, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment;->mUsesNewLibraryDesign:Z

    .line 137
    return-void
.end method

.method protected shouldShowChromecast()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method
