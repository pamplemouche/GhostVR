.class Lcom/oculus/vrshell/ShellApplication$6;
.super Ljava/lang/Object;
.source "ShellApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/ShellApplication;->setSurfaceSecureFlag(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/ShellApplication;

.field final synthetic val$secure:Z


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/ShellApplication;Z)V
    .locals 0

    .line 974
    iput-object p1, p0, Lcom/oculus/vrshell/ShellApplication$6;->this$0:Lcom/oculus/vrshell/ShellApplication;

    iput-boolean p2, p0, Lcom/oculus/vrshell/ShellApplication$6;->val$secure:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 977
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication$6;->this$0:Lcom/oculus/vrshell/ShellApplication;

    invoke-static {v0}, Lcom/oculus/vrshell/ShellApplication;->access$500(Lcom/oculus/vrshell/ShellApplication;)Landroid/view/SurfaceView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 981
    :cond_0
    invoke-static {}, Lcom/oculus/vrshell/ShellApplication;->access$600()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 983
    :try_start_0
    invoke-static {}, Lcom/oculus/vrshell/ShellApplication;->access$600()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/vrshell/ShellApplication$6;->this$0:Lcom/oculus/vrshell/ShellApplication;

    invoke-static {v1}, Lcom/oculus/vrshell/ShellApplication;->access$500(Lcom/oculus/vrshell/ShellApplication;)Landroid/view/SurfaceView;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/oculus/vrshell/ShellApplication$6;->val$secure:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 986
    invoke-static {}, Lcom/oculus/vrshell/ShellApplication;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error setting the secure flag"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 995
    :cond_1
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication$6;->this$0:Lcom/oculus/vrshell/ShellApplication;

    invoke-static {v0}, Lcom/oculus/vrshell/ShellApplication;->access$500(Lcom/oculus/vrshell/ShellApplication;)Landroid/view/SurfaceView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oculus/vrshell/ShellApplication$6;->val$secure:Z

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setSecure(Z)V

    return-void
.end method
