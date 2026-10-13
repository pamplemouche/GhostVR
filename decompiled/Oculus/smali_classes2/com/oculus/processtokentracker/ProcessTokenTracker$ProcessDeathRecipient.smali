.class public Lcom/oculus/processtokentracker/ProcessTokenTracker$ProcessDeathRecipient;
.super Ljava/lang/Object;
.source "ProcessTokenTracker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/processtokentracker/ProcessTokenTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessDeathRecipient"
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final processId:I

.field final synthetic this$0:Lcom/oculus/processtokentracker/ProcessTokenTracker;

.field public final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/oculus/processtokentracker/ProcessTokenTracker;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oculus/processtokentracker/ProcessTokenTracker$ProcessDeathRecipient;->this$0:Lcom/oculus/processtokentracker/ProcessTokenTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/oculus/processtokentracker/ProcessTokenTracker$ProcessDeathRecipient;->packageName:Ljava/lang/String;

    .line 35
    iput p3, p0, Lcom/oculus/processtokentracker/ProcessTokenTracker$ProcessDeathRecipient;->processId:I

    .line 36
    iput-object p4, p0, Lcom/oculus/processtokentracker/ProcessTokenTracker$ProcessDeathRecipient;->token:Landroid/os/IBinder;

    .line 37
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oculus/processtokentracker/ProcessTokenTracker$ProcessDeathRecipient;->this$0:Lcom/oculus/processtokentracker/ProcessTokenTracker;

    iget-object v1, p0, Lcom/oculus/processtokentracker/ProcessTokenTracker$ProcessDeathRecipient;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/processtokentracker/ProcessTokenTracker$ProcessDeathRecipient;->processId:I

    invoke-static {v0, v1, v2}, Lcom/oculus/processtokentracker/ProcessTokenTracker;->access$000(Lcom/oculus/processtokentracker/ProcessTokenTracker;Ljava/lang/String;I)V

    .line 51
    iget-object v0, p0, Lcom/oculus/processtokentracker/ProcessTokenTracker$ProcessDeathRecipient;->this$0:Lcom/oculus/processtokentracker/ProcessTokenTracker;

    invoke-static {v0}, Lcom/oculus/processtokentracker/ProcessTokenTracker;->access$100(Lcom/oculus/processtokentracker/ProcessTokenTracker;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/processtokentracker/ProcessTokenTracker$ProcessListener;

    .line 52
    iget-object v2, p0, Lcom/oculus/processtokentracker/ProcessTokenTracker$ProcessDeathRecipient;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/oculus/processtokentracker/ProcessTokenTracker$ProcessDeathRecipient;->processId:I

    invoke-interface {v0, v2, v3}, Lcom/oculus/processtokentracker/ProcessTokenTracker$ProcessListener;->onDeath(Ljava/lang/String;I)V

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public link()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/processtokentracker/ProcessTokenTracker$ProcessDeathRecipient;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 41
    return-void
.end method

.method public unlink()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oculus/processtokentracker/ProcessTokenTracker$ProcessDeathRecipient;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 45
    return-void
.end method
