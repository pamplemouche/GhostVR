.class Lcom/oculus/auth/service/AuthService2$1;
.super Ljava/lang/Object;
.source "AuthService2.java"

# interfaces
.implements Lcom/facebook/secure/logger/Reporter;


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
    .line 43
    iput-object p1, p0, Lcom/oculus/auth/service/AuthService2$1;->this$0:Lcom/oculus/auth/service/AuthService2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    const-string v0, "AuthService2"

    invoke-static {v0, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p1, p2, p3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method
