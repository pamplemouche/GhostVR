.class final Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "MediaRouteCastDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteCastDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V
    .locals 0

    .prologue
    .line 1277
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$Callback;-><init>()V

    .line 1278
    return-void
.end method

.method private isSelectingDynamicRoute()Z
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-boolean v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mIsSelectingRoute:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    instance-of v0, v0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 1293
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->isSelectingDynamicRoute()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1294
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iput-object p2, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 1298
    :goto_0
    return-void

    .line 1297
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateRoutesView()V

    goto :goto_0
.end method

.method public onRouteChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 1326
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-boolean v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mIsSelectingRoute:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-ne v0, p2, :cond_0

    .line 1329
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mIsSelectingRoute:Z

    .line 1330
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateViewsIfNeeded()V

    .line 1331
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateRoutes()V

    .line 1335
    :goto_0
    return-void

    .line 1333
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateRoutesView()V

    goto :goto_0
.end method

.method public onRouteRemoved(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 1302
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateRoutesView()V

    .line 1303
    return-void
.end method

.method public onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 1308
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->isSelectingDynamicRoute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    :goto_0
    return-void

    .line 1311
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iput-object p2, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 1312
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mIsSelectingRoute:Z

    .line 1315
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateViewsIfNeeded()V

    .line 1316
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateRoutes()V

    goto :goto_0
.end method

.method public onRouteUnselected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateRoutesView()V

    .line 1322
    return-void
.end method

.method public onRouteVolumeChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 4

    .prologue
    .line 1339
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v0

    .line 1340
    sget-boolean v1, Landroidx/mediarouter/app/MediaRouteCastDialog;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1341
    const-string v1, "MediaRouteCastDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRouteVolumeChanged(), route.getVolume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouteForVolumeUpdatingByUser:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eq v0, p2, :cond_1

    .line 1344
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mVolumeSliderHolderMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;

    .line 1345
    if-eqz v0, :cond_1

    .line 1346
    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->updateVolume()V

    .line 1349
    :cond_1
    return-void
.end method
