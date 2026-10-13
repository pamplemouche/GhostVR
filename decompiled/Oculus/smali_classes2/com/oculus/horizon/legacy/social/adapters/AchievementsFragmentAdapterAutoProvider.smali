.class public Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapterAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "AchievementsFragmentAdapterAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;
    .locals 6

    .prologue
    .line 18
    const-string v0, "getMethod_com.oculus.horizon.legacy.social.adapters.AchievementsFragmentAdapter"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 20
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

    .line 21
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/SocialManager;->$ul_$xXXcom_oculus_horizon_legacy_social_SocialManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/SocialManager;

    move-result-object v2

    .line 22
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/view/SocialViewHolderFactory;->$ul_$xXXcom_oculus_horizon_legacy_social_view_SocialViewHolderFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/view/SocialViewHolderFactory;

    move-result-object v3

    .line 23
    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v4

    .line 24
    invoke-static {p0}, Lcom/oculus/horizon/navigation/NavigationModule;->$ul_$xXXcom_oculus_horizon_navigation_IntentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/navigation/IntentFactory;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;-><init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/legacy/social/view/SocialViewHolderFactory;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/navigation/IntentFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapterAutoProvider;->get()Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

    move-result-object v0

    return-object v0
.end method
