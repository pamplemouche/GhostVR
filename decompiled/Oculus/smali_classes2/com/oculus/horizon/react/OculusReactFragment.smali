.class public Lcom/oculus/horizon/react/OculusReactFragment;
.super Landroidx/fragment/app/Fragment;
.source "OculusReactFragment.java"

# interfaces
.implements Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;
.implements Lcom/oculus/horizon/common/BackPressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/react/OculusReactFragment$RCTViewEventEmitter;
    }
.end annotation


# instance fields
.field private mBackIconId:I

.field private mContentView:Landroid/widget/FrameLayout;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mErrorView:Landroid/view/View;

.field private mHasErrored:Z

.field private mHorizonReactExceptionManager:Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mIsInitialMount:Z

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mMenuTitle:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mReactInstanceEventListener:Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mReactNativeHost:Lcom/oculus/horizon/react/HorizonReactNativeHost;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mReactRootView:Lcom/facebook/react/ReactRootView;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mTitle:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/react/OculusReactFragment;)V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/react/OculusReactFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/react/OculusReactFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/react/OculusReactFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/react/OculusReactFragment;)V
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lcom/oculus/horizon/react/HorizonReactNativeHost;->$ul_$xXXcom_oculus_horizon_react_HorizonReactNativeHost$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/react/HorizonReactNativeHost;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/react/OculusReactFragment;->mReactNativeHost:Lcom/oculus/horizon/react/HorizonReactNativeHost;

    invoke-static {p0}, Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager;->$ul_$xXXcom_oculus_horizon_react_modules_HorizonReactExceptionManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/react/OculusReactFragment;->mHorizonReactExceptionManager:Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mIsInitialMount:Z

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mHasErrored:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/react/OculusReactFragment;)Lcom/facebook/react/ReactInstanceManager;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/react/OculusReactFragment;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mIsInitialMount:Z

    return v0
.end method

