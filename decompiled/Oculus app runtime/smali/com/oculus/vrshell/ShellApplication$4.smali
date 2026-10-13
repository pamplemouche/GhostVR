.class Lcom/oculus/vrshell/ShellApplication$4;
.super Ljava/lang/Object;
.source "ShellApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/ShellApplication;->testBreakpadJavaCrash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/ShellApplication;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/ShellApplication;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/oculus/vrshell/ShellApplication$4;->this$0:Lcom/oculus/vrshell/ShellApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 601
    invoke-static {}, Lcom/oculus/vrshell/ShellApplication;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BREAKPAD JAVA CRASH TEST!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 603
    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    return-void
.end method
