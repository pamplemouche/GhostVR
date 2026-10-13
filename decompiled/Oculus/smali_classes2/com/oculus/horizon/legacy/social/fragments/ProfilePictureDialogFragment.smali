.class public Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ProfilePictureDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$Builder;
    }
.end annotation


# instance fields
.field private mIsForRoadblocks:Z

.field private mProfilePictureUtils:Lcom/oculus/horizon/legacy/social/ProfilePictureUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;)V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;)V
    .locals 1

    .prologue
    .line 20
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/ProfilePictureUtils;->$ul_$xXXcom_oculus_horizon_legacy_social_ProfilePictureUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/ProfilePictureUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;->mProfilePictureUtils:Lcom/oculus/horizon/legacy/social/ProfilePictureUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;->mIsForRoadblocks:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;)Lcom/oculus/horizon/legacy/social/ProfilePictureUtils;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;->mProfilePictureUtils:Lcom/oculus/horizon/legacy/social/ProfilePictureUtils;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;)V

    .line 55
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_for_roadblocks"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;->mIsForRoadblocks:Z

    .line 56
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$1;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;)V

    .line 79
    new-instance v1, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/oculus/horizon/R$string;->camera_dialog_title:I

    .line 80
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setTitle(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$array;->camera_dialog_items:I

    .line 81
    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setItems(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setNegativeButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    return-object v0
.end method
