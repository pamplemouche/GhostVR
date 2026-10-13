.class public Lcom/oculus/horizon/livestreaming/PartyCallActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PartyCallActivity.java"


# instance fields
.field private mUser:Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private processIntent()V
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/PartyCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 54
    const-string v0, "show_nux"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 56
    const-string v0, "dismiss_notification_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 57
    if-lez v3, :cond_0

    .line 58
    const-string v0, "notification"

    .line 59
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/livestreaming/PartyCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 60
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 63
    :cond_0
    if-eqz v2, :cond_1

    .line 64
    invoke-direct {p0, v1}, Lcom/oculus/horizon/livestreaming/PartyCallActivity;->showNux(Landroid/os/Bundle;)V

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string v0, "user"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallActivity;->mUser:Landroid/os/Parcelable;

    .line 67
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/PartyCallActivity;->showCall()V

    goto :goto_0
.end method

.method private setStatusBarTransparent()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/16 v1, 0x400

    .line 74
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/PartyCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 79
    return-void
.end method

.method private showCall()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    const-string v1, "user"

    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/PartyCallActivity;->mUser:Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    new-instance v1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;-><init>()V

    .line 93
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v3, v3}, Lcom/oculus/horizon/livestreaming/PartyCallActivity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 96
    return-void
.end method

.method private showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/PartyCallActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 101
    sget v1, Lcom/oculus/horizon/R$id;->content:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 102
    if-eqz p3, :cond_1

    .line 103
    if-eqz p4, :cond_0

    .line 104
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 106
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 108
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 109
    return-void
.end method

.method private showNux(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;-><init>()V

    .line 83
    invoke-virtual {v0, p1}, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->setArguments(Landroid/os/Bundle;)V

    .line 85
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/oculus/horizon/livestreaming/PartyCallActivity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 86
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/PartyCallActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 114
    const/4 v0, 0x0

    .line 115
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 116
    instance-of v3, v0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    if-eqz v3, :cond_1

    .line 117
    check-cast v0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->onBackPressed()Z

    move-result v0

    .line 118
    if-eqz v0, :cond_2

    .line 124
    :goto_1
    if-nez v0, :cond_0

    .line 125
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 127
    :cond_0
    return-void

    :cond_1
    move v0, v1

    :cond_2
    move v1, v0

    .line 122
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/PartyCallActivity;->setStatusBarTransparent()V

    .line 40
    :cond_0
    sget v0, Lcom/oculus/horizon/R$layout;->party_call_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/livestreaming/PartyCallActivity;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/PartyCallActivity;->processIntent()V

    .line 43
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/livestreaming/PartyCallActivity;->setIntent(Landroid/content/Intent;)V

    .line 49
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/PartyCallActivity;->processIntent()V

    .line 50
    return-void
.end method
