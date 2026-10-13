.class public abstract Lcom/oculus/horizon/base/OculusBaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "OculusBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/base/OculusBaseFragment$OnResumeListener;
    }
.end annotation


# instance fields
.field private mActiveStartTimeMs:J

.field mChromecastHelper:Lcom/facebook/inject/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/oculus/horizon/chromecast/ChromecastHelper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mClock:Lcom/oculus/time/Clock;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mContextThemeWrapper:Landroid/view/ContextThemeWrapper;

.field private mDelayedCallOnViewVisible:Z

.field private mIsViewDestroyed:Z

.field mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOnResumeListener:Lcom/oculus/horizon/base/OculusBaseFragment$OnResumeListener;

.field private mStateSaved:Z


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/base/OculusBaseFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/base/OculusBaseFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lcom/oculus/horizon/chromecast/ChromecastHelper;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_horizon_chromecast_ChromecastHelper$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/base/OculusBaseFragment;->mChromecastHelper:Lcom/facebook/inject/Lazy;

    invoke-static {p0}, Lcom/oculus/time/Clock;->$ul_$xXXcom_oculus_time_Clock$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/time/Clock;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/base/OculusBaseFragment;->mClock:Lcom/oculus/time/Clock;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/base/OculusBaseFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mContextThemeWrapper:Landroid/view/ContextThemeWrapper;

    if-nez v0, :cond_0

    .line 232
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mContextThemeWrapper:Landroid/view/ContextThemeWrapper;

    goto :goto_0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mContextThemeWrapper:Landroid/view/ContextThemeWrapper;

    if-nez v0, :cond_0

    .line 240
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_0
.end method

.method public getStateSaved()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mStateSaved:Z

    return v0
.end method

.method protected abstract getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public isViewDestroyed()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mIsViewDestroyed:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mStateSaved:Z

    .line 76
    invoke-virtual {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->shouldShowChromecast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mChromecastHelper:Lcom/facebook/inject/Lazy;

    .line 78
    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/chromecast/ChromecastHelper;

    .line 79
    invoke-virtual {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/chromecast/ChromecastHelper;->setAdditionalInformation(Landroid/app/Activity;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 82
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->shouldShowChromecast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mChromecastHelper:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/chromecast/ChromecastHelper;

    invoke-virtual {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/oculus/horizon/chromecast/ChromecastHelper;->onActivityResult(Landroid/app/Activity;II)V

    .line 90
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 121
    instance-of v0, p1, Lcom/oculus/horizon/base/OculusBaseFragment$OnResumeListener;

    if-eqz v0, :cond_0

    .line 122
    check-cast p1, Lcom/oculus/horizon/base/OculusBaseFragment$OnResumeListener;

    iput-object p1, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mOnResumeListener:Lcom/oculus/horizon/base/OculusBaseFragment$OnResumeListener;

    .line 124
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/base/OculusBaseFragment;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mStateSaved:Z

    .line 68
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->shouldShowChromecast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mChromecastHelper:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/chromecast/ChromecastHelper;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/horizon/chromecast/ChromecastHelper;->addChromecastToMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 99
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 100
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 105
    invoke-virtual {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->shouldShowChromecast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mChromecastHelper:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/chromecast/ChromecastHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/chromecast/ChromecastHelper;->stopMediaRouterCallback()V

    .line 108
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mIsViewDestroyed:Z

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mDelayedCallOnViewVisible:Z

    .line 114
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 115
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mOnResumeListener:Lcom/oculus/horizon/base/OculusBaseFragment$OnResumeListener;

    .line 130
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 161
    invoke-virtual {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->reportViewEnd()V

    .line 162
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 143
    iput-boolean v2, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mStateSaved:Z

    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mClock:Lcom/oculus/time/Clock;

    invoke-virtual {v0}, Lcom/oculus/time/Clock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mActiveStartTimeMs:J

    .line 146
    invoke-virtual {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->shouldReportViewInOnResume()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->reportView()V

    .line 149
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mDelayedCallOnViewVisible:Z

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewVisibleInViewPager()V

    .line 151
    iput-boolean v2, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mDelayedCallOnViewVisible:Z

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mOnResumeListener:Lcom/oculus/horizon/base/OculusBaseFragment$OnResumeListener;

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mOnResumeListener:Lcom/oculus/horizon/base/OculusBaseFragment$OnResumeListener;

    invoke-interface {v0, p0}, Lcom/oculus/horizon/base/OculusBaseFragment$OnResumeListener;->onFragmentResume(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    .line 156
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mStateSaved:Z

    .line 175
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mStateSaved:Z

    .line 137
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mStateSaved:Z

    .line 169
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mIsViewDestroyed:Z

    .line 60
    return-void
.end method

.method protected onViewVisibleInViewPager()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method protected reportView()V
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportView(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 183
    :cond_0
    return-void
.end method

.method protected reportViewEnd()V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v0

    .line 188
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/base/OculusBaseFragment;->reportViewEndInternal(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 189
    return-void
.end method

.method protected final reportViewEndInternal(Lcom/oculus/horizon/logging/TrackingViews$View;)V
    .locals 6
    .param p1    # Lcom/oculus/horizon/logging/TrackingViews$View;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mClock:Lcom/oculus/time/Clock;

    invoke-virtual {v1}, Lcom/oculus/time/Clock;->now()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mActiveStartTimeMs:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, p1, v2, v3}, Lcom/oculus/horizon/logging/OculusLogger;->reportViewEnd(Lcom/oculus/horizon/logging/TrackingViews$View;J)V

    .line 195
    :cond_0
    return-void
.end method

.method public setTheme(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 252
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mContextThemeWrapper:Landroid/view/ContextThemeWrapper;

    .line 253
    return-void
.end method

.method public final setUserVisibleHint(Z)V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewVisibleInViewPager()V

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mDelayedCallOnViewVisible:Z

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iput-boolean p1, p0, Lcom/oculus/horizon/base/OculusBaseFragment;->mDelayedCallOnViewVisible:Z

    goto :goto_0
.end method

.method protected shouldReportViewInOnResume()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldShowChromecast()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method
