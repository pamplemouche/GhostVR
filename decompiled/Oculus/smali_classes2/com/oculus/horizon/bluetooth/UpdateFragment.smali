.class public Lcom/oculus/horizon/bluetooth/UpdateFragment;
.super Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;
.source "UpdateFragment.java"

# interfaces
.implements Lcom/oculus/horizon/bluetooth/UpdatePresenter$View;
.implements Lcom/oculus/horizon/modal/AlertDialogFragment$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/bluetooth/UpdateFragment$Listener;
    }
.end annotation


# instance fields
.field private mActionButton:Landroid/widget/Button;

.field private mDescription:Landroid/widget/TextView;

.field mPresenter:Lcom/oculus/horizon/bluetooth/UpdatePresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mProgressPanel:Landroid/view/View;

.field private mProgressText:Landroid/widget/TextView;

.field private mProgressValue:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field mVRResources:Lcom/oculus/horizon/samsung/VRResources;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/UpdateFragment;)V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/UpdateFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/bluetooth/UpdateFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/UpdateFragment;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->$ul_$xXXcom_oculus_horizon_bluetooth_UpdatePresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    invoke-static {p0}, Lcom/oculus/horizon/samsung/VRResources;->$ul_$xXXcom_oculus_horizon_samsung_VRResources$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/samsung/VRResources;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mVRResources:Lcom/oculus/horizon/samsung/VRResources;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/bluetooth/BluetoothDevice;Z)Landroidx/fragment/app/Fragment;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcom/oculus/horizon/bluetooth/UpdateFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 39
    const-string v2, "skippable"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method

