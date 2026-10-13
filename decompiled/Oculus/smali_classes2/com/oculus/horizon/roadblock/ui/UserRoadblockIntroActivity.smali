.class public Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "UserRoadblockIntroActivity.java"


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;)V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;)V
    .locals 1

    .prologue
    .line 23
    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;

    sput-object v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private finishRoadblockActivity()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oculus/horizon/main/StartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->finish()V

    .line 100
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 86
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 87
    const/16 v0, 0x1388

    if-ne p1, v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->edit()Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setPinSet(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->apply()V

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->finishRoadblockActivity()V

    .line 93
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 38
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-static {p0, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;)V

    invoke-static {p0, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;)V

    .line 43
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "roadblockType"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 44
    if-eqz v5, :cond_0

    move v0, v3

    :goto_0
    const-string v1, "Attempt to start a roadblock without a type"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 47
    sget v0, Lcom/oculus/horizon/R$layout;->roadblock_user_intro_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->setContentView(I)V

    .line 49
    sget v0, Lcom/oculus/horizon/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 50
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 52
    sget v1, Lcom/oculus/horizon/R$id;->secondary_title:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 53
    sget v2, Lcom/oculus/horizon/R$id;->description:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 57
    packed-switch v5, :pswitch_data_0

    .line 69
    sget-object v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->TAG:Ljava/lang/Class;

    const-string v1, "Unknown roadblock type [%s]"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :goto_1
    return-void

    :cond_0
    move v0, v4

    .line 44
    goto :goto_0

    .line 59
    :pswitch_0
    sget v3, Lcom/oculus/horizon/R$string;->roadblock_title_pin:I

    invoke-virtual {p0, v3}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->setTitle(I)V

    .line 60
    sget v3, Lcom/oculus/horizon/R$string;->roadblock_title_pin:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 62
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    sget v0, Lcom/oculus/horizon/R$string;->roadblock_system_update_description_pin:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const/16 v1, 0x1388

    .line 73
    sget v2, Lcom/oculus/horizon/R$id;->continue_button:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 74
    new-instance v3, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity$1;-><init>(Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;Landroid/content/Intent;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->ROADBLOCK_INTRO:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportView(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    goto :goto_1

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
