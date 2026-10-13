.class Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEvent$1;
.super Ljava/lang/Object;
.source "UninstallCompleteEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEvent;->report()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEvent;


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEvent;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEvent$1;->this$0:Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEvent$1;->this$0:Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEvent;

    invoke-virtual {v0}, Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEvent;->report()V

    .line 108
    return-void
.end method
