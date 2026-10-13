.class public Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;
.super Ljava/lang/Object;
.source "PermissionDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/permission/PermissionDialogFragment;
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

.field private mPermission:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field private mTitle:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->mResources:Landroid/content/res/Resources;

    .line 50
    return-void
.end method


# virtual methods
.method public build()Landroidx/fragment/app/DialogFragment;
    .locals 4

    .prologue
    .line 82
    new-instance v0, Lcom/oculus/horizon/permission/PermissionDialogFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/permission/PermissionDialogFragment;-><init>()V

    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v2, "permission"

    iget-object v3, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->mPermission:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string/jumbo v2, "title"

    iget-object v3, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "message"

    iget-object v3, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    return-object v0
.end method

.method public setMessage(I)Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->mMessage:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public setPermission(Ljava/lang/String;)Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 77
    iput-object p1, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->mPermission:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.method public setTitle(I)Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->mTitle:Ljava/lang/String;

    .line 61
    return-object p0
.end method
