.class Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;
.super Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;
.source "CloudStorageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView<",
        "Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private mProgress:F

.field private mProgressBar:Landroid/view/View;

.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;


# direct methods
.method public constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;)V
    .locals 1

    .line 53
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    .line 54
    sget v0, Lcom/oculus/panelapp/anytimeui/R$layout;->cloud_storage_dialog_syncing:I

    invoke-direct {p0, p1, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;I)V

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->mProgress:F

    return-void
.end method


# virtual methods
.method public onInflated()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->mInflatedView:Landroid/view/View;

    check-cast v0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->getCustomView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->cloud_storage_dialog_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->mProgressBar:Landroid/view/View;

    .line 60
    iget v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->mProgress:F

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->setProgress(F)V

    .line 62
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->mInflatedView:Landroid/view/View;

    check-cast v0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;)V

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setOnCloseListener(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V

    return-void
.end method

.method public setProgress(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 84
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->mProgress:F

    .line 86
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->mProgressBar:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->mInflatedView:Landroid/view/View;

    check-cast p1, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->progress_bar_container:I

    .line 88
    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 89
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->mProgressBar:Landroid/view/View;

    .line 90
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 91
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->mProgress:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 92
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->mProgressBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setProgressLabel(I)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->mInflatedView:Landroid/view/View;

    check-cast v0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setContentText(Ljava/lang/CharSequence;)V

    return-void
.end method