.method public static newInstance(Landroid/bluetooth/BluetoothDevice;ZLjava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 4

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->newInstance(Landroid/bluetooth/BluetoothDevice;Z)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 53
    const-string v3, "checkUpdate"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    const-string v0, "deviceVersion"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "updateVersion"

    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 62
    return-object v1

    .line 53
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private showAction(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 227
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mActionButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 229
    return-void
.end method

.method private showIndeterminateProgress(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 232
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mProgressPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 234
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mProgressValue:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    return-void
.end method

.method private showProgress(II)V
    .locals 5
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 238
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mProgressPanel:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 240
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mProgressValue:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mProgressValue:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_update_updating_progress_value:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    return-void
.end method


# virtual methods
.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    .prologue
    .line 246
    return-object p0
.end method

.method public getListener()Lcom/oculus/horizon/bluetooth/UpdateFragment$Listener;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 214
    instance-of v1, v0, Lcom/oculus/horizon/bluetooth/UpdateFragment$Listener;

    if-eqz v1, :cond_0

    .line 215
    check-cast v0, Lcom/oculus/horizon/bluetooth/UpdateFragment$Listener;

    .line 223
    :goto_0
    return-object v0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 219
    instance-of v1, v0, Lcom/oculus/horizon/bluetooth/UpdateFragment$Listener;

    if-eqz v1, :cond_1

    .line 220
    check-cast v0, Lcom/oculus/horizon/bluetooth/UpdateFragment$Listener;

    goto :goto_0

    .line 223
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getListener()Lcom/oculus/horizon/bluetooth/UpdatePresenter$Listener;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->getListener()Lcom/oculus/horizon/bluetooth/UpdateFragment$Listener;

    move-result-object v0

    return-object v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->BLUETOOTH_UPDATE:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCanceled()V
    .locals 3

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_toast_update_canceled:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 314
    return-void
.end method

.method public onClick(Lcom/oculus/horizon/modal/AlertDialogFragment;II)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->onClick(Lcom/oculus/horizon/modal/AlertDialogFragment;II)V

    .line 68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/UpdateFragment;)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->setHasOptionsMenu(Z)V

    .line 90
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 163
    sget v0, Lcom/oculus/horizon/R$menu;->bluetooth_update:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 164
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->setView(Lcom/oculus/horizon/bluetooth/UpdatePresenter$View;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->getThemedInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->bluetooth_malibu_fragment:I

    const/4 v2, 0x0

    .line 97
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mTitle:Landroid/widget/TextView;

    .line 152
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mDescription:Landroid/widget/TextView;

    .line 153
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mProgressPanel:Landroid/view/View;

    .line 154
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mProgressText:Landroid/widget/TextView;

    .line 155
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mProgressValue:Landroid/widget/TextView;

    .line 156
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mActionButton:Landroid/widget/Button;

    .line 157
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onDestroyView()V

    .line 158
    return-void
.end method

.method public onError(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 318
    const/4 v0, 0x0

    .line 319
    packed-switch p1, :pswitch_data_0

    .line 328
    :goto_0
    if-nez v0, :cond_0

    .line 333
    :goto_1
    return-void

    .line 321
    :pswitch_0
    sget v0, Lcom/oculus/horizon/R$string;->bluetooth_toast_connect_error:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 324
    :pswitch_1
    sget v0, Lcom/oculus/horizon/R$string;->bluetooth_toast_update_failed:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 194
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 195
    sget v2, Lcom/oculus/horizon/R$id;->skip:I

    if-ne v2, v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    invoke-virtual {v1}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->skip()V

    .line 203
    :goto_0
    return v0

    .line 199
    :cond_0
    sget v2, Lcom/oculus/horizon/R$id;->cancel:I

    if-ne v2, v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    invoke-virtual {v1}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->stopUpdate()V

    goto :goto_0

    .line 203
    :cond_1
    invoke-super {p0, p1}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->onPause()V

    .line 146
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onPause()V

    .line 147
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    invoke-super {p0, p1}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 170
    sget v0, Lcom/oculus/horizon/R$id;->skip:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 171
    sget v1, Lcom/oculus/horizon/R$id;->cancel:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 172
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    invoke-virtual {v2}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 183
    :pswitch_0
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 184
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    invoke-virtual {v1}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->isSkippable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 190
    :cond_0
    return-void

    .line 174
    :pswitch_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 175
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 179
    :pswitch_2
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 180
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onResume()V

    .line 138
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_update_title:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 140
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->onResume()V

    .line 141
    return-void
.end method

.method public onStateChanged(II)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 256
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 258
    packed-switch p1, :pswitch_data_0

    .line 308
    :goto_0
    return-void

    .line 260
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_update_ready_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 261
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mDescription:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_update_ready_description:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mProgressPanel:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 263
    sget v0, Lcom/oculus/horizon/R$string;->bluetooth_update_ready_action:I

    invoke-direct {p0, v0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->showAction(I)V

    goto :goto_0

    .line 266
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_update_checking_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 267
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mDescription:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_update_checking_description:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 268
    sget v0, Lcom/oculus/horizon/R$string;->bluetooth_update_checking_progress:I

    invoke-direct {p0, v0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->showIndeterminateProgress(I)V

    .line 269
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 272
    :pswitch_2
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_update_not_available_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 273
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mDescription:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_update_not_available_description:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 274
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mProgressPanel:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 275
    sget v0, Lcom/oculus/horizon/R$string;->common_done:I

    invoke-direct {p0, v0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->showAction(I)V

    goto :goto_0

    .line 278
    :pswitch_3
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_update_available_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 279
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mDescription:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_update_available_description:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    .line 282
    invoke-virtual {v3}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->getDeviceVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    .line 283
    invoke-virtual {v3}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->getUpdateVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 280
    invoke-virtual {p0, v1, v2}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mProgressPanel:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 285
    sget v0, Lcom/oculus/horizon/R$string;->bluetooth_update_available_action:I

    invoke-direct {p0, v0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->showAction(I)V

    goto :goto_0

    .line 288
    :pswitch_4
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_update_downloading_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 289
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mDescription:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_update_downloading_description:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 290
    sget v0, Lcom/oculus/horizon/R$string;->bluetooth_update_downloading_progress:I

    invoke-direct {p0, p2, v0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->showProgress(II)V

    .line 291
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 294
    :pswitch_5
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_update_updating_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 295
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mDescription:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_update_updating_description:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 296
    sget v0, Lcom/oculus/horizon/R$string;->bluetooth_update_updating_progress:I

    invoke-direct {p0, v0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->showIndeterminateProgress(I)V

    .line 297
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 300
    :pswitch_6
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_update_complete_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 301
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mDescription:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_update_complete_description:I

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    .line 303
    invoke-virtual {v3}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->getUpdateVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 302
    invoke-virtual {p0, v1, v2}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mProgressPanel:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 305
    sget v0, Lcom/oculus/horizon/R$string;->common_done:I

    invoke-direct {p0, v0}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->showAction(I)V

    goto/16 :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 104
    sget v0, Lcom/oculus/horizon/R$id;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 105
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mVRResources:Lcom/oculus/horizon/samsung/VRResources;

    sget v2, Lcom/oculus/horizon/R$drawable;->bluetooth_malibu:I

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/samsung/VRResources;->getIdentifier(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    sget v0, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mTitle:Landroid/widget/TextView;

    .line 107
    sget v0, Lcom/oculus/horizon/R$id;->description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mDescription:Landroid/widget/TextView;

    .line 109
    sget v0, Lcom/oculus/horizon/R$id;->progress_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mProgressPanel:Landroid/view/View;

    .line 110
    sget v0, Lcom/oculus/horizon/R$id;->progress_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mProgressText:Landroid/widget/TextView;

    .line 111
    sget v0, Lcom/oculus/horizon/R$id;->progress_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mProgressValue:Landroid/widget/TextView;

    .line 113
    sget v0, Lcom/oculus/horizon/R$id;->action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mActionButton:Landroid/widget/Button;

    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mActionButton:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/horizon/bluetooth/UpdateFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/bluetooth/UpdateFragment$1;-><init>(Lcom/oculus/horizon/bluetooth/UpdateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method
