.class Lcom/oculus/auth/service/AuthService2$2;
.super Lcom/oculus/aidl/IAuthService2$Stub;
.source "AuthService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/auth/service/AuthService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/auth/service/AuthService2;


# direct methods
.method constructor <init>(Lcom/oculus/auth/service/AuthService2;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/oculus/auth/service/AuthService2$2;->this$0:Lcom/oculus/auth/service/AuthService2;

    invoke-direct {p0}, Lcom/oculus/aidl/IAuthService2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCredentials()Landroid/os/Bundle;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oculus/auth/service/AuthService2$2;->this$0:Lcom/oculus/auth/service/AuthService2;

    invoke-static {v0}, Lcom/oculus/auth/service/AuthService2;->access$000(Lcom/oculus/auth/service/AuthService2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/oculus/auth/service/AuthService2$2;->this$0:Lcom/oculus/auth/service/AuthService2;

    invoke-static {v0}, Lcom/oculus/auth/service/AuthService2;->access$100(Lcom/oculus/auth/service/AuthService2;)Lcom/oculus/auth/service/AuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/auth/service/AuthManager;->getCredentialsBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Access denied. Caller is not trusted."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
