.class Lcom/oculus/horizon/settings/SaveInternalDataActivity$3;
.super Landroid/os/AsyncTask;
.source "SaveInternalDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/SaveInternalDataActivity;->buildZipFileTask()Landroid/os/AsyncTask;
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
    .line 109
    iput-object p1, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$3;->this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$3;->this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    iget-object v2, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$3;->this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    invoke-static {v2, p0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->access$600(Lcom/oculus/horizon/settings/SaveInternalDataActivity;Landroid/os/AsyncTask;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->access$302(Lcom/oculus/horizon/settings/SaveInternalDataActivity;Ljava/io/File;)Ljava/io/File;

    .line 123
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 124
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$3;->this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->access$300(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 127
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 124
    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-static {}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Got an exception while zipping data dir"

    invoke-static {v2, v3, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/SaveInternalDataActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$3;->this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    sget v1, Lcom/oculus/horizon/R$string;->internal_data_save_success:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$3;->this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->access$400(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)Lcom/oculus/horizon/widget/ProgressButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 141
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$3;->this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->access$500(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)Lcom/oculus/horizon/widget/ProgressButton;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setEnabled(Z)V

    .line 142
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 109
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/SaveInternalDataActivity$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$3;->this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->access$302(Lcom/oculus/horizon/settings/SaveInternalDataActivity;Ljava/io/File;)Ljava/io/File;

    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$3;->this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->access$400(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)Lcom/oculus/horizon/widget/ProgressButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$3;->this$0:Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->access$500(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)Lcom/oculus/horizon/widget/ProgressButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setEnabled(Z)V

    .line 115
    return-void
.end method
