.class Lcom/oculus/vrshell/ShellApplication$3;
.super Landroid/os/AsyncTask;
.source "ShellApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/ShellApplication;->setHorizonPref(Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/ShellApplication;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/oculus/vrshell/ShellApplication$3;->this$0:Lcom/oculus/vrshell/ShellApplication;

    iput-object p2, p0, Lcom/oculus/vrshell/ShellApplication$3;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/vrshell/ShellApplication$3;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 411
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/ShellApplication$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 414
    iget-object p1, p0, Lcom/oculus/vrshell/ShellApplication$3;->this$0:Lcom/oculus/vrshell/ShellApplication;

    invoke-virtual {p1}, Lcom/oculus/vrshell/ShellApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication$3;->val$key:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/vrshell/ShellApplication$3;->val$value:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/oculus/vrshell/util/HorizonUtil;->setProfilePref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
