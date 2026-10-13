.class public Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/modal/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mMessage:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNegativeButtonText:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNegativeOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPositiveButtonText:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPositiveOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRequestCode:I

.field private final mResources:Landroid/content/res/Resources;

.field private mTargetFragment:Landroidx/fragment/app/Fragment;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/res/Resources;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mResources:Landroid/content/res/Resources;

    .line 54
    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/horizon/modal/AlertDialogFragment;
    .locals 4

    .prologue
    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    const-string v1, "extra_title"

    iget-object v2, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "extra_message"

    iget-object v2, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "extra_positive_button"

    iget-object v2, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mPositiveButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v1, "extra_negative_button"

    iget-object v2, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mNegativeButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v1, Lcom/oculus/horizon/modal/AlertDialogFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/modal/AlertDialogFragment;-><init>()V

    .line 143
    iget-object v2, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mTargetFragment:Landroidx/fragment/app/Fragment;

    iget v3, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mRequestCode:I

    invoke-virtual {v1, v2, v3}, Lcom/oculus/horizon/modal/AlertDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 144
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/modal/AlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mPositiveOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    invoke-static {v1, v0}, Lcom/oculus/horizon/modal/AlertDialogFragment;->access$000(Lcom/oculus/horizon/modal/AlertDialogFragment;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mNegativeOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    invoke-static {v1, v0}, Lcom/oculus/horizon/modal/AlertDialogFragment;->access$100(Lcom/oculus/horizon/modal/AlertDialogFragment;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)V

    .line 147
    return-object v1
.end method

.method public varargs setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mMessage:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public setNegativeButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mNegativeButtonText:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public setNegativeButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 110
    iput-object p2, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mNegativeOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    .line 111
    return-object p0
.end method

.method public setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mPositiveButtonText:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 92
    iput-object p2, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mPositiveOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    .line 93
    return-object p0
.end method

.method public setTargetFragment(Landroidx/fragment/app/Fragment;I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;
    .locals 2

    .prologue
    .line 122
    instance-of v0, p1, Lcom/oculus/horizon/modal/AlertDialogFragment$OnClickListener;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/oculus/horizon/modal/AlertDialogFragment$OnCancelListener;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target fragment must implement either AlertDialogFragment.OnClickListener or AlertDialogFragment.OnCancelListener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iput-object p1, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mTargetFragment:Landroidx/fragment/app/Fragment;

    .line 129
    iput p2, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mRequestCode:I

    .line 130
    return-object p0
.end method

.method public varargs setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->mTitle:Ljava/lang/String;

    .line 64
    return-object p0
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->build()Lcom/oculus/horizon/modal/AlertDialogFragment;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p1, p2}, Lcom/oculus/horizon/modal/AlertDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 171
    return-object v0
.end method

.method public show(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment;

    .line 166
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment;

    .line 157
    return-void
.end method
