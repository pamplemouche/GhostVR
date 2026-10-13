.class Lcom/oculus/vrshell/ShellApplication$2;
.super Landroid/os/AsyncTask;
.source "ShellApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/ShellApplication;->updateHorizonPrefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/ShellApplication;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/ShellApplication;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/oculus/vrshell/ShellApplication$2;->this$0:Lcom/oculus/vrshell/ShellApplication;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 395
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/ShellApplication$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 398
    iget-object p1, p0, Lcom/oculus/vrshell/ShellApplication$2;->this$0:Lcom/oculus/vrshell/ShellApplication;

    invoke-virtual {p1}, Lcom/oculus/vrshell/ShellApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oculus/vrshell/util/HorizonUtil;->getProfilePrefs(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    .line 399
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication$2;->this$0:Lcom/oculus/vrshell/ShellApplication;

    invoke-static {v0}, Lcom/oculus/vrshell/ShellApplication;->access$100(Lcom/oculus/vrshell/ShellApplication;)Lcom/oculus/vrshell/ShellApplication$IVrClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/vrshell/ShellApplication$IVrClient;->getAppPtr()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/oculus/vrshell/ShellApplication;->access$200(J[Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
