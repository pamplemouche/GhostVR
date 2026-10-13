.class public Lcom/oculus/horizon/react/OculusReactActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "OculusReactActivity.java"

# interfaces
.implements Lcom/facebook/react/modules/core/PermissionAwareActivity;
.implements Lcom/oculus/horizon/react/OculusReactDelegateProvider;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPermissionListener:Lcom/facebook/react/modules/core/PermissionListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mReactDelegate:Lcom/oculus/horizon/react/OculusReactDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/oculus/horizon/react/OculusReactActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/react/OculusReactActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 22
    new-instance v0, Lcom/oculus/horizon/react/OculusReactActivity$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/react/OculusReactActivity$1;-><init>(Lcom/oculus/horizon/react/OculusReactActivity;)V

    iput-object v0, p0, Lcom/oculus/horizon/react/OculusReactActivity;->mReactDelegate:Lcom/oculus/horizon/react/OculusReactDelegate;

    return-void
.end method

.method static synthetic access$001(Lcom/oculus/horizon/react/OculusReactActivity;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method private initializeStartingFragment()V
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/react/R$id;->content_frame:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/oculus/horizon/react/OculusReactFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/react/OculusReactFragment;-><init>()V

    .line 45
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 47
    sget v2, Lcom/oculus/horizon/react/R$id;->content_frame:I

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 48
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public getReactDelegate()Lcom/oculus/horizon/react/OculusReactDelegate;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactActivity;->mReactDelegate:Lcom/oculus/horizon/react/OculusReactDelegate;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/react/R$id;->content_frame:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 77
    instance-of v1, v0, Lcom/oculus/horizon/react/OculusReactFragment;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/oculus/horizon/react/OculusReactFragment;

    .line 79
    invoke-virtual {v0}, Lcom/oculus/horizon/react/OculusReactFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 80
    :goto_0
    if-nez v0, :cond_0

    .line 81
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 83
    :cond_0
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v0, Lcom/oculus/horizon/react/R$layout;->react_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/react/OculusReactActivity;->setContentView(I)V

    .line 34
    sget v0, Lcom/oculus/horizon/react/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/react/OculusReactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 35
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/react/OculusReactActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 36
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 37
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactActivity;->initializeStartingFragment()V

    .line 38
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactActivity;->mPermissionListener:Lcom/facebook/react/modules/core/PermissionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactActivity;->mPermissionListener:Lcom/facebook/react/modules/core/PermissionListener;

    .line 63
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/react/modules/core/PermissionListener;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/react/OculusReactActivity;->mPermissionListener:Lcom/facebook/react/modules/core/PermissionListener;

    .line 66
    :cond_0
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactActivity;->onBackPressed()V

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V
    .locals 0

    .prologue
    .line 55
    iput-object p3, p0, Lcom/oculus/horizon/react/OculusReactActivity;->mPermissionListener:Lcom/facebook/react/modules/core/PermissionListener;

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/react/OculusReactActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTitle(I)V

    .line 94
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 95
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method
