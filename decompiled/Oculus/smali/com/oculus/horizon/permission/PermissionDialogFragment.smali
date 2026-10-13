.class public Lcom/oculus/horizon/permission/PermissionDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "PermissionDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;
    }
.end annotation


# instance fields
.field private mDeferOnRequestPermissionsResultToOnResume:Z

.field private mDialog:Landroid/app/Dialog;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mIsNavigatingToSettings:Z

.field private mMessage:Ljava/lang/String;

.field private mPermission:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 99
    iput-boolean v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mIsNavigatingToSettings:Z

    .line 102
    iput-boolean v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mDeferOnRequestPermissionsResultToOnResume:Z

    return-void
.end method

.method static synthetic access$002(Lcom/oculus/horizon/permission/PermissionDialogFragment;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mIsNavigatingToSettings:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oculus/horizon/permission/PermissionDialogFragment;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->requestPermission()V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/permission/PermissionDialogFragment;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->dismiss(I)V

    return-void
.end method

.method private checkAndRequestPermission()I
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mPermission:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 175
    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->requestPermission()V

    .line 179
    :cond_0
    return v0
.end method

.method private dismiss(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 188
    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 192
    :cond_0
    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->getTargetRequestCode()I

    move-result v1

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mPermission:Ljava/lang/String;

    aput-object v3, v2, v4

    new-array v3, v5, [I

    aput p1, v3, v4

    .line 193
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->dismiss()V

    .line 198
    return-void
.end method

.method private onCreateExplanationDialog(Z)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 209
    new-instance v1, Lcom/oculus/horizon/permission/PermissionDialogFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$1;-><init>(Lcom/oculus/horizon/permission/PermissionDialogFragment;Z)V

    .line 233
    new-instance v2, Lcom/oculus/horizon/permission/PermissionDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/permission/PermissionDialogFragment$2;-><init>(Lcom/oculus/horizon/permission/PermissionDialogFragment;)V

    .line 240
    if-eqz p1, :cond_0

    sget v0, Lcom/oculus/horizon/R$string;->common_ok:I

    .line 241
    :goto_0
    new-instance v3, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mTitle:Ljava/lang/String;

    .line 242
    invoke-virtual {v3, v4}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mMessage:Ljava/lang/String;

    .line 243
    invoke-virtual {v3, v4}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v3

    .line 244
    invoke-virtual {v3, v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v3, Lcom/oculus/horizon/R$string;->common_cancel:I

    .line 245
    invoke-virtual {v0, v3, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setNegativeButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    return-object v0

    .line 240
    :cond_0
    sget v0, Lcom/oculus/horizon/R$string;->common_retry:I

    goto :goto_0
.end method

.method private requestPermission()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 183
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mPermission:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0, v3}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 184
    return-void
.end method

.method private showDialog(Landroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 204
    :cond_0
    iput-object p1, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mDialog:Landroid/app/Dialog;

    .line 205
    iget-object v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 206
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->setShowsDialog(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 111
    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid arguments: null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    const-string v1, "permission"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mPermission:Ljava/lang/String;

    .line 116
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mTitle:Ljava/lang/String;

    .line 117
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mMessage:Ljava/lang/String;

    .line 119
    invoke-direct {p0}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->checkAndRequestPermission()I

    move-result v0

    if-nez v0, :cond_1

    .line 120
    invoke-direct {p0, v2}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->dismiss(I)V

    .line 122
    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 159
    packed-switch p1, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 161
    :pswitch_0
    array-length v2, p3

    if-lez v2, :cond_0

    aget v2, p3, v1

    if-nez v2, :cond_0

    .line 162
    iput-boolean v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mDeferOnRequestPermissionsResultToOnResume:Z

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mPermission:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    :goto_1
    invoke-direct {p0, v0}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->onCreateExplanationDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 166
    goto :goto_1

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 135
    iget-boolean v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mIsNavigatingToSettings:Z

    if-eqz v0, :cond_0

    .line 136
    iput-boolean v1, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mIsNavigatingToSettings:Z

    .line 137
    invoke-direct {p0}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->checkAndRequestPermission()I

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->dismiss(I)V

    .line 142
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mDeferOnRequestPermissionsResultToOnResume:Z

    if-eqz v0, :cond_1

    .line 143
    iput-boolean v1, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mDeferOnRequestPermissionsResultToOnResume:Z

    .line 144
    invoke-direct {p0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->dismiss(I)V

    .line 146
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 127
    iget-object v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 130
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 153
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    .line 154
    return-void
.end method
