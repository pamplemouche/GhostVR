.class Lcom/oculus/vrshell/ShellApplication$1;
.super Ljava/lang/Object;
.source "ShellApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/ShellApplication;->finalizeCompanionPreferences()V
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

    .line 216
    iput-object p1, p0, Lcom/oculus/vrshell/ShellApplication$1;->this$0:Lcom/oculus/vrshell/ShellApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication$1;->this$0:Lcom/oculus/vrshell/ShellApplication;

    invoke-virtual {v0}, Lcom/oculus/vrshell/ShellApplication;->updateCompanionServerPrefs()V

    .line 220
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication$1;->this$0:Lcom/oculus/vrshell/ShellApplication;

    invoke-static {v0}, Lcom/oculus/vrshell/ShellApplication;->access$000(Lcom/oculus/vrshell/ShellApplication;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
