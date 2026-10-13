.class Lcom/oculus/horizon/nux360/Nux360FirstPartyAppsController$1;
.super Ljava/lang/Object;
.source "Nux360FirstPartyAppsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FirstPartyAppsController;->downloadFirstPartyApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FirstPartyAppsController;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FirstPartyAppsController;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FirstPartyAppsController$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FirstPartyAppsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FirstPartyAppsController$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FirstPartyAppsController;

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/Nux360FirstPartyAppsController;->downloadFirstPartyAppsImpl()V

    .line 53
    return-void
.end method
