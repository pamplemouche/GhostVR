.class Lcom/oculus/horizon/settings/SaveInternalDataActivity$2;
.super Ljava/lang/Object;
.source "SaveInternalDataActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/SaveInternalDataActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$2;->this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$2;->this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    iget-object v1, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$2;->this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    invoke-static {v1}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->access$200(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)Landroid/os/AsyncTask;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->access$002(Lcom/oculus/horizon/settings/SaveInternalDataActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 83
    return-void
.end method
