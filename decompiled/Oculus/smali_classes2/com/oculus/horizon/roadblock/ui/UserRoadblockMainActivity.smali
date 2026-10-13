.class public Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "UserRoadblockMainActivity.java"

# interfaces
.implements Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment$OnRoadblockCompletedListener;


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
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mRoadblocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/roadblock/model/Roadblock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;)V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;)V
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;

    sput-object v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private displayRoadblock()V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->mRoadblocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->finishRoadblockActivity()V

    .line 125
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->mRoadblocks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/roadblock/model/Roadblock;

    .line 123
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 124
    invoke-direct {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->setupFragment(Lcom/oculus/horizon/roadblock/model/Roadblock;)V

    goto :goto_0
.end method

.method private finishRoadblockActivity()V
    .locals 2

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oculus/horizon/main/StartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 184
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->finish()V

    .line 185
    return-void
.end method

.method private removeRoadblockByType(Lcom/oculus/horizon/roadblock/model/Roadblock$Type;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->mRoadblocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 107
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/roadblock/model/Roadblock;

    .line 109
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oculus/horizon/roadblock/model/Roadblock;->roadblockType:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 113
    :cond_1
    return-void
.end method

.method private setupFragment(Lcom/oculus/horizon/roadblock/model/Roadblock;)V
    .locals 5

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 130
    sget-object v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity$1;->$SwitchMap$com$oculus$horizon$roadblock$model$Roadblock$Type:[I

    iget-object v2, p1, Lcom/oculus/horizon/roadblock/model/Roadblock;->roadblockType:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    invoke-virtual {v2}, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot launch roadblock for [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/oculus/horizon/roadblock/model/Roadblock;->roadblockType:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    aput-object v4, v2, v3

    .line 169
    invoke-static {v1, v2}, Lcom/facebook/common/string/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :pswitch_0
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;

    .line 133
    sget-object v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->TAG:Ljava/lang/Class;

    const-string v3, "Displaying social find friend fragment"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 175
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/oculus/horizon/roadblock/model/Roadblock;->arguments:Landroid/os/Bundle;

    invoke-static {p0, v0, v2}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;

    .line 176
    invoke-virtual {v0, p1}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->setRoadblock(Lcom/oculus/horizon/roadblock/model/Roadblock;)V

    .line 177
    sget v2, Lcom/oculus/horizon/R$id;->content_frame:I

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 178
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p1, Lcom/oculus/horizon/roadblock/model/Roadblock;->roadblockType:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    invoke-virtual {v1}, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportRoadblockShown(Ljava/lang/String;)V

    .line 179
    return-void

    .line 136
    :pswitch_1
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;

    .line 137
    sget-object v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->TAG:Ljava/lang/Class;

    const-string v3, "Displaying force upgrade fragment"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :pswitch_2
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodsFragment;

    .line 141
    sget-object v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->TAG:Ljava/lang/Class;

    const-string v3, "Displaying payment methods fragment"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :pswitch_3
    const-class v0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;

    .line 145
    sget-object v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->TAG:Ljava/lang/Class;

    const-string v3, "Displaying profile picture fragment"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :pswitch_4
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockProfileIntroFragment;

    .line 149
    sget-object v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->TAG:Ljava/lang/Class;

    const-string v3, "Displaying the intro to profiles fragment"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :pswitch_5
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;

    .line 153
    sget-object v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->TAG:Ljava/lang/Class;

    const-string v3, "Displaying privacy settings fragment"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :pswitch_6
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;

    .line 157
    sget-object v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->TAG:Ljava/lang/Class;

    const-string v3, "Displaying activity privacy update fragment"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :pswitch_7
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMalibuFragment;

    .line 161
    sget-object v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->TAG:Ljava/lang/Class;

    const-string v3, "Displaying controller fragment"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :pswitch_8
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWFragment;

    .line 165
    sget-object v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->TAG:Ljava/lang/Class;

    const-string v3, "Displaying hsw fragment"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private setupToolbar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 75
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 77
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->content_frame:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 82
    if-nez v1, :cond_1

    .line 83
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    instance-of v0, v1, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;

    .line 87
    invoke-virtual {v0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->shouldDisableBackButton()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    :cond_2
    instance-of v0, v1, Lcom/oculus/horizon/common/BackPressListener;

    if-eqz v0, :cond_3

    check-cast v1, Lcom/oculus/horizon/common/BackPressListener;

    invoke-interface {v1}, Lcom/oculus/horizon/common/BackPressListener;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    :cond_3
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {p0, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;)V

    .line 55
    if-eqz p1, :cond_1

    .line 57
    const-string v0, "roadblocks"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->mRoadblocks:Ljava/util/List;

    .line 62
    :goto_0
    sget v0, Lcom/oculus/horizon/R$layout;->user_roadblock_main_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->setContentView(I)V

    .line 64
    sget v0, Lcom/oculus/horizon/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->setupToolbar(Landroidx/appcompat/widget/Toolbar;)V

    .line 68
    if-nez p1, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->displayRoadblock()V

    .line 71
    :cond_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "roadblocks"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->mRoadblocks:Ljava/util/List;

    goto :goto_0
.end method

.method public onRoadblockCompleted(Lcom/oculus/horizon/roadblock/model/Roadblock;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p1, Lcom/oculus/horizon/roadblock/model/Roadblock;->roadblockType:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    invoke-virtual {v1}, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportRoadblockFinishedEvent(Ljava/lang/String;)V

    .line 99
    iget-object v0, p1, Lcom/oculus/horizon/roadblock/model/Roadblock;->roadblockType:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->removeRoadblockByType(Lcom/oculus/horizon/roadblock/model/Roadblock$Type;)V

    .line 100
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->displayRoadblock()V

    .line 101
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 45
    const-string v0, "roadblocks"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->mRoadblocks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 47
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTitle(I)V

    .line 196
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 197
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    return-void
.end method
