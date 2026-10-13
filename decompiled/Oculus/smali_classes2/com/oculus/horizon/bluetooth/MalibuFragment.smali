.class public Lcom/oculus/horizon/bluetooth/MalibuFragment;
.super Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;
.source "MalibuFragment.java"

# interfaces
.implements Lcom/oculus/horizon/bluetooth/MalibuPresenter$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/bluetooth/MalibuFragment$Listener;
    }
.end annotation


# instance fields
.field private mActionButton:Landroid/widget/Button;

.field private mDescription:Landroid/widget/TextView;

.field private mImage:Landroid/widget/ImageView;

.field mPresenter:Lcom/oculus/horizon/bluetooth/MalibuPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mProgressPanel:Landroid/view/View;

.field private mProgressText:Landroid/widget/TextView;

.field private mSkip:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field mVRResources:Lcom/oculus/horizon/samsung/VRResources;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/MalibuFragment;)V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/MalibuFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/bluetooth/MalibuFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/MalibuFragment;)V
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lcom/oculus/horizon/bluetooth/MalibuPresenter;->$ul_$xXXcom_oculus_horizon_bluetooth_MalibuPresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    invoke-static {p0}, Lcom/oculus/horizon/samsung/VRResources;->$ul_$xXXcom_oculus_horizon_samsung_VRResources$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/samsung/VRResources;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mVRResources:Lcom/oculus/horizon/samsung/VRResources;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;-><init>()V

    return-void
.end method

