.class public Lcom/oculus/horizon/modal/AlertDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/modal/AlertDialogFragment$OnCancelListener;,
        Lcom/oculus/horizon/modal/AlertDialogFragment$OnClickListener;,
        Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;
    }
.end annotation


# instance fields
.field private mNegativeOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

.field private mPositiveOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 180
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/modal/AlertDialogFragment$1;-><init>(Lcom/oculus/horizon/modal/AlertDialogFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/modal/AlertDialogFragment;->mOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/modal/AlertDialogFragment;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/oculus/horizon/modal/AlertDialogFragment;->setOnPositiveClickListener(Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/modal/AlertDialogFragment;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/oculus/horizon/modal/AlertDialogFragment;->setOnNegativeClickListener(Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/modal/AlertDialogFragment;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/oculus/horizon/modal/AlertDialogFragment;->getTarget(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/modal/AlertDialogFragment;)Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/modal/AlertDialogFragment;->mPositiveOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/modal/AlertDialogFragment;)Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/modal/AlertDialogFragment;->mNegativeOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    return-object v0
.end method

.method private getTarget(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/oculus/horizon/modal/AlertDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-object v0

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/modal/AlertDialogFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/horizon/modal/AlertDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setOnNegativeClickListener(Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)V
    .locals 0
    .param p1    # Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 255
    iput-object p1, p0, Lcom/oculus/horizon/modal/AlertDialogFragment;->mNegativeOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    .line 256
    return-void
.end method

.method private setOnPositiveClickListener(Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)V
    .locals 0
    .param p1    # Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 251
    iput-object p1, p0, Lcom/oculus/horizon/modal/AlertDialogFragment;->mPositiveOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    .line 252
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 223
    const-class v0, Lcom/oculus/horizon/modal/AlertDialogFragment$OnCancelListener;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/modal/AlertDialogFragment;->getTarget(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/modal/AlertDialogFragment$OnCancelListener;

    .line 224
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/oculus/horizon/modal/AlertDialogFragment;->getTargetRequestCode()I

    move-result v1

    .line 226
    invoke-interface {v0, p0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$OnCancelListener;->onCancel(Lcom/oculus/horizon/modal/AlertDialogFragment;I)V

    .line 228
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/oculus/horizon/modal/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 207
    const-string v1, "extra_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    const-string v2, "extra_message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    const-string v3, "extra_positive_button"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    const-string v4, "extra_negative_button"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v4, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/modal/AlertDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    invoke-virtual {v4, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v1

    .line 214
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/modal/AlertDialogFragment;->mOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    .line 215
    invoke-virtual {v1, v3, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/modal/AlertDialogFragment;->mOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    .line 216
    invoke-virtual {v1, v0, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    return-object v0
.end method
