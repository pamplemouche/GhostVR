.class public Lcom/oculus/security/basecomponent/BLogDebugReporter;
.super Ljava/lang/Object;
.source "BLogDebugReporter.java"

# interfaces
.implements Lcom/facebook/secure/logger/Reporter;


# instance fields
.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/oculus/security/basecomponent/BLogDebugReporter;->mTag:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/security/basecomponent/BLogDebugReporter;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    if-eqz p3, :cond_0

    .line 25
    iget-object v0, p0, Lcom/oculus/security/basecomponent/BLogDebugReporter;->mTag:Ljava/lang/String;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, p3, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/oculus/security/basecomponent/BLogDebugReporter;->mTag:Ljava/lang/String;

    const-string v1, "[%s] %s"

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
