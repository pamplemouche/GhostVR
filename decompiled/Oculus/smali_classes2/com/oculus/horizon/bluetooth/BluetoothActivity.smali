.class public Lcom/oculus/horizon/bluetooth/BluetoothActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BluetoothActivity.java"

# interfaces
.implements Lcom/oculus/horizon/bluetooth/TutorialFragment$Listener;


# static fields
.field static final ACTION_BLUETOOTH_SETTINGS:Ljava/lang/String;


# instance fields
.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mBluetoothFragmentFactory:Lcom/oculus/horizon/bluetooth/BluetoothFragmentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/BluetoothActivity;)V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/BluetoothActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/bluetooth/BluetoothActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/BluetoothActivity;)V
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/oculus/horizon/bluetooth/BluetoothFragmentFactory;->$ul_$xXXcom_oculus_horizon_bluetooth_BluetoothFragmentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/bluetooth/BluetoothFragmentFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->mBluetoothFragmentFactory:Lcom/oculus/horizon/bluetooth/BluetoothFragmentFactory;

    invoke-static {p0}, Lcom/oculus/android/AndroidModule;->$ul_$xXXandroid_bluetooth_BluetoothAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oculus/common/build/BuildConstants;->PACKAGE_NAME_HORIZON:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".settings.BLUETOOTH_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->ACTION_BLUETOOTH_SETTINGS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initializeFragments()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "device_address"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_1

    .line 86
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 89
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$id;->content_frame:I

    .line 92
    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->newInstance(Landroid/bluetooth/BluetoothDevice;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 101
    :goto_1
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$id;->content_frame:I

    iget-object v3, p0, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->mBluetoothFragmentFactory:Lcom/oculus/horizon/bluetooth/BluetoothFragmentFactory;

    .line 99
    invoke-virtual {v3}, Lcom/oculus/horizon/bluetooth/BluetoothFragmentFactory;->newBluetoothSettingsFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static newStartIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->ACTION_BLUETOOTH_SETTINGS:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    sget-object v1, Lcom/oculus/common/build/BuildConstants;->PACKAGE_NAME_HORIZON:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v1, "device_address"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    return-object v0
.end method


# virtual methods
.method public onComplete()Z
    .locals 4

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->content_frame:I

    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->mBluetoothFragmentFactory:Lcom/oculus/horizon/bluetooth/BluetoothFragmentFactory;

    .line 72
    invoke-virtual {v2}, Lcom/oculus/horizon/bluetooth/BluetoothFragmentFactory;->newBluetoothSettingsFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-static {p0, p0}, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/BluetoothActivity;)V

    .line 44
    sget v0, Lcom/oculus/horizon/R$layout;->bluetooth_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->setContentView(I)V

    .line 46
    sget v0, Lcom/oculus/horizon/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 47
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 49
    if-eqz p1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->initializeFragments()V

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTitle(I)V

    .line 65
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 66
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method
