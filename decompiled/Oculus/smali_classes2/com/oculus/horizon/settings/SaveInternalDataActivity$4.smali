.class Lcom/oculus/horizon/settings/SaveInternalDataActivity$4;
.super Landroid/os/AsyncTask;
.source "SaveInternalDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/SaveInternalDataActivity;->sendZipFileTask()Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$4;->this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$4;->this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->access$800(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)V

    .line 205
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 206
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/SaveInternalDataActivity$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$4;->this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->access$500(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)Lcom/oculus/horizon/widget/ProgressButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 212
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$4;->this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->access$400(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)Lcom/oculus/horizon/widget/ProgressButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setEnabled(Z)V

    .line 213
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 194
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/SaveInternalDataActivity$4;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$4;->this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->access$500(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)Lcom/oculus/horizon/widget/ProgressButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 198
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$4;->this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->access$400(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)Lcom/oculus/horizon/widget/ProgressButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setEnabled(Z)V

    .line 199
    return-void
.end method
