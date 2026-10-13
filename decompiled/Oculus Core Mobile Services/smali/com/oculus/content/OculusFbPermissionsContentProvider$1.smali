.class Lcom/oculus/content/OculusFbPermissionsContentProvider$1;
.super Ljava/lang/Object;
.source "OculusFbPermissionsContentProvider.java"

# interfaces
.implements Lcom/facebook/secure/logger/Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/content/OculusFbPermissionsContentProvider;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/content/OculusFbPermissionsContentProvider;


# direct methods
.method constructor <init>(Lcom/oculus/content/OculusFbPermissionsContentProvider;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oculus/content/OculusFbPermissionsContentProvider$1;->this$0:Lcom/oculus/content/OculusFbPermissionsContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    const-string v0, "OculusFbPermissionsContentProvider"

    const-string v1, "%s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    const-string v0, "OculusFbPermissionsContentProvider"

    const-string v1, "%s: %s"

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    return-void
.end method
