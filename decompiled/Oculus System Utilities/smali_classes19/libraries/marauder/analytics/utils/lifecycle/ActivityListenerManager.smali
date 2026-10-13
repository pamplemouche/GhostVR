.class public Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;
.super Ljava/lang/Object;
.source "ActivityListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager$ActivityListenerManagerHolder;
    }
.end annotation


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;->listeners:Ljava/util/List;

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager$1;)V
    .locals 0
    .param p1, "x0"    # Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager$1;

    .prologue
    .line 12
    invoke-direct {p0}, Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;-><init>()V

    return-void
.end method

.method public static getInstance()Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager$ActivityListenerManagerHolder;->INSTANCE:Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;

    return-object v0
.end method


# virtual methods
.method public activityCreated(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    iget-object v1, p0, Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;

    .line 60
    .local v0, "listener":Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;
    invoke-interface {v0, p1}, Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;->onActivityCreate(Landroid/app/Activity;)V

    goto :goto_0

    .line 62
    .end local v0    # "listener":Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;
    :cond_0
    return-void
.end method

.method public activityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    iget-object v1, p0, Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;

    .line 98
    .local v0, "listener":Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;
    invoke-interface {v0, p1}, Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;->onActivityDestroy(Landroid/app/Activity;)V

    goto :goto_0

    .line 100
    .end local v0    # "listener":Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;
    :cond_0
    return-void
.end method

.method public activityPaused(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    iget-object v1, p0, Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;

    .line 86
    .local v0, "listener":Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;
    invoke-interface {v0, p1}, Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;->onActivityPause(Landroid/app/Activity;)V

    goto :goto_0

    .line 88
    .end local v0    # "listener":Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;
    :cond_0
    return-void
.end method

.method public activityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 71
    iget-object v1, p0, Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;

    .line 72
    .local v0, "listener":Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;
    invoke-interface {v0, p1}, Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;->onActivityResume(Landroid/app/Activity;)V

    goto :goto_0

    .line 74
    .end local v0    # "listener":Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;
    :cond_0
    return-void
.end method

.method public addListener(Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;)V
    .locals 1
    .param p1, "listener"    # Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;

    .prologue
    .line 34
    iget-object v0, p0, Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    return-void
.end method

.method public removeListener(Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;)V
    .locals 1
    .param p1, "listener"    # Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;

    .prologue
    .line 47
    iget-object v0, p0, Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    return-void
.end method
