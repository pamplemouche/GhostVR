.class Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity$1;
.super Ljava/lang/Object;
.source "OculusFbPermissionsActivity.java"

# interfaces
.implements Lcom/facebook/secure/logger/Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;


# direct methods
.method constructor <init>(Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity$1;->this$0:Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    const-string v0, "OculusFbPermissionsActivity"

    const-string v1, "error: %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity$1;->this$0:Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;

    invoke-static {v0}, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;->access$000(Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    const-string v1, "OculusFbPermissionsActivity"

    invoke-virtual {v0, v1, p1}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    const-string v0, "OculusFbPermissionsActivity"

    const-string v1, "error: %s"

    invoke-static {v0, v1, p2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    if-nez p3, :cond_0

    .line 53
    iget-object v0, p0, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity$1;->this$0:Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;

    invoke-static {v0}, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;->access$000(Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity$1;->this$0:Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;

    invoke-static {v0}, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;->access$000(Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
