.class Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$2;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;->onDynamicRoutesChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

.field final synthetic val$routes:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$2;->this$1:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    iput-object p2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$2;->val$routes:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 605
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$2;->this$1:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;->mDynamicRoutesChangedListener:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;

    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$2;->this$1:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    iget-object v2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$2;->val$routes:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;->onRoutesChanged(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;Ljava/util/Collection;)V

    .line 608
    return-void
.end method
