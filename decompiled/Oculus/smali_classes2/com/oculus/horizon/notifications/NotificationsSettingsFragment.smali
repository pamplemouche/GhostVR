.class public Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "NotificationsSettingsFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDevNotificationsSettingsMethods:Lcom/oculus/horizon/notifications/DevNotificationsSettingsMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

.field private mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNotificationsSettingsMethods:Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPreferenceHeader:Landroid/view/View;

.field private mPreferencesAdapter:Lcom/oculus/horizon/notifications/adapters/DevNotificationsPreferencesAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)V
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)V
    .locals 1

    .prologue
    .line 53
    invoke-static {p0}, Lcom/oculus/horizon/api/ApiRequestManager;->$ul_$xXXcom_oculus_horizon_api_ApiRequestManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/api/ApiRequestManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-static {p0}, Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;->$ul_$xXXcom_oculus_horizon_notifications_NotificationsSettingsMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mNotificationsSettingsMethods:Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;

    invoke-static {p0}, Lcom/oculus/horizon/notifications/DevNotificationsSettingsMethods;->$ul_$xXXcom_oculus_horizon_notifications_DevNotificationsSettingsMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/notifications/DevNotificationsSettingsMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mDevNotificationsSettingsMethods:Lcom/oculus/horizon/notifications/DevNotificationsSettingsMethods;

    invoke-static {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryModule;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfig$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

    invoke-static {p0}, Lcom/oculus/errorreporting/ErrorReportingModule;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/horizon/notifications/adapters/DevNotificationsPreferencesAdapter;->$ul_$xXXcom_oculus_horizon_notifications_adapters_DevNotificationsPreferencesAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/notifications/adapters/DevNotificationsPreferencesAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mPreferencesAdapter:Lcom/oculus/horizon/notifications/adapters/DevNotificationsPreferencesAdapter;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->showOfflineModal()V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;Lcom/oculus/horizon/widget/SwitchSetting;Lcom/oculus/horizon/notifications/api/NotificationMedium;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mutateNotificationsPreference(Lcom/oculus/horizon/widget/SwitchSetting;Lcom/oculus/horizon/notifications/api/NotificationMedium;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)Lcom/oculus/errorreporting/ErrorReporter;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mPreferenceHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->newOnCheckedChangeListener(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)Lcom/oculus/horizon/notifications/adapters/DevNotificationsPreferencesAdapter;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mPreferencesAdapter:Lcom/oculus/horizon/notifications/adapters/DevNotificationsPreferencesAdapter;

    return-object v0
.end method

.method private getCurrentDevNotificationsPreferences()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mDevNotificationsSettingsMethods:Lcom/oculus/horizon/notifications/DevNotificationsSettingsMethods;

    new-instance v1, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$4;

    invoke-direct {v1, p0, p0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$4;-><init>(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/notifications/DevNotificationsSettingsMethods;->fetchDevNotificationsSettings(Lretrofit/Callback;)V

    .line 322
    return-void
.end method

.method private getCurrentNotificationsPreferences()V
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mNotificationsSettingsMethods:Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;

    new-instance v2, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$3;

    invoke-direct {v2, p0, p0, v0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$3;-><init>(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;Lcom/oculus/horizon/base/OculusBaseFragment;Landroid/view/LayoutInflater;)V

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;->fetchNotificationsSettings(Lretrofit/Callback;)V

    .line 292
    return-void
.end method

.method private mutateNotificationsPreference(Lcom/oculus/horizon/widget/SwitchSetting;Lcom/oculus/horizon/notifications/api/NotificationMedium;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mNotificationsSettingsMethods:Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;

    .line 170
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$1;

    invoke-direct {v2, p0, p1, p3, p4}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$1;-><init>(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;Lcom/oculus/horizon/widget/SwitchSetting;Ljava/lang/String;Z)V

    .line 167
    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;->mutateNotificationsPreference(Lcom/oculus/horizon/notifications/api/NotificationMedium;Ljava/lang/String;Ljava/lang/Boolean;Lretrofit/Callback;)V

    .line 191
    return-void
.end method

.method private newOnCheckedChangeListener(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;-><init>(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private showOfflineModal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 194
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/res/Resources;)V

    sget v1, Lcom/oculus/horizon/R$string;->settings_need_internet_title:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 195
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_notifications_need_internet_description:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 196
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    .line 197
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    const-string v1, "change_notifications_settings_offline_modal_fragment"

    .line 198
    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->show(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 199
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_NOTIFICATIONS:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)V

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    sget v0, Lcom/oculus/horizon/R$layout;->settings_notifications_category_preferences_fragment:I

    .line 80
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mPreferenceHeader:Landroid/view/View;

    .line 83
    sget v0, Lcom/oculus/horizon/R$layout;->settings_notifications_fragment:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->destroy()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mPreferencesAdapter:Lcom/oculus/horizon/notifications/adapters/DevNotificationsPreferencesAdapter;

    .line 140
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroy()V

    .line 141
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 128
    iput-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 129
    iput-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    .line 130
    iput-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 131
    iput-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mPreferenceHeader:Landroid/view/View;

    .line 133
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 134
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 120
    invoke-virtual {p0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_notifications:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->resume()V

    .line 123
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 90
    sget v0, Lcom/oculus/horizon/R$id;->recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 92
    sget v0, Lcom/oculus/horizon/R$id;->empty_error_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/EmptyErrorView;

    iput-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    .line 93
    sget v0, Lcom/oculus/horizon/R$id;->progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 95
    invoke-virtual {p0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->setStatusLoading()V

    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mPreferenceHeader:Landroid/view/View;

    iget-object v2, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mPreferencesAdapter:Lcom/oculus/horizon/notifications/adapters/DevNotificationsPreferencesAdapter;

    invoke-static {v1, v2}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->of(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Adapter;)Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 101
    new-instance v0, Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    invoke-virtual {p0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/util/ui/LineDividerDecoration;-><init>(Landroid/content/Context;)V

    .line 102
    iget-object v1, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 104
    invoke-direct {p0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->getCurrentNotificationsPreferences()V

    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v2, Lcom/oculus/horizon/notifications/MC$qe_oculus_horizon_notifications_dev_preferences_universe;->is_enabled:J

    invoke-interface {v0, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->getCurrentDevNotificationsPreferences()V

    .line 110
    :cond_0
    return-void
.end method

.method protected setStatusLoadFailure()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 156
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 159
    return-void
.end method

.method protected setStatusLoadSuccess()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 150
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 153
    return-void
.end method

.method protected setStatusLoading()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 144
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 147
    return-void
.end method