.method private getListener()Lcom/oculus/horizon/bluetooth/MalibuFragment$Listener;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 190
    instance-of v1, v0, Lcom/oculus/horizon/bluetooth/MalibuFragment$Listener;

    if-eqz v1, :cond_0

    .line 191
    check-cast v0, Lcom/oculus/horizon/bluetooth/MalibuFragment$Listener;

    .line 193
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Z)Landroidx/fragment/app/Fragment;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/oculus/horizon/bluetooth/MalibuFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/bluetooth/MalibuFragment;-><init>()V

    .line 43
    invoke-static {p0}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->createArguments(Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    return-object v0
.end method

.method private updateUI(Lcom/oculus/horizon/bluetooth/MalibuPresenter$State;)V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 202
    sget-object v2, Lcom/oculus/horizon/bluetooth/MalibuFragment$3;->$SwitchMap$com$oculus$horizon$bluetooth$MalibuPresenter$State:[I

    invoke-virtual {p1}, Lcom/oculus/horizon/bluetooth/MalibuPresenter$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 248
    :goto_0
    return-void

    .line 204
    :pswitch_0
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mVRResources:Lcom/oculus/horizon/samsung/VRResources;

    sget v4, Lcom/oculus/horizon/R$drawable;->bluetooth_malibu:I

    invoke-virtual {v3, v4}, Lcom/oculus/horizon/samsung/VRResources;->getIdentifier(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mTitle:Landroid/widget/TextView;

    sget v3, Lcom/oculus/horizon/R$string;->bluetooth_malibu_bt_off_title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mDescription:Landroid/widget/TextView;

    sget v3, Lcom/oculus/horizon/R$string;->bluetooth_malibu_bt_off_desc:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 209
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 210
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mActionButton:Landroid/widget/Button;

    sget v3, Lcom/oculus/horizon/R$string;->bluetooth_enable:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 211
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mSkip:Landroid/view/View;

    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->isFromNux()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mProgressPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 211
    goto :goto_1

    .line 215
    :pswitch_1
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mVRResources:Lcom/oculus/horizon/samsung/VRResources;

    sget v4, Lcom/oculus/horizon/R$drawable;->bluetooth_malibu_home:I

    invoke-virtual {v3, v4}, Lcom/oculus/horizon/samsung/VRResources;->getIdentifier(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mTitle:Landroid/widget/TextView;

    sget v3, Lcom/oculus/horizon/R$string;->bluetooth_malibu_discover_title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 218
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mDescription:Landroid/widget/TextView;

    sget v3, Lcom/oculus/horizon/R$string;->bluetooth_malibu_discover_desc:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 220
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mActionButton:Landroid/widget/Button;

    sget v2, Lcom/oculus/horizon/R$string;->bluetooth_pair:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 222
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mSkip:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mProgressPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 226
    :pswitch_2
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mVRResources:Lcom/oculus/horizon/samsung/VRResources;

    sget v4, Lcom/oculus/horizon/R$drawable;->bluetooth_malibu:I

    invoke-virtual {v3, v4}, Lcom/oculus/horizon/samsung/VRResources;->getIdentifier(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mTitle:Landroid/widget/TextView;

    sget v3, Lcom/oculus/horizon/R$string;->bluetooth_malibu_discover_title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 229
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mDescription:Landroid/widget/TextView;

    sget v3, Lcom/oculus/horizon/R$string;->bluetooth_malibu_scanning_desc:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 231
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 232
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mSkip:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mProgressPanel:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mProgressText:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_discovering_malibu:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 237
    :pswitch_3
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mVRResources:Lcom/oculus/horizon/samsung/VRResources;

    sget v4, Lcom/oculus/horizon/R$drawable;->bluetooth_malibu_home:I

    invoke-virtual {v3, v4}, Lcom/oculus/horizon/samsung/VRResources;->getIdentifier(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mTitle:Landroid/widget/TextView;

    sget v3, Lcom/oculus/horizon/R$string;->bluetooth_malibu_bonding_title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 240
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mDescription:Landroid/widget/TextView;

    sget v3, Lcom/oculus/horizon/R$string;->bluetooth_malibu_bonding_desc:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 242
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 243
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mSkip:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mProgressPanel:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mProgressText:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_bonding:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->BLUETOOTH_MALIBU:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onComplete(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 296
    sget v0, Lcom/oculus/horizon/R$string;->bluetooth_toast_bonded:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    .line 297
    invoke-virtual {v2}, Lcom/oculus/horizon/bluetooth/MalibuPresenter;->getBondedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 300
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->getListener()Lcom/oculus/horizon/bluetooth/MalibuFragment$Listener;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_0

    .line 302
    invoke-interface {v0, p1}, Lcom/oculus/horizon/bluetooth/MalibuFragment$Listener;->onPairComplete(Landroid/bluetooth/BluetoothDevice;)V

    .line 304
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
    invoke-super {p0, p1}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/MalibuFragment;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->setHasOptionsMenu(Z)V

    .line 68
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 147
    sget v0, Lcom/oculus/horizon/R$menu;->bluetooth_malibu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 148
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
    .line 73
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->getThemedInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->bluetooth_malibu_fragment:I

    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mImage:Landroid/widget/ImageView;

    .line 134
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mTitle:Landroid/widget/TextView;

    .line 135
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mDescription:Landroid/widget/TextView;

    .line 136
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mSkip:Landroid/view/View;

    .line 137
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mProgressPanel:Landroid/view/View;

    .line 138
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mProgressText:Landroid/widget/TextView;

    .line 139
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mActionButton:Landroid/widget/Button;

    .line 141
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onDestroyView()V

    .line 142
    return-void
.end method

.method public onError(Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 270
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 271
    sget-object v1, Lcom/oculus/horizon/bluetooth/MalibuFragment$3;->$SwitchMap$com$oculus$horizon$bluetooth$MalibuPresenter$Reason:[I

    invoke-virtual {p1}, Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 284
    :goto_0
    return-void

    .line 273
    :pswitch_0
    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_toast_not_found:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 277
    :pswitch_1
    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_toast_bond_error:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    .line 279
    invoke-virtual {v3}, Lcom/oculus/horizon/bluetooth/MalibuPresenter;->getBondingDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 278
    invoke-virtual {p0, v1, v2}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMalibuBondStateChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 259
    const/16 v0, 0xc

    if-ne v0, p2, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 262
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->bluetooth_toast_bonded:I

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 266
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 173
    sget v1, Lcom/oculus/horizon/R$id;->bluetooth_malibu_skip:I

    if-ne v1, v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/MalibuPresenter;->skip()V

    .line 175
    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/MalibuPresenter;->onPause()V

    .line 128
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onPause()V

    .line 129
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 153
    sget v0, Lcom/oculus/horizon/R$id;->bluetooth_malibu_skip:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    invoke-virtual {v1}, Lcom/oculus/horizon/bluetooth/MalibuPresenter;->getState()Lcom/oculus/horizon/bluetooth/MalibuPresenter$State;

    move-result-object v1

    .line 156
    sget-object v2, Lcom/oculus/horizon/bluetooth/MalibuFragment$3;->$SwitchMap$com$oculus$horizon$bluetooth$MalibuPresenter$State:[I

    invoke-virtual {v1}, Lcom/oculus/horizon/bluetooth/MalibuPresenter$State;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 158
    :pswitch_0
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->isFromNux()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 161
    :pswitch_1
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->isFromNux()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 165
    :pswitch_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 184
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/oculus/horizon/bluetooth/MalibuPresenter;->onRequestPermissionResult(Landroid/content/Context;I[Ljava/lang/String;[I)V

    .line 185
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onResume()V

    .line 121
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_malibu_title:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/MalibuPresenter;->onResume()V

    .line 123
    return-void
.end method

.method public onSkip()V
    .locals 1

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->getListener()Lcom/oculus/horizon/bluetooth/MalibuFragment$Listener;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_0

    .line 290
    invoke-interface {v0}, Lcom/oculus/horizon/bluetooth/MalibuFragment$Listener;->onPairSkip()V

    .line 292
    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/oculus/horizon/bluetooth/MalibuPresenter$State;Lcom/oculus/horizon/bluetooth/MalibuPresenter$State;)V
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 253
    invoke-direct {p0, p1}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->updateUI(Lcom/oculus/horizon/bluetooth/MalibuPresenter$State;)V

    .line 254
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/bluetooth/MalibuPresenter;->setView(Lcom/oculus/horizon/bluetooth/MalibuPresenter$View;)V

    .line 82
    sget v0, Lcom/oculus/horizon/R$id;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mImage:Landroid/widget/ImageView;

    .line 83
    sget v0, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mTitle:Landroid/widget/TextView;

    .line 84
    sget v0, Lcom/oculus/horizon/R$id;->description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mDescription:Landroid/widget/TextView;

    .line 86
    sget v0, Lcom/oculus/horizon/R$id;->skip_pairing:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mSkip:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mSkip:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/bluetooth/MalibuFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/bluetooth/MalibuFragment$1;-><init>(Lcom/oculus/horizon/bluetooth/MalibuFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    sget v0, Lcom/oculus/horizon/R$id;->progress_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mProgressPanel:Landroid/view/View;

    .line 96
    sget v0, Lcom/oculus/horizon/R$id;->progress_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mProgressText:Landroid/widget/TextView;

    .line 98
    sget v0, Lcom/oculus/horizon/R$id;->action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mActionButton:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mActionButton:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/horizon/bluetooth/MalibuFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/bluetooth/MalibuFragment$2;-><init>(Lcom/oculus/horizon/bluetooth/MalibuFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method