.method static synthetic access$102(Lcom/oculus/horizon/react/OculusReactFragment;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mIsInitialMount:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oculus/horizon/react/OculusReactFragment;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->showReactRootView()V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/react/OculusReactFragment;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->removeReactInstanceEventListener()V

    return-void
.end method

.method private addReactInstanceEventListener()V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/oculus/horizon/react/OculusReactFragment$2;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/react/OculusReactFragment$2;-><init>(Lcom/oculus/horizon/react/OculusReactFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactInstanceEventListener:Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;

    .line 132
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactInstanceEventListener:Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManager;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;)V

    .line 133
    return-void
.end method

.method private getIconResId(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 225
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 229
    :goto_1
    return v0

    .line 225
    :pswitch_0
    const-string v2, "cancel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    .line 227
    :pswitch_1
    sget v0, Lcom/oculus/horizon/R$drawable;->ic_action_close:I

    goto :goto_1

    .line 225
    :pswitch_data_0
    .packed-switch -0x5185d186
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private getInstanceManager()Lcom/facebook/react/ReactInstanceManager;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactNativeHost:Lcom/oculus/horizon/react/HorizonReactNativeHost;

    invoke-virtual {v0}, Lcom/oculus/horizon/react/HorizonReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    return-object v0
.end method

.method private removeReactInstanceEventListener()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactInstanceEventListener:Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactInstanceEventListener:Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManager;->removeReactInstanceEventListener(Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;)V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactInstanceEventListener:Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;

    .line 140
    :cond_0
    return-void
.end method

.method private removeViewsAndShowError()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mContentView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactRootView:Lcom/facebook/react/ReactRootView;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mContentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactRootView:Lcom/facebook/react/ReactRootView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactRootView:Lcom/facebook/react/ReactRootView;

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mErrorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private sendMenuSelectedToJS()V
    .locals 3

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mHasErrored:Z

    if-eqz v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    const-class v1, Lcom/oculus/horizon/react/OculusReactFragment$RCTViewEventEmitter;

    .line 288
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/react/OculusReactFragment$RCTViewEventEmitter;

    const-string v1, "didTapRightBarButton"

    .line 289
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getReactTag()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oculus/horizon/react/OculusReactFragment$RCTViewEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private showReactRootView()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mContentView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mContentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mContentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactRootView:Lcom/facebook/react/ReactRootView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private startApp()V
    .locals 5

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactRootView:Lcom/facebook/react/ReactRootView;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactNativeHost:Lcom/oculus/horizon/react/HorizonReactNativeHost;

    invoke-virtual {v0}, Lcom/oculus/horizon/react/HorizonReactNativeHost;->hasStartedLoadingReactBridge()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->addReactInstanceEventListener()V

    .line 114
    :goto_1
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARGUMENT_APP_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "ARGUMENT_ROUTE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 117
    iget-object v2, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactRootView:Lcom/facebook/react/ReactRootView;

    .line 118
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string v4, "params"

    .line 120
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 117
    :goto_2
    invoke-virtual {v2, v3, v1, v0}, Lcom/facebook/react/ReactRootView;->startReactApplication(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->showReactRootView()V

    goto :goto_1

    .line 120
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateBackIcon()V
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 221
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iget v1, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mBackIconId:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 222
    return-void
.end method

.method private updateTitle()V
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    return-void
.end method


# virtual methods
.method public getReactTag()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactRootView:Lcom/facebook/react/ReactRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactRootView:Lcom/facebook/react/ReactRootView;

    invoke-virtual {v0}, Lcom/facebook/react/ReactRootView;->getRootViewTag()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleException(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mHasErrored:Z

    .line 313
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->removeViewsAndShowError()V

    .line 314
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mHasErrored:Z

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->onBackPressed()V

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/react/OculusReactFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/react/OculusReactFragment;)V

    .line 59
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mHorizonReactExceptionManager:Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager;->addExceptionHandler(Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;)V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 67
    sget v0, Lcom/oculus/horizon/react/R$layout;->react_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mContentView:Landroid/widget/FrameLayout;

    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mContentView:Landroid/widget/FrameLayout;

    sget v1, Lcom/oculus/horizon/react/R$id;->progressBar:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mContentView:Landroid/widget/FrameLayout;

    sget v1, Lcom/oculus/horizon/react/R$id;->errorView:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mErrorView:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactRootView:Lcom/facebook/react/ReactRootView;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/facebook/react/ReactRootView;

    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/ReactRootView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactRootView:Lcom/facebook/react/ReactRootView;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactRootView:Lcom/facebook/react/ReactRootView;

    new-instance v1, Lcom/oculus/horizon/react/OculusReactFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/react/OculusReactFragment$1;-><init>(Lcom/oculus/horizon/react/OculusReactFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactRootView;->setEventListener(Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;)V

    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mContentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 191
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->removeReactInstanceEventListener()V

    .line 192
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactRootView:Lcom/facebook/react/ReactRootView;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactRootView:Lcom/facebook/react/ReactRootView;

    invoke-virtual {v0}, Lcom/facebook/react/ReactRootView;->unmountReactApplication()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactRootView:Lcom/facebook/react/ReactRootView;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactNativeHost:Lcom/oculus/horizon/react/HorizonReactNativeHost;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/react/HorizonReactNativeHost;->onDestroyFragment(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactNativeHost:Lcom/oculus/horizon/react/HorizonReactNativeHost;

    .line 197
    invoke-virtual {v0}, Lcom/oculus/horizon/react/HorizonReactNativeHost;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mHasErrored:Z

    if-nez v0, :cond_1

    .line 199
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManager;->onHostDestroy(Landroid/app/Activity;)V

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mHorizonReactExceptionManager:Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/react/modules/HorizonReactExceptionManager;->removeExceptionHandler(Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;)V

    .line 202
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->removeReactInstanceEventListener()V

    .line 179
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactRootView:Lcom/facebook/react/ReactRootView;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mContentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactRootView:Lcom/facebook/react/ReactRootView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 182
    :cond_0
    iput-object v2, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mContentView:Landroid/widget/FrameLayout;

    .line 183
    iput-object v2, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 184
    iput-object v2, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mErrorView:Landroid/view/View;

    .line 185
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 186
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 275
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->sendMenuSelectedToJS()V

    .line 279
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 169
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactNativeHost:Lcom/oculus/horizon/react/HorizonReactNativeHost;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/react/HorizonReactNativeHost;->onPauseFragment(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactNativeHost:Lcom/oculus/horizon/react/HorizonReactNativeHost;

    invoke-virtual {v0}, Lcom/oculus/horizon/react/HorizonReactNativeHost;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mHasErrored:Z

    if-nez v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManager;->onHostPause(Landroid/app/Activity;)V

    .line 172
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 259
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 260
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mMenuTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_1

    .line 266
    iget-object v1, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mMenuTitle:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 270
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 152
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 153
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mReactNativeHost:Lcom/oculus/horizon/react/HorizonReactNativeHost;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/react/HorizonReactNativeHost;->onResumeFragment(Landroidx/fragment/app/Fragment;)V

    .line 154
    iget-boolean v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mHasErrored:Z

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/react/OculusReactDelegateProvider;

    invoke-interface {v0}, Lcom/oculus/horizon/react/OculusReactDelegateProvider;->getReactDelegate()Lcom/oculus/horizon/react/OculusReactDelegate;

    move-result-object v0

    .line 157
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oculus/horizon/react/OculusReactDelegate;->getBackButtonHandler()Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/react/ReactInstanceManager;->onHostResume(Landroid/app/Activity;Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;)V

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->updateBackIcon()V

    .line 162
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->updateTitle()V

    .line 163
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->updateMenu()V

    .line 164
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mHasErrored:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->removeViewsAndShowError()V

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mIsInitialMount:Z

    if-eqz v0, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->startApp()V

    goto :goto_0

    .line 96
    :cond_1
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->showReactRootView()V

    goto :goto_0
.end method

.method public setLeftAction(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .prologue
    .line 214
    const-string v0, "icon"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "icon"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    :goto_0
    invoke-direct {p0, v0}, Lcom/oculus/horizon/react/OculusReactFragment;->getIconResId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mBackIconId:I

    .line 216
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->updateBackIcon()V

    .line 217
    return-void

    .line 214
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setPrimaryButtonTitle(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .prologue
    .line 234
    const-string v0, "title"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "title"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mMenuTitle:Ljava/lang/String;

    .line 235
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->updateMenu()V

    .line 236
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mTitle:Ljava/lang/String;

    .line 240
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->updateTitle()V

    .line 241
    return-void
.end method

.method protected updateMenu()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mMenuTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment;->mMenuTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/react/OculusReactFragment;->setHasOptionsMenu(Z)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/react/OculusReactFragment;->setHasOptionsMenu(Z)V

    .line 254
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    goto :goto_0
.end method
