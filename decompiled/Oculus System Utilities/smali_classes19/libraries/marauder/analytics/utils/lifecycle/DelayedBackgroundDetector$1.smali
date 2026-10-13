.class Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector$1;
.super Ljava/lang/Object;
.source "DelayedBackgroundDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->onActivityPause(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;


# direct methods
.method constructor <init>(Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;)V
    .locals 0
    .param p1, "this$0"    # Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;

    .prologue
    .line 120
    iput-object p1, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector$1;->this$0:Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector$1;->this$0:Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;

    invoke-static {v0}, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->access$100(Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector$1;->this$0:Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;

    invoke-static {v0}, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->access$200(Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector$1;->this$0:Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->access$202(Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;Z)Z

    .line 126
    iget-object v0, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector$1;->this$0:Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;

    invoke-static {v0}, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->access$300(Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;)V

    .line 132
    :cond_0
    :goto_0
    iget-object v0, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector$1;->this$0:Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;

    invoke-static {v0, v2}, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->access$402(Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;Z)Z

    .line 133
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector$1;->this$0:Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;

    invoke-static {v0, v2}, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->access$202(Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;Z)Z

    goto :goto_0
.end method
