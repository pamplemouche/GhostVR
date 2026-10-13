.class Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$2;
.super Ljava/lang/Object;
.source "HorizonReactNavigatorModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;->popToScreen(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;

.field final synthetic val$destinationReactTag:D


# direct methods
.method constructor <init>(Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;D)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$2;->this$0:Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;

    iput-wide p2, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$2;->val$destinationReactTag:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$2;->this$0:Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;

    invoke-static {v0}, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;->access$300(Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 110
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$2;->this$0:Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;

    invoke-static {v1}, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;->access$400(Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-wide v2, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$2;->val$destinationReactTag:D

    double-to-int v1, v2

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 113
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 117
    :cond_0
    return-void
.end method
