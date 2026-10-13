.class public Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "InstallPermissionsActivity.java"

# interfaces
.implements Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;
.implements Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter$View;


# instance fields
.field private mAcceptButton:Landroid/widget/Button;

.field private mHeader:Landroid/widget/TextView;

.field mInstallPermissionsPresenterProvider:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenterProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;)V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;)V
    .locals 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;->$ul_$xXXcom_oculus_horizon_appmanager_ui_InstallPermissionsPresenterProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenterProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->mInstallPermissionsPresenterProvider:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenterProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;)Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->mHeader:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->mAcceptButton:Landroid/widget/Button;

    return-object v0
.end method

.method public static newStartIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "install_permissions_models cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    const-string v1, "install_permissions_models"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 38
    const-string v1, "extra_item_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    return-object v0
.end method

.method public static shouldRequestPermissions(I)Z
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;->shouldRequestPermissions(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public finishWithResult(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 182
    const-string v1, "install_permissions_models"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, p1, v0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->setResult(ILandroid/content/Intent;)V

    .line 184
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->finish()V

    .line 185
    return-void
.end method

.method public onBundleInstallPermissionsModelClick(Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;->onInstallPermissionsModelClick(Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;)V

    .line 194
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {p0, p0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;)V

    .line 67
    sget v0, Lcom/oculus/horizon/R$layout;->install_permissions_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    const-string v1, "install_permissions_models"

    .line 71
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 72
    const-string v2, "extra_item_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v2, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->mInstallPermissionsPresenterProvider:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenterProvider;

    invoke-virtual {v2, v1, v0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenterProvider;->get(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;

    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;->setView(Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter$View;)V

    .line 77
    sget v0, Lcom/oculus/horizon/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 78
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 79
    sget v0, Lcom/oculus/horizon/R$string;->appmanager_permissions_install_app_permissions:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->setTitle(I)V

    .line 80
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity$1;-><init>(Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;)V

    .line 81
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 97
    sget v0, Lcom/oculus/horizon/R$id;->header:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->mHeader:Landroid/widget/TextView;

    .line 99
    sget v0, Lcom/oculus/horizon/R$id;->accept_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->mAcceptButton:Landroid/widget/Button;

    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->mAcceptButton:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity$2;-><init>(Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    if-eqz p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;->init()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$menu;->common_close:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 125
    const v1, 0x102002c

    if-ne v1, v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->onBackPressed()V

    .line 131
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 127
    :cond_1
    sget v1, Lcom/oculus/horizon/R$id;->action_close:I

    if-ne v1, v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->finish()V

    .line 129
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTitle(I)V

    .line 143
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 144
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public showAppPermissions(Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;Z)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->mHeader:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->mAcceptButton:Landroid/widget/Button;

    sget v1, Lcom/oculus/horizon/R$string;->appmanager_permissions_install_accept:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 153
    iget-object v0, p1, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;->permissions:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;->newInstance(Ljava/util/ArrayList;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$id;->content_frame:I

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 157
    if-eqz p2, :cond_0

    .line 158
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 161
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 162
    return-void
.end method

.method public showBundlePermissions(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 167
    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->mHeader:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->mAcceptButton:Landroid/widget/Button;

    sget v1, Lcom/oculus/horizon/R$string;->appmanager_permissions_install_accept_all:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 175
    invoke-static {p1}, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment;->newInstance(Ljava/util/ArrayList;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$id;->content_frame:I

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 177
    return-void

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->mHeader:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
